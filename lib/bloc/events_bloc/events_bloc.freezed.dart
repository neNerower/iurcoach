// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EventsEventTearOff {
  const _$EventsEventTearOff();

  EventsRefreshed refresh() {
    return const EventsRefreshed();
  }

  EventsFetched fetched(DateTime targetMonth) {
    return EventsFetched(
      targetMonth,
    );
  }
}

/// @nodoc
const $EventsEvent = _$EventsEventTearOff();

/// @nodoc
mixin _$EventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(DateTime targetMonth) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(DateTime targetMonth)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(DateTime targetMonth)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventsRefreshed value) refresh,
    required TResult Function(EventsFetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EventsRefreshed value)? refresh,
    TResult Function(EventsFetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventsRefreshed value)? refresh,
    TResult Function(EventsFetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsEventCopyWith<$Res> {
  factory $EventsEventCopyWith(
          EventsEvent value, $Res Function(EventsEvent) then) =
      _$EventsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventsEventCopyWithImpl<$Res> implements $EventsEventCopyWith<$Res> {
  _$EventsEventCopyWithImpl(this._value, this._then);

  final EventsEvent _value;
  // ignore: unused_field
  final $Res Function(EventsEvent) _then;
}

/// @nodoc
abstract class $EventsRefreshedCopyWith<$Res> {
  factory $EventsRefreshedCopyWith(
          EventsRefreshed value, $Res Function(EventsRefreshed) then) =
      _$EventsRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventsRefreshedCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res>
    implements $EventsRefreshedCopyWith<$Res> {
  _$EventsRefreshedCopyWithImpl(
      EventsRefreshed _value, $Res Function(EventsRefreshed) _then)
      : super(_value, (v) => _then(v as EventsRefreshed));

  @override
  EventsRefreshed get _value => super._value as EventsRefreshed;
}

/// @nodoc

class _$EventsRefreshed implements EventsRefreshed {
  const _$EventsRefreshed();

  @override
  String toString() {
    return 'EventsEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EventsRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(DateTime targetMonth) fetched,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(DateTime targetMonth)? fetched,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(DateTime targetMonth)? fetched,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventsRefreshed value) refresh,
    required TResult Function(EventsFetched value) fetched,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EventsRefreshed value)? refresh,
    TResult Function(EventsFetched value)? fetched,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventsRefreshed value)? refresh,
    TResult Function(EventsFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class EventsRefreshed implements EventsEvent {
  const factory EventsRefreshed() = _$EventsRefreshed;
}

/// @nodoc
abstract class $EventsFetchedCopyWith<$Res> {
  factory $EventsFetchedCopyWith(
          EventsFetched value, $Res Function(EventsFetched) then) =
      _$EventsFetchedCopyWithImpl<$Res>;
  $Res call({DateTime targetMonth});
}

/// @nodoc
class _$EventsFetchedCopyWithImpl<$Res> extends _$EventsEventCopyWithImpl<$Res>
    implements $EventsFetchedCopyWith<$Res> {
  _$EventsFetchedCopyWithImpl(
      EventsFetched _value, $Res Function(EventsFetched) _then)
      : super(_value, (v) => _then(v as EventsFetched));

  @override
  EventsFetched get _value => super._value as EventsFetched;

  @override
  $Res call({
    Object? targetMonth = freezed,
  }) {
    return _then(EventsFetched(
      targetMonth == freezed
          ? _value.targetMonth
          : targetMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$EventsFetched implements EventsFetched {
  const _$EventsFetched(this.targetMonth);

  @override
  final DateTime targetMonth;

  @override
  String toString() {
    return 'EventsEvent.fetched(targetMonth: $targetMonth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EventsFetched &&
            const DeepCollectionEquality()
                .equals(other.targetMonth, targetMonth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(targetMonth));

  @JsonKey(ignore: true)
  @override
  $EventsFetchedCopyWith<EventsFetched> get copyWith =>
      _$EventsFetchedCopyWithImpl<EventsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(DateTime targetMonth) fetched,
  }) {
    return fetched(targetMonth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(DateTime targetMonth)? fetched,
  }) {
    return fetched?.call(targetMonth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(DateTime targetMonth)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(targetMonth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventsRefreshed value) refresh,
    required TResult Function(EventsFetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EventsRefreshed value)? refresh,
    TResult Function(EventsFetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventsRefreshed value)? refresh,
    TResult Function(EventsFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class EventsFetched implements EventsEvent {
  const factory EventsFetched(DateTime targetMonth) = _$EventsFetched;

  DateTime get targetMonth;
  @JsonKey(ignore: true)
  $EventsFetchedCopyWith<EventsFetched> get copyWith =>
      throw _privateConstructorUsedError;
}
