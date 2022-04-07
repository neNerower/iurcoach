part of 'news_bloc.dart';

enum NewsStatus { initial, success, failure }

class NewsState extends Equatable {
  final NewsStatus status;
  final List<Post> posts;
  final bool hasReachedMax;

  const NewsState({
    this.status = NewsStatus.initial,
    this.posts = const <Post>[],
    this.hasReachedMax = false,
  });

  NewsState copyWith({
    NewsStatus? status,
    List<Post>? posts,
    bool? hasReachedMax,
  }) {
    return NewsState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [status, posts, hasReachedMax];
}
