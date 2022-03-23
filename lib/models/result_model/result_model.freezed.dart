// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultModelTearOff {
  const _$ResultModelTearOff();

  _ResultModel call(
      {required int id,
      required int planId,
      required int userId,
      required String result,
      List<String>? photos,
      String? comment,
      DateTime? date}) {
    return _ResultModel(
      id: id,
      planId: planId,
      userId: userId,
      result: result,
      photos: photos,
      comment: comment,
      date: date,
    );
  }
}

/// @nodoc
const $ResultModel = _$ResultModelTearOff();

/// @nodoc
mixin _$ResultModel {
  int get id => throw _privateConstructorUsedError;
  int get planId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultModelCopyWith<ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultModelCopyWith<$Res> {
  factory $ResultModelCopyWith(
          ResultModel value, $Res Function(ResultModel) then) =
      _$ResultModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int planId,
      int userId,
      String result,
      List<String>? photos,
      String? comment,
      DateTime? date});
}

/// @nodoc
class _$ResultModelCopyWithImpl<$Res> implements $ResultModelCopyWith<$Res> {
  _$ResultModelCopyWithImpl(this._value, this._then);

  final ResultModel _value;
  // ignore: unused_field
  final $Res Function(ResultModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? planId = freezed,
    Object? userId = freezed,
    Object? result = freezed,
    Object? photos = freezed,
    Object? comment = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      planId: planId == freezed
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ResultModelCopyWith<$Res>
    implements $ResultModelCopyWith<$Res> {
  factory _$ResultModelCopyWith(
          _ResultModel value, $Res Function(_ResultModel) then) =
      __$ResultModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int planId,
      int userId,
      String result,
      List<String>? photos,
      String? comment,
      DateTime? date});
}

/// @nodoc
class __$ResultModelCopyWithImpl<$Res> extends _$ResultModelCopyWithImpl<$Res>
    implements _$ResultModelCopyWith<$Res> {
  __$ResultModelCopyWithImpl(
      _ResultModel _value, $Res Function(_ResultModel) _then)
      : super(_value, (v) => _then(v as _ResultModel));

  @override
  _ResultModel get _value => super._value as _ResultModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? planId = freezed,
    Object? userId = freezed,
    Object? result = freezed,
    Object? photos = freezed,
    Object? comment = freezed,
    Object? date = freezed,
  }) {
    return _then(_ResultModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      planId: planId == freezed
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_ResultModel implements _ResultModel {
  const _$_ResultModel(
      {required this.id,
      required this.planId,
      required this.userId,
      required this.result,
      this.photos,
      this.comment,
      this.date});

  @override
  final int id;
  @override
  final int planId;
  @override
  final int userId;
  @override
  final String result;
  @override
  final List<String>? photos;
  @override
  final String? comment;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'ResultModel(id: $id, planId: $planId, userId: $userId, result: $result, photos: $photos, comment: $comment, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.planId, planId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other.photos, photos) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(planId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(photos),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$ResultModelCopyWith<_ResultModel> get copyWith =>
      __$ResultModelCopyWithImpl<_ResultModel>(this, _$identity);
}

abstract class _ResultModel implements ResultModel {
  const factory _ResultModel(
      {required int id,
      required int planId,
      required int userId,
      required String result,
      List<String>? photos,
      String? comment,
      DateTime? date}) = _$_ResultModel;

  @override
  int get id;
  @override
  int get planId;
  @override
  int get userId;
  @override
  String get result;
  @override
  List<String>? get photos;
  @override
  String? get comment;
  @override
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$ResultModelCopyWith<_ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
