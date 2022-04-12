import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@freezed
class Result with _$Result {
  const factory Result({
    @Default(-1) int id,
    required int userId,
    required int eventId,
    @Default("") String comment,
    required DateTime date,
    @Default(const <String>[]) List<String> photos,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
