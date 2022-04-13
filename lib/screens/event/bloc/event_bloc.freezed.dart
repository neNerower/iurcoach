// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EventEventTearOff {
  const _$EventEventTearOff();

  EventUpdated updated(Event event) {
    return EventUpdated(
      event,
    );
  }

  EventStatusChanged statusChanged(GoingStatus status) {
    return EventStatusChanged(
      status,
    );
  }

  EventResultCreated resultCreated(Result result) {
    return EventResultCreated(
      result,
    );
  }
}

/// @nodoc
const $EventEvent = _$EventEventTearOff();

/// @nodoc
mixin _$EventEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) updated,
    required TResult Function(GoingStatus status) statusChanged,
    required TResult Function(Result result) resultCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Event event)? updated,
    TResult Function(GoingStatus status)? statusChanged,
    TResult Function(Result result)? resultCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? updated,
    TResult Function(GoingStatus status)? statusChanged,
    TResult Function(Result result)? resultCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventUpdated value) updated,
    required TResult Function(EventStatusChanged value) statusChanged,
    required TResult Function(EventResultCreated value) resultCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EventUpdated value)? updated,
    TResult Function(EventStatusChanged value)? statusChanged,
    TResult Function(EventResultCreated value)? resultCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventUpdated value)? updated,
    TResult Function(EventStatusChanged value)? statusChanged,
    TResult Function(EventResultCreated value)? resultCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEventCopyWith<$Res> {
  factory $EventEventCopyWith(
          EventEvent value, $Res Function(EventEvent) then) =
      _$EventEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventEventCopyWithImpl<$Res> implements $EventEventCopyWith<$Res> {
  _$EventEventCopyWithImpl(this._value, this._then);

  final EventEvent _value;
  // ignore: unused_field
  final $Res Function(EventEvent) _then;
}

/// @nodoc
abstract class $EventUpdatedCopyWith<$Res> {
  factory $EventUpdatedCopyWith(
          EventUpdated value, $Res Function(EventUpdated) then) =
      _$EventUpdatedCopyWithImpl<$Res>;
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class _$EventUpdatedCopyWithImpl<$Res> extends _$EventEventCopyWithImpl<$Res>
    implements $EventUpdatedCopyWith<$Res> {
  _$EventUpdatedCopyWithImpl(
      EventUpdated _value, $Res Function(EventUpdated) _then)
      : super(_value, (v) => _then(v as EventUpdated));

  @override
  EventUpdated get _value => super._value as EventUpdated;

  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(EventUpdated(
      event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  @override
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$EventUpdated implements EventUpdated {
  const _$EventUpdated(this.event);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventEvent.updated(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EventUpdated &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  $EventUpdatedCopyWith<EventUpdated> get copyWith =>
      _$EventUpdatedCopyWithImpl<EventUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) updated,
    required TResult Function(GoingStatus status) statusChanged,
    required TResult Function(Result result) resultCreated,
  }) {
    return updated(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Event event)? updated,
    TResult Function(GoingStatus status)? statusChanged,
    TResult Function(Result result)? resultCreated,
  }) {
    return updated?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? updated,
    TResult Function(GoingStatus status)? statusChanged,
    TResult Function(Result result)? resultCreated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventUpdated value) updated,
    required TResult Function(EventStatusChanged value) statusChanged,
    required TResult Function(EventResultCreated value) resultCreated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EventUpdated value)? updated,
    TResult Function(EventStatusChanged value)? statusChanged,
    TResult Function(EventResultCreated value)? resultCreated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventUpdated value)? updated,
    TResult Function(EventStatusChanged value)? statusChanged,
    TResult Function(EventResultCreated value)? resultCreated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class EventUpdated implements EventEvent {
  const factory EventUpdated(Event event) = _$EventUpdated;

  Event get event;
  @JsonKey(ignore: true)
  $EventUpdatedCopyWith<EventUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventStatusChangedCopyWith<$Res> {
  factory $EventStatusChangedCopyWith(
          EventStatusChanged value, $Res Function(EventStatusChanged) then) =
      _$EventStatusChangedCopyWithImpl<$Res>;
  $Res call({GoingStatus status});
}

/// @nodoc
class _$EventStatusChangedCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res>
    implements $EventStatusChangedCopyWith<$Res> {
  _$EventStatusChangedCopyWithImpl(
      EventStatusChanged _value, $Res Function(EventStatusChanged) _then)
      : super(_value, (v) => _then(v as EventStatusChanged));

  @override
  EventStatusChanged get _value => super._value as EventStatusChanged;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(EventStatusChanged(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GoingStatus,
    ));
  }
}

/// @nodoc

class _$EventStatusChanged implements EventStatusChanged {
  const _$EventStatusChanged(this.status);

  @override
  final GoingStatus status;

  @override
  String toString() {
    return 'EventEvent.statusChanged(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EventStatusChanged &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  $EventStatusChangedCopyWith<EventStatusChanged> get copyWith =>
      _$EventStatusChangedCopyWithImpl<EventStatusChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) updated,
    required TResult Function(GoingStatus status) statusChanged,
    required TResult Function(Result result) resultCreated,
  }) {
    return statusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Event event)? updated,
    TResult Function(GoingStatus status)? statusChanged,
    TResult Function(Result result)? resultCreated,
  }) {
    return statusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? updated,
    TResult Function(GoingStatus status)? statusChanged,
    TResult Function(Result result)? resultCreated,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventUpdated value) updated,
    required TResult Function(EventStatusChanged value) statusChanged,
    required TResult Function(EventResultCreated value) resultCreated,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EventUpdated value)? updated,
    TResult Function(EventStatusChanged value)? statusChanged,
    TResult Function(EventResultCreated value)? resultCreated,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventUpdated value)? updated,
    TResult Function(EventStatusChanged value)? statusChanged,
    TResult Function(EventResultCreated value)? resultCreated,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class EventStatusChanged implements EventEvent {
  const factory EventStatusChanged(GoingStatus status) = _$EventStatusChanged;

  GoingStatus get status;
  @JsonKey(ignore: true)
  $EventStatusChangedCopyWith<EventStatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventResultCreatedCopyWith<$Res> {
  factory $EventResultCreatedCopyWith(
          EventResultCreated value, $Res Function(EventResultCreated) then) =
      _$EventResultCreatedCopyWithImpl<$Res>;
  $Res call({Result result});

  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class _$EventResultCreatedCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res>
    implements $EventResultCreatedCopyWith<$Res> {
  _$EventResultCreatedCopyWithImpl(
      EventResultCreated _value, $Res Function(EventResultCreated) _then)
      : super(_value, (v) => _then(v as EventResultCreated));

  @override
  EventResultCreated get _value => super._value as EventResultCreated;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(EventResultCreated(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }

  @override
  $ResultCopyWith<$Res> get result {
    return $ResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$EventResultCreated implements EventResultCreated {
  const _$EventResultCreated(this.result);

  @override
  final Result result;

  @override
  String toString() {
    return 'EventEvent.resultCreated(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EventResultCreated &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  $EventResultCreatedCopyWith<EventResultCreated> get copyWith =>
      _$EventResultCreatedCopyWithImpl<EventResultCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) updated,
    required TResult Function(GoingStatus status) statusChanged,
    required TResult Function(Result result) resultCreated,
  }) {
    return resultCreated(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Event event)? updated,
    TResult Function(GoingStatus status)? statusChanged,
    TResult Function(Result result)? resultCreated,
  }) {
    return resultCreated?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? updated,
    TResult Function(GoingStatus status)? statusChanged,
    TResult Function(Result result)? resultCreated,
    required TResult orElse(),
  }) {
    if (resultCreated != null) {
      return resultCreated(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventUpdated value) updated,
    required TResult Function(EventStatusChanged value) statusChanged,
    required TResult Function(EventResultCreated value) resultCreated,
  }) {
    return resultCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EventUpdated value)? updated,
    TResult Function(EventStatusChanged value)? statusChanged,
    TResult Function(EventResultCreated value)? resultCreated,
  }) {
    return resultCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventUpdated value)? updated,
    TResult Function(EventStatusChanged value)? statusChanged,
    TResult Function(EventResultCreated value)? resultCreated,
    required TResult orElse(),
  }) {
    if (resultCreated != null) {
      return resultCreated(this);
    }
    return orElse();
  }
}

abstract class EventResultCreated implements EventEvent {
  const factory EventResultCreated(Result result) = _$EventResultCreated;

  Result get result;
  @JsonKey(ignore: true)
  $EventResultCreatedCopyWith<EventResultCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EventStateTearOff {
  const _$EventStateTearOff();

  _EventInitial initial() {
    return const _EventInitial();
  }

  _EventData data(
      {required Event event,
      Result? result,
      GoingStatus status = GoingStatus.unknown}) {
    return _EventData(
      event: event,
      result: result,
      status: status,
    );
  }

  _EventFailure failure({String? message}) {
    return _EventFailure(
      message: message,
    );
  }
}

/// @nodoc
const $EventState = _$EventStateTearOff();

/// @nodoc
mixin _$EventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Event event, Result? result, GoingStatus status)
        data,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Event event, Result? result, GoingStatus status)? data,
    TResult Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Event event, Result? result, GoingStatus status)? data,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitial value) initial,
    required TResult Function(_EventData value) data,
    required TResult Function(_EventFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventInitial value)? initial,
    TResult Function(_EventData value)? data,
    TResult Function(_EventFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitial value)? initial,
    TResult Function(_EventData value)? data,
    TResult Function(_EventFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventStateCopyWith<$Res> {
  factory $EventStateCopyWith(
          EventState value, $Res Function(EventState) then) =
      _$EventStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventStateCopyWithImpl<$Res> implements $EventStateCopyWith<$Res> {
  _$EventStateCopyWithImpl(this._value, this._then);

  final EventState _value;
  // ignore: unused_field
  final $Res Function(EventState) _then;
}

/// @nodoc
abstract class _$EventInitialCopyWith<$Res> {
  factory _$EventInitialCopyWith(
          _EventInitial value, $Res Function(_EventInitial) then) =
      __$EventInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$EventInitialCopyWithImpl<$Res> extends _$EventStateCopyWithImpl<$Res>
    implements _$EventInitialCopyWith<$Res> {
  __$EventInitialCopyWithImpl(
      _EventInitial _value, $Res Function(_EventInitial) _then)
      : super(_value, (v) => _then(v as _EventInitial));

  @override
  _EventInitial get _value => super._value as _EventInitial;
}

/// @nodoc

class _$_EventInitial implements _EventInitial {
  const _$_EventInitial();

  @override
  String toString() {
    return 'EventState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Event event, Result? result, GoingStatus status)
        data,
    required TResult Function(String? message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Event event, Result? result, GoingStatus status)? data,
    TResult Function(String? message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Event event, Result? result, GoingStatus status)? data,
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
    required TResult Function(_EventInitial value) initial,
    required TResult Function(_EventData value) data,
    required TResult Function(_EventFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventInitial value)? initial,
    TResult Function(_EventData value)? data,
    TResult Function(_EventFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitial value)? initial,
    TResult Function(_EventData value)? data,
    TResult Function(_EventFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _EventInitial implements EventState {
  const factory _EventInitial() = _$_EventInitial;
}

/// @nodoc
abstract class _$EventDataCopyWith<$Res> {
  factory _$EventDataCopyWith(
          _EventData value, $Res Function(_EventData) then) =
      __$EventDataCopyWithImpl<$Res>;
  $Res call({Event event, Result? result, GoingStatus status});

  $EventCopyWith<$Res> get event;
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$EventDataCopyWithImpl<$Res> extends _$EventStateCopyWithImpl<$Res>
    implements _$EventDataCopyWith<$Res> {
  __$EventDataCopyWithImpl(_EventData _value, $Res Function(_EventData) _then)
      : super(_value, (v) => _then(v as _EventData));

  @override
  _EventData get _value => super._value as _EventData;

  @override
  $Res call({
    Object? event = freezed,
    Object? result = freezed,
    Object? status = freezed,
  }) {
    return _then(_EventData(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GoingStatus,
    ));
  }

  @override
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }

  @override
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$_EventData implements _EventData {
  const _$_EventData(
      {required this.event, this.result, this.status = GoingStatus.unknown});

  @override
  final Event event;
  @override
  final Result? result;
  @JsonKey()
  @override
  final GoingStatus status;

  @override
  String toString() {
    return 'EventState.data(event: $event, result: $result, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventData &&
            const DeepCollectionEquality().equals(other.event, event) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(event),
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$EventDataCopyWith<_EventData> get copyWith =>
      __$EventDataCopyWithImpl<_EventData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Event event, Result? result, GoingStatus status)
        data,
    required TResult Function(String? message) failure,
  }) {
    return data(event, result, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Event event, Result? result, GoingStatus status)? data,
    TResult Function(String? message)? failure,
  }) {
    return data?.call(event, result, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Event event, Result? result, GoingStatus status)? data,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(event, result, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitial value) initial,
    required TResult Function(_EventData value) data,
    required TResult Function(_EventFailure value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventInitial value)? initial,
    TResult Function(_EventData value)? data,
    TResult Function(_EventFailure value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitial value)? initial,
    TResult Function(_EventData value)? data,
    TResult Function(_EventFailure value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _EventData implements EventState {
  const factory _EventData(
      {required Event event,
      Result? result,
      GoingStatus status}) = _$_EventData;

  Event get event;
  Result? get result;
  GoingStatus get status;
  @JsonKey(ignore: true)
  _$EventDataCopyWith<_EventData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EventFailureCopyWith<$Res> {
  factory _$EventFailureCopyWith(
          _EventFailure value, $Res Function(_EventFailure) then) =
      __$EventFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$EventFailureCopyWithImpl<$Res> extends _$EventStateCopyWithImpl<$Res>
    implements _$EventFailureCopyWith<$Res> {
  __$EventFailureCopyWithImpl(
      _EventFailure _value, $Res Function(_EventFailure) _then)
      : super(_value, (v) => _then(v as _EventFailure));

  @override
  _EventFailure get _value => super._value as _EventFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_EventFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EventFailure implements _EventFailure {
  const _$_EventFailure({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'EventState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$EventFailureCopyWith<_EventFailure> get copyWith =>
      __$EventFailureCopyWithImpl<_EventFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Event event, Result? result, GoingStatus status)
        data,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Event event, Result? result, GoingStatus status)? data,
    TResult Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Event event, Result? result, GoingStatus status)? data,
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
    required TResult Function(_EventInitial value) initial,
    required TResult Function(_EventData value) data,
    required TResult Function(_EventFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventInitial value)? initial,
    TResult Function(_EventData value)? data,
    TResult Function(_EventFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitial value)? initial,
    TResult Function(_EventData value)? data,
    TResult Function(_EventFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _EventFailure implements EventState {
  const factory _EventFailure({String? message}) = _$_EventFailure;

  String? get message;
  @JsonKey(ignore: true)
  _$EventFailureCopyWith<_EventFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
