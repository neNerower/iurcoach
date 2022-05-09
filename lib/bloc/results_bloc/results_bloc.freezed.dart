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

  ResultsRefreshed refreshed() {
    return const ResultsRefreshed();
  }

  ResultsFetched fetched() {
    return const ResultsFetched();
  }
}

/// @nodoc
const $ResultsEvent = _$ResultsEventTearOff();

/// @nodoc
mixin _$ResultsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshed,
    required TResult Function() fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshed,
    TResult Function()? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshed,
    TResult Function()? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultsRefreshed value) refreshed,
    required TResult Function(ResultsFetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultsRefreshed value)? refreshed,
    TResult Function(ResultsFetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultsRefreshed value)? refreshed,
    TResult Function(ResultsFetched value)? fetched,
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
abstract class $ResultsRefreshedCopyWith<$Res> {
  factory $ResultsRefreshedCopyWith(
          ResultsRefreshed value, $Res Function(ResultsRefreshed) then) =
      _$ResultsRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResultsRefreshedCopyWithImpl<$Res>
    extends _$ResultsEventCopyWithImpl<$Res>
    implements $ResultsRefreshedCopyWith<$Res> {
  _$ResultsRefreshedCopyWithImpl(
      ResultsRefreshed _value, $Res Function(ResultsRefreshed) _then)
      : super(_value, (v) => _then(v as ResultsRefreshed));

  @override
  ResultsRefreshed get _value => super._value as ResultsRefreshed;
}

/// @nodoc

class _$ResultsRefreshed
    with DiagnosticableTreeMixin
    implements ResultsRefreshed {
  const _$ResultsRefreshed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultsEvent.refreshed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ResultsEvent.refreshed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResultsRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshed,
    required TResult Function() fetched,
  }) {
    return refreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshed,
    TResult Function()? fetched,
  }) {
    return refreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshed,
    TResult Function()? fetched,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultsRefreshed value) refreshed,
    required TResult Function(ResultsFetched value) fetched,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultsRefreshed value)? refreshed,
    TResult Function(ResultsFetched value)? fetched,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultsRefreshed value)? refreshed,
    TResult Function(ResultsFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class ResultsRefreshed implements ResultsEvent {
  const factory ResultsRefreshed() = _$ResultsRefreshed;
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

class _$ResultsFetched with DiagnosticableTreeMixin implements ResultsFetched {
  const _$ResultsFetched();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultsEvent.fetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ResultsEvent.fetched'));
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
    required TResult Function() refreshed,
    required TResult Function() fetched,
  }) {
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshed,
    TResult Function()? fetched,
  }) {
    return fetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshed,
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
    required TResult Function(ResultsRefreshed value) refreshed,
    required TResult Function(ResultsFetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultsRefreshed value)? refreshed,
    TResult Function(ResultsFetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultsRefreshed value)? refreshed,
    TResult Function(ResultsFetched value)? fetched,
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
class _$ResultsStateTearOff {
  const _$ResultsStateTearOff();

  _ResultsInitial initial() {
    return const _ResultsInitial();
  }

  _ResultsSuccess success({required List<Event> resultantEvents}) {
    return _ResultsSuccess(
      resultantEvents: resultantEvents,
    );
  }

  _ResultsFailure failure({String? message}) {
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

class _$_ResultsInitial
    with DiagnosticableTreeMixin
    implements _ResultsInitial {
  const _$_ResultsInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ResultsState.initial'));
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
  $Res call({List<Event> resultantEvents});
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
    Object? resultantEvents = freezed,
  }) {
    return _then(_ResultsSuccess(
      resultantEvents: resultantEvents == freezed
          ? _value.resultantEvents
          : resultantEvents // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$_ResultsSuccess
    with DiagnosticableTreeMixin
    implements _ResultsSuccess {
  const _$_ResultsSuccess({required this.resultantEvents});

  @override
  final List<Event> resultantEvents;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultsState.success(resultantEvents: $resultantEvents)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultsState.success'))
      ..add(DiagnosticsProperty('resultantEvents', resultantEvents));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultsSuccess &&
            const DeepCollectionEquality()
                .equals(other.resultantEvents, resultantEvents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(resultantEvents));

  @JsonKey(ignore: true)
  @override
  _$ResultsSuccessCopyWith<_ResultsSuccess> get copyWith =>
      __$ResultsSuccessCopyWithImpl<_ResultsSuccess>(this, _$identity);

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
  const factory _ResultsSuccess({required List<Event> resultantEvents}) =
      _$_ResultsSuccess;

  List<Event> get resultantEvents;
  @JsonKey(ignore: true)
  _$ResultsSuccessCopyWith<_ResultsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResultsFailureCopyWith<$Res> {
  factory _$ResultsFailureCopyWith(
          _ResultsFailure value, $Res Function(_ResultsFailure) then) =
      __$ResultsFailureCopyWithImpl<$Res>;
  $Res call({String? message});
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
              as String?,
    ));
  }
}

/// @nodoc

class _$_ResultsFailure
    with DiagnosticableTreeMixin
    implements _ResultsFailure {
  const _$_ResultsFailure({this.message});

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultsState.failure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultsState.failure'))
      ..add(DiagnosticsProperty('message', message));
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
  const factory _ResultsFailure({String? message}) = _$_ResultsFailure;

  String? get message;
  @JsonKey(ignore: true)
  _$ResultsFailureCopyWith<_ResultsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
