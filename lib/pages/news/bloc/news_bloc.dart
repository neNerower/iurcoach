import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/post.dart';

part 'news_event.dart';
part 'news_state.dart';

const _postLimit = 20;
// const throttleDuration = Duration(milliseconds: 100);

// EventTransformer<E> throttleDroppable<E>(Duration duration) {
//   return (events, mapper) {
//     return droppable<E>().call(events.throttle(duration), mapper);
//   };
// }

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsState()) {
    on<NewsFetched>(
      _onNewsFetched,
      // transformer: throttleDroppable(throttleDuration),
    );
  }

  Future<void> _onNewsFetched(
      NewsFetched event, Emitter<NewsState> emit) async {
    if (state.hasReachedMax) return;

    try {
      if (state.status == NewsStatus.initial) {
        final posts = await _fetchPosts();
        return emit(state.copyWith(
          status: NewsStatus.success,
          posts: posts,
          hasReachedMax: false,
        ));
      }

      final posts = await _fetchPosts(state.posts.length);
      emit(posts.isEmpty
          ? state.copyWith(hasReachedMax: true)
          : state.copyWith(
              status: NewsStatus.success,
              posts: List.of(state.posts)..addAll(posts),
              hasReachedMax: false,
            ));
    } catch (_) {
      emit(state.copyWith(status: NewsStatus.failure));
    }
  }
}

Future<List<Post>> _fetchPosts([int startIndex = 0]) async {
    final response = await httpClient.get(
      Uri.https(
        'jsonplaceholder.typicode.com',
        '/posts',
        <String, String>{'_start': '$startIndex', '_limit': '$_postLimit'},
      ),
    );
    if (response.statusCode == 200) {
      final body = json.decode(response.body) as List;
      return body.map((dynamic json) {
        return Post(
          id: json['id'] as int,
          title: json['title'] as String,
          body: json['body'] as String,
        );
      }).toList();
    }
    throw Exception('error fetching posts');
  }
}
