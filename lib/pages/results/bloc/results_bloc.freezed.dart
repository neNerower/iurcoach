// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'results_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultsEventTearOff {
  const _$ResultsEventTearOff();

  ResultsFetched fetched() {
    return const ResultsFetched();
  }

  ResultsNewCreated newCreated(Result result) {
    return ResultsNewCreated(
      result,
    );
  }
}

/// @nodoc
const $ResultsEvent = _$ResultsEventTearOff();

/// @nodoc
mixin _$ResultsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(Result result) newCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Result result)? newCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Result result)? newCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultsFetched value) fetched,
    required TResult Function(ResultsNewCreated value) newCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultsFetched value)? fetched,
    TResult Function(ResultsNewCreated value)? newCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultsFetched value)? fetched,
    TResult Function(ResultsNewCreated value)? newCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsEventCopyWith<$Res> {
  factory $ResultsEventCopyWith(
          ResultsEvent value, $Res Function(ResultsEvent) then) =
      _$ResultsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResultsEventCopyWithImpl<$Res> implements $ResultsEventCopyWith<$Res> {
  _$ResultsEventCopyWithImpl(this._value, this._then);

  final ResultsEvent _value;
  // ignore: unused_field
  final $Res Function(ResultsEvent) _then;
}

/// @nodoc
abstract class $ResultsFetchedCopyWith<$Res> {
  factory $ResultsFetchedCopyWith(
          ResultsFetched value, $Res Function(ResultsFetched) then) =
      _$ResultsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResultsFetchedCopyWithImpl<$Res>
    extends _$ResultsEventCopyWithImpl<$Res>
    implements $ResultsFetchedCopyWith<$Res> {
  _$ResultsFetchedCopyWithImpl(
      ResultsFetched _value, $Res Function(ResultsFetched) _then)
      : super(_value, (v) => _then(v as ResultsFetched));

  @override
  ResultsFetched get _value => super._value as ResultsFetched;
}

/// @nodoc

class _$ResultsFetched implements ResultsFetched {
  const _$ResultsFetched();

  @override
  String toString() {
    return 'ResultsEvent.fetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResultsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(Result result) newCreated,
  }) {
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Result result)? newCreated,
  }) {
    return fetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Result result)? newCreated,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultsFetched value) fetched,
    required TResult Function(ResultsNewCreated value) newCreated,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultsFetched value)? fetched,
    TResult Function(ResultsNewCreated value)? newCreated,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultsFetched value)? fetched,
    TResult Function(ResultsNewCreated value)? newCreated,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class ResultsFetched implements ResultsEvent {
  const factory ResultsFetched() = _$ResultsFetched;
}

/// @nodoc
abstract class $ResultsNewCreatedCopyWith<$Res> {
  factory $ResultsNewCreatedCopyWith(
          ResultsNewCreated value, $Res Function(ResultsNewCreated) then) =
      _$ResultsNewCreatedCopyWithImpl<$Res>;
  $Res call({Result result});
}

/// @nodoc
class _$ResultsNewCreatedCopyWithImpl<$Res>
    extends _$ResultsEventCopyWithImpl<$Res>
    implements $ResultsNewCreatedCopyWith<$Res> {
  _$ResultsNewCreatedCopyWithImpl(
      ResultsNewCreated _value, $Res Function(ResultsNewCreated) _then)
      : super(_value, (v) => _then(v as ResultsNewCreated));

  @override
  ResultsNewCreated get _value => super._value as ResultsNewCreated;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(ResultsNewCreated(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }
}

/// @nodoc

class _$ResultsNewCreated implements ResultsNewCreated {
  const _$ResultsNewCreated(this.result);

  @override
  final Result result;

  @override
  String toString() {
    return 'ResultsEvent.newCreated(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResultsNewCreated &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  $ResultsNewCreatedCopyWith<ResultsNewCreated> get copyWith =>
      _$ResultsNewCreatedCopyWithImpl<ResultsNewCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(Result result) newCreated,
  }) {
    return newCreated(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Result result)? newCreated,
  }) {
    return newCreated?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Result result)? newCreated,
    required TResult orElse(),
  }) {
    if (newCreated != null) {
      return newCreated(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultsFetched value) fetched,
    required TResult Function(ResultsNewCreated value) newCreated,
  }) {
    return newCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultsFetched value)? fetched,
    TResult Function(ResultsNewCreated value)? newCreated,
  }) {
    return newCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultsFetched value)? fetched,
    TResult Function(ResultsNewCreated value)? newCreated,
    required TResult orElse(),
  }) {
    if (newCreated != null) {
      return newCreated(this);
    }
    return orElse();
  }
}

abstract class ResultsNewCreated implements ResultsEvent {
  const factory ResultsNewCreated(Result result) = _$ResultsNewCreated;

  Result get result;
  @JsonKey(ignore: true)
  $ResultsNewCreatedCopyWith<ResultsNewCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ResultsStateTearOff {
  const _$ResultsStateTearOff();

  _ResultsInitial initial() {
    return const _ResultsInitial();
  }

  _ResultsSuccess success({required List<Result> results}) {
    return _ResultsSuccess(
      results: results,
    );
  }

  _ResultsFailure failure({String message = "Results fetching failure"}) {
    return _ResultsFailure(
      message: message,
    );
  }
}

/// @nodoc
const $ResultsState = _$ResultsStateTearOff();

/// @nodoc
mixin _$ResultsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Result> results) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Result> results)? success,
    TResult Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Result> results)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultsInitial value) initial,
    required TResult Function(_ResultsSuccess value) success,
    required TResult Function(_ResultsFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultsInitial value)? initial,
    TResult Function(_ResultsSuccess value)? success,
    TResult Function(_ResultsFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultsInitial value)? initial,
    TResult Function(_ResultsSuccess value)? success,
    TResult Function(_ResultsFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsStateCopyWith<$Res> {
  factory $ResultsStateCopyWith(
          ResultsState value, $Res Function(ResultsState) then) =
      _$ResultsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResultsStateCopyWithImpl<$Res> implements $ResultsStateCopyWith<$Res> {
  _$ResultsStateCopyWithImpl(this._value, this._then);

  final ResultsState _value;
  // ignore: unused_field
  final $Res Function(ResultsState) _then;
}

/// @nodoc
abstract class _$ResultsInitialCopyWith<$Res> {
  factory _$ResultsInitialCopyWith(
          _ResultsInitial value, $Res Function(_ResultsInitial) then) =
      __$ResultsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResultsInitialCopyWithImpl<$Res>
    extends _$ResultsStateCopyWithImpl<$Res>
    implements _$ResultsInitialCopyWith<$Res> {
  __$ResultsInitialCopyWithImpl(
      _ResultsInitial _value, $Res Function(_ResultsInitial) _then)
      : super(_value, (v) => _then(v as _ResultsInitial));

  @override
  _ResultsInitial get _value => super._value as _ResultsInitial;
}

/// @nodoc

class _$_ResultsInitial implements _ResultsInitial {
  const _$_ResultsInitial();

  @override
  String toString() {
    return 'ResultsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResultsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Result> results) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Result> results)? success,
    TResult Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Result> results)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultsInitial value) initial,
    required TResult Function(_ResultsSuccess value) success,
    required TResult Function(_ResultsFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultsInitial value)? initial,
    TResult Function(_ResultsSuccess value)? success,
    TResult Function(_ResultsFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultsInitial value)? initial,
    TResult Function(_ResultsSuccess value)? success,
    TResult Function(_ResultsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ResultsInitial implements ResultsState {
  const factory _ResultsInitial() = _$_ResultsInitial;
}

/// @nodoc
abstract class _$ResultsSuccessCopyWith<$Res> {
  factory _$ResultsSuccessCopyWith(
          _ResultsSuccess value, $Res Function(_ResultsSuccess) then) =
      __$ResultsSuccessCopyWithImpl<$Res>;
  $Res call({List<Result> results});
}

/// @nodoc
class __$ResultsSuccessCopyWithImpl<$Res>
    extends _$ResultsStateCopyWithImpl<$Res>
    implements _$ResultsSuccessCopyWith<$Res> {
  __$ResultsSuccessCopyWithImpl(
      _ResultsSuccess _value, $Res Function(_ResultsSuccess) _then)
      : super(_value, (v) => _then(v as _ResultsSuccess));

  @override
  _ResultsSuccess get _value => super._value as _ResultsSuccess;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_ResultsSuccess(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc

class _$_ResultsSuccess implements _ResultsSuccess {
  const _$_ResultsSuccess({required this.results});

  @override
  final List<Result> results;

  @override
  String toString() {
    return 'ResultsState.success(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultsSuccess &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$ResultsSuccessCopyWith<_ResultsSuccess> get copyWith =>
      __$ResultsSuccessCopyWithImpl<_ResultsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Result> results) success,
    required TResult Function(String message) failure,
  }) {
    return success(results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Result> results)? success,
    TResult Function(String message)? failure,
  }) {
    return success?.call(results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Result> results)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultsInitial value) initial,
    required TResult Function(_ResultsSuccess value) success,
    required TResult Function(_ResultsFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultsInitial value)? initial,
    TResult Function(_ResultsSuccess value)? success,
    TResult Function(_ResultsFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultsInitial value)? initial,
    TResult Function(_ResultsSuccess value)? success,
    TResult Function(_ResultsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ResultsSuccess implements ResultsState {
  const factory _ResultsSuccess({required List<Result> results}) =
      _$_ResultsSuccess;

  List<Result> get results;
  @JsonKey(ignore: true)
  _$ResultsSuccessCopyWith<_ResultsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResultsFailureCopyWith<$Res> {
  factory _$ResultsFailureCopyWith(
          _ResultsFailure value, $Res Function(_ResultsFailure) then) =
      __$ResultsFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ResultsFailureCopyWithImpl<$Res>
    extends _$ResultsStateCopyWithImpl<$Res>
    implements _$ResultsFailureCopyWith<$Res> {
  __$ResultsFailureCopyWithImpl(
      _ResultsFailure _value, $Res Function(_ResultsFailure) _then)
      : super(_value, (v) => _then(v as _ResultsFailure));

  @override
  _ResultsFailure get _value => super._value as _ResultsFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ResultsFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResultsFailure implements _ResultsFailure {
  const _$_ResultsFailure({this.message = "Results fetching failure"});

  @JsonKey()
  @override
  final String message;

  @override
  String toString() {
    return 'ResultsState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultsFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ResultsFailureCopyWith<_ResultsFailure> get copyWith =>
      __$ResultsFailureCopyWithImpl<_ResultsFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Result> results) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Result> results)? success,
    TResult Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Result> results)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultsInitial value) initial,
    required TResult Function(_ResultsSuccess value) success,
    required TResult Function(_ResultsFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultsInitial value)? initial,
    TResult Function(_ResultsSuccess value)? success,
    TResult Function(_ResultsFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultsInitial value)? initial,
    TResult Function(_ResultsSuccess value)? success,
    TResult Function(_ResultsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ResultsFailure implements ResultsState {
  const factory _ResultsFailure({String message}) = _$_ResultsFailure;

  String get message;
  @JsonKey(ignore: true)
  _$ResultsFailureCopyWith<_ResultsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
