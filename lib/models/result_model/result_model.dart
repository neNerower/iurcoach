import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_model.freezed.dart';

@freezed
class ResultModel with _$ResultModel {
  const factory ResultModel({
    required int id,
    required int planId,
    required int userId,
    required String result,
    List<String>? photos,
    String? comment,
    DateTime? date,
  }) = _ResultModel;
}