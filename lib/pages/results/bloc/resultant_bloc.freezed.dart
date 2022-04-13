// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resultant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultantEventTearOff {
  const _$ResultantEventTearOff();

  ResultantFetched fetched() {
    return const ResultantFetched();
  }
}

/// @nodoc
const $ResultantEvent = _$ResultantEventTearOff();

/// @nodoc
mixin _$ResultantEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultantFetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultantFetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultantFetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultantEventCopyWith<$Res> {
  factory $ResultantEventCopyWith(
          ResultantEvent value, $Res Function(ResultantEvent) then) =
      _$ResultantEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResultantEventCopyWithImpl<$Res>
    implements $ResultantEventCopyWith<$Res> {
  _$ResultantEventCopyWithImpl(this._value, this._then);

  final ResultantEvent _value;
  // ignore: unused_field
  final $Res Function(ResultantEvent) _then;
}

/// @nodoc
abstract class $ResultantFetchedCopyWith<$Res> {
  factory $ResultantFetchedCopyWith(
          ResultantFetched value, $Res Function(ResultantFetched) then) =
      _$ResultantFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResultantFetchedCopyWithImpl<$Res>
    extends _$ResultantEventCopyWithImpl<$Res>
    implements $ResultantFetchedCopyWith<$Res> {
  _$ResultantFetchedCopyWithImpl(
      ResultantFetched _value, $Res Function(ResultantFetched) _then)
      : super(_value, (v) => _then(v as ResultantFetched));

  @override
  ResultantFetched get _value => super._value as ResultantFetched;
}

/// @nodoc

class _$ResultantFetched implements ResultantFetched {
  const _$ResultantFetched();

  @override
  String toString() {
    return 'ResultantEvent.fetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResultantFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
  }) {
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetched,
  }) {
    return fetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
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
    required TResult Function(ResultantFetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultantFetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultantFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class ResultantFetched implements ResultantEvent {
  const factory ResultantFetched() = _$ResultantFetched;
}

/// @nodoc
class _$ResultantStateTearOff {
  const _$ResultantStateTearOff();

  _ResultantInitial initial() {
    return const _ResultantInitial();
  }

  _ResultantSuccess success({required List<Event> resultantEvents}) {
    return _ResultantSuccess(
      resultantEvents: resultantEvents,
    );
  }

  _ResultantFailure failure({String? message}) {
    return _ResultantFailure(
      message: message,
    );
  }
}

/// @nodoc
const $ResultantState = _$ResultantStateTearOff();

/// @nodoc
mixin _$ResultantState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Event> resultantEvents) success,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Event> resultantEvents)? success,
    TResult Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Event> resultantEvents)? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultantInitial value) initial,
    required TResult Function(_ResultantSuccess value) success,
    required TResult Function(_ResultantFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultantInitial value)? initial,
    TResult Function(_ResultantSuccess value)? success,
    TResult Function(_ResultantFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultantInitial value)? initial,
    TResult Function(_ResultantSuccess value)? success,
    TResult Function(_ResultantFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultantStateCopyWith<$Res> {
  factory $ResultantStateCopyWith(
          ResultantState value, $Res Function(ResultantState) then) =
      _$ResultantStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResultantStateCopyWithImpl<$Res>
    implements $ResultantStateCopyWith<$Res> {
  _$ResultantStateCopyWithImpl(this._value, this._then);

  final ResultantState _value;
  // ignore: unused_field
  final $Res Function(ResultantState) _then;
}

/// @nodoc
abstract class _$ResultantInitialCopyWith<$Res> {
  factory _$ResultantInitialCopyWith(
          _ResultantInitial value, $Res Function(_ResultantInitial) then) =
      __$ResultantInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResultantInitialCopyWithImpl<$Res>
    extends _$ResultantStateCopyWithImpl<$Res>
    implements _$ResultantInitialCopyWith<$Res> {
  __$ResultantInitialCopyWithImpl(
      _ResultantInitial _value, $Res Function(_ResultantInitial) _then)
      : super(_value, (v) => _then(v as _ResultantInitial));

  @override
  _ResultantInitial get _value => super._value as _ResultantInitial;
}

/// @nodoc

class _$_ResultantInitial implements _ResultantInitial {
  const _$_ResultantInitial();

  @override
  String toString() {
    return 'ResultantState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResultantInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Event> resultantEvents) success,
    required TResult Function(String? message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Event> resultantEvents)? success,
    TResult Function(String? message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Event> resultantEvents)? success,
    TResult Function(String? message)? failure,
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
    required TResult Function(_ResultantInitial value) initial,
    required TResult Function(_ResultantSuccess value) success,
    required TResult Function(_ResultantFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultantInitial value)? initial,
    TResult Function(_ResultantSuccess value)? success,
    TResult Function(_ResultantFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultantInitial value)? initial,
    TResult Function(_ResultantSuccess value)? success,
    TResult Function(_ResultantFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ResultantInitial implements ResultantState {
  const factory _ResultantInitial() = _$_ResultantInitial;
}

/// @nodoc
abstract class _$ResultantSuccessCopyWith<$Res> {
  factory _$ResultantSuccessCopyWith(
          _ResultantSuccess value, $Res Function(_ResultantSuccess) then) =
      __$ResultantSuccessCopyWithImpl<$Res>;
  $Res call({List<Event> resultantEvents});
}

/// @nodoc
class __$ResultantSuccessCopyWithImpl<$Res>
    extends _$ResultantStateCopyWithImpl<$Res>
    implements _$ResultantSuccessCopyWith<$Res> {
  __$ResultantSuccessCopyWithImpl(
      _ResultantSuccess _value, $Res Function(_ResultantSuccess) _then)
      : super(_value, (v) => _then(v as _ResultantSuccess));

  @override
  _ResultantSuccess get _value => super._value as _ResultantSuccess;

  @override
  $Res call({
    Object? resultantEvents = freezed,
  }) {
    return _then(_ResultantSuccess(
      resultantEvents: resultantEvents == freezed
          ? _value.resultantEvents
          : resultantEvents // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$_ResultantSuccess implements _ResultantSuccess {
  const _$_ResultantSuccess({required this.resultantEvents});

  @override
  final List<Event> resultantEvents;

  @override
  String toString() {
    return 'ResultantState.success(resultantEvents: $resultantEvents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultantSuccess &&
            const DeepCollectionEquality()
                .equals(other.resultantEvents, resultantEvents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(resultantEvents));

  @JsonKey(ignore: true)
  @override
  _$ResultantSuccessCopyWith<_ResultantSuccess> get copyWith =>
      __$ResultantSuccessCopyWithImpl<_ResultantSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Event> resultantEvents) success,
    required TResult Function(String? message) failure,
  }) {
    return success(resultantEvents);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Event> resultantEvents)? success,
    TResult Function(String? message)? failure,
  }) {
    return success?.call(resultantEvents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Event> resultantEvents)? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(resultantEvents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultantInitial value) initial,
    required TResult Function(_ResultantSuccess value) success,
    required TResult Function(_ResultantFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultantInitial value)? initial,
    TResult Function(_ResultantSuccess value)? success,
    TResult Function(_ResultantFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultantInitial value)? initial,
    TResult Function(_ResultantSuccess value)? success,
    TResult Function(_ResultantFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ResultantSuccess implements ResultantState {
  const factory _ResultantSuccess({required List<Event> resultantEvents}) =
      _$_ResultantSuccess;

  List<Event> get resultantEvents;
  @JsonKey(ignore: true)
  _$ResultantSuccessCopyWith<_ResultantSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResultantFailureCopyWith<$Res> {
  factory _$ResultantFailureCopyWith(
          _ResultantFailure value, $Res Function(_ResultantFailure) then) =
      __$ResultantFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$ResultantFailureCopyWithImpl<$Res>
    extends _$ResultantStateCopyWithImpl<$Res>
    implements _$ResultantFailureCopyWith<$Res> {
  __$ResultantFailureCopyWithImpl(
      _ResultantFailure _value, $Res Function(_ResultantFailure) _then)
      : super(_value, (v) => _then(v as _ResultantFailure));

  @override
  _ResultantFailure get _value => super._value as _ResultantFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ResultantFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ResultantFailure implements _ResultantFailure {
  const _$_ResultantFailure({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ResultantState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultantFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ResultantFailureCopyWith<_ResultantFailure> get copyWith =>
      __$ResultantFailureCopyWithImpl<_ResultantFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Event> resultantEvents) success,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Event> resultantEvents)? success,
    TResult Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Event> resultantEvents)? success,
    TResult Function(String? message)? failure,
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
    required TResult Function(_ResultantInitial value) initial,
    required TResult Function(_ResultantSuccess value) success,
    required TResult Function(_ResultantFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultantInitial value)? initial,
    TResult Function(_ResultantSuccess value)? success,
    TResult Function(_ResultantFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultantInitial value)? initial,
    TResult Function(_ResultantSuccess value)? success,
    TResult Function(_ResultantFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ResultantFailure implements ResultantState {
  const factory _ResultantFailure({String? message}) = _$_ResultantFailure;

  String? get message;
  @JsonKey(ignore: true)
  _$ResultantFailureCopyWith<_ResultantFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
