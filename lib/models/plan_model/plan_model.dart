import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_model.freezed.dart';

@freezed
class PlanModel with _$PlanModel {
  const factory PlanModel({
    required int id,
    required int teamId,
    int? planTypeId,
    int? authorId,
    required String name,
    required String description,
    required DateTime planDate,
  }) = _PlanModel;
}