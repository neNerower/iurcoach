import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iurc_mobile_app/models/models.dart';
import 'package:iurc_mobile_app/repositories/repositories.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

// const _postLimit = 20;
// const throttleDuration = Duration(milliseconds: 100);

// EventTransformer<E> throttleDroppable<E>(Duration duration) {
//   return (events, mapper) {
//     return droppable<E>().call(events.throttle(duration), mapper);
//   };
// }

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final PostRepository _postRepository = PostRepository();

  NewsBloc() : super(NewsState()) {
    on<NewsRefreshed>(_onNewsRefreshed);
    on<NewsFetched>(
      _onNewsFetched,
      // transformer: throttleDroppable(throttleDuration),
    );
  }

  Future<void> _onNewsRefreshed(
      NewsRefreshed event, Emitter<NewsState> emit) async {
    emit(state.copyWith(status: NewsStatus.initial));
    this.add(NewsFetched());
  }

  Future<void> _onNewsFetched(
      NewsFetched event, Emitter<NewsState> emit) async {
    if (state.hasReachedMax) return;

    try {
      if (state.status == NewsStatus.initial) {
        final posts = await _postRepository.fetchPosts();
        return emit(state.copyWith(
          status: NewsStatus.success,
          posts: posts,
          hasReachedMax: false,
        ));
      }

      final posts = await _postRepository.fetchPosts(shift: state.posts.length);
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
