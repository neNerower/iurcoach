import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@Freezed()
class News with _$News {
  const factory News({
    required int id,
    required String title,
    required String text,
    required String imageUrl,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}
