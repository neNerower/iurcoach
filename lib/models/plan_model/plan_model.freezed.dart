// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlanModelTearOff {
  const _$PlanModelTearOff();

  _PlanModel call(
      {required int id,
      required int teamId,
      int? planTypeId,
      int? authorId,
      required String name,
      required String description,
      required DateTime planDate}) {
    return _PlanModel(
      id: id,
      teamId: teamId,
      planTypeId: planTypeId,
      authorId: authorId,
      name: name,
      description: description,
      planDate: planDate,
    );
  }
}

/// @nodoc
const $PlanModel = _$PlanModelTearOff();

/// @nodoc
mixin _$PlanModel {
  int get id => throw _privateConstructorUsedError;
  int get teamId => throw _privateConstructorUsedError;
  int? get planTypeId => throw _privateConstructorUsedError;
  int? get authorId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get planDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlanModelCopyWith<PlanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanModelCopyWith<$Res> {
  factory $PlanModelCopyWith(PlanModel value, $Res Function(PlanModel) then) =
      _$PlanModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int teamId,
      int? planTypeId,
      int? authorId,
      String name,
      String description,
      DateTime planDate});
}

/// @nodoc
class _$PlanModelCopyWithImpl<$Res> implements $PlanModelCopyWith<$Res> {
  _$PlanModelCopyWithImpl(this._value, this._then);

  final PlanModel _value;
  // ignore: unused_field
  final $Res Function(PlanModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? teamId = freezed,
    Object? planTypeId = freezed,
    Object? authorId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? planDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      teamId: teamId == freezed
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      planTypeId: planTypeId == freezed
          ? _value.planTypeId
          : planTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      planDate: planDate == freezed
          ? _value.planDate
          : planDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$PlanModelCopyWith<$Res> implements $PlanModelCopyWith<$Res> {
  factory _$PlanModelCopyWith(
          _PlanModel value, $Res Function(_PlanModel) then) =
      __$PlanModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int teamId,
      int? planTypeId,
      int? authorId,
      String name,
      String description,
      DateTime planDate});
}

/// @nodoc
class __$PlanModelCopyWithImpl<$Res> extends _$PlanModelCopyWithImpl<$Res>
    implements _$PlanModelCopyWith<$Res> {
  __$PlanModelCopyWithImpl(_PlanModel _value, $Res Function(_PlanModel) _then)
      : super(_value, (v) => _then(v as _PlanModel));

  @override
  _PlanModel get _value => super._value as _PlanModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? teamId = freezed,
    Object? planTypeId = freezed,
    Object? authorId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? planDate = freezed,
  }) {
    return _then(_PlanModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      teamId: teamId == freezed
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      planTypeId: planTypeId == freezed
          ? _value.planTypeId
          : planTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      planDate: planDate == freezed
          ? _value.planDate
          : planDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_PlanModel with DiagnosticableTreeMixin implements _PlanModel {
  const _$_PlanModel(
      {required this.id,
      required this.teamId,
      this.planTypeId,
      this.authorId,
      required this.name,
      required this.description,
      required this.planDate});

  @override
  final int id;
  @override
  final int teamId;
  @override
  final int? planTypeId;
  @override
  final int? authorId;
  @override
  final String name;
  @override
  final String description;
  @override
  final DateTime planDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlanModel(id: $id, teamId: $teamId, planTypeId: $planTypeId, authorId: $authorId, name: $name, description: $description, planDate: $planDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlanModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('teamId', teamId))
      ..add(DiagnosticsProperty('planTypeId', planTypeId))
      ..add(DiagnosticsProperty('authorId', authorId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('planDate', planDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlanModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.teamId, teamId) &&
            const DeepCollectionEquality()
                .equals(other.planTypeId, planTypeId) &&
            const DeepCollectionEquality().equals(other.authorId, authorId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.planDate, planDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(teamId),
      const DeepCollectionEquality().hash(planTypeId),
      const DeepCollectionEquality().hash(authorId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(planDate));

  @JsonKey(ignore: true)
  @override
  _$PlanModelCopyWith<_PlanModel> get copyWith =>
      __$PlanModelCopyWithImpl<_PlanModel>(this, _$identity);
}

abstract class _PlanModel implements PlanModel {
  const factory _PlanModel(
      {required int id,
      required int teamId,
      int? planTypeId,
      int? authorId,
      required String name,
      required String description,
      required DateTime planDate}) = _$_PlanModel;

  @override
  int get id;
  @override
  int get teamId;
  @override
  int? get planTypeId;
  @override
  int? get authorId;
  @override
  String get name;
  @override
  String get description;
  @override
  DateTime get planDate;
  @override
  @JsonKey(ignore: true)
  _$PlanModelCopyWith<_PlanModel> get copyWith =>
      throw _privateConstructorUsedError;
}
