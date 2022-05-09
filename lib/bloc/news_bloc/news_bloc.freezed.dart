// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewsEventTearOff {
  const _$NewsEventTearOff();

  NewsRefreshed refresh() {
    return const NewsRefreshed();
  }

  NewsFetched fetched() {
    return const NewsFetched();
  }
}

/// @nodoc
const $NewsEvent = _$NewsEventTearOff();

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function() fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function()? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function()? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsRefreshed value) refresh,
    required TResult Function(NewsFetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewsRefreshed value)? refresh,
    TResult Function(NewsFetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsRefreshed value)? refresh,
    TResult Function(NewsFetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res> implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  final NewsEvent _value;
  // ignore: unused_field
  final $Res Function(NewsEvent) _then;
}

/// @nodoc
abstract class $NewsRefreshedCopyWith<$Res> {
  factory $NewsRefreshedCopyWith(
          NewsRefreshed value, $Res Function(NewsRefreshed) then) =
      _$NewsRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsRefreshedCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements $NewsRefreshedCopyWith<$Res> {
  _$NewsRefreshedCopyWithImpl(
      NewsRefreshed _value, $Res Function(NewsRefreshed) _then)
      : super(_value, (v) => _then(v as NewsRefreshed));

  @override
  NewsRefreshed get _value => super._value as NewsRefreshed;
}

/// @nodoc

class _$NewsRefreshed implements NewsRefreshed {
  const _$NewsRefreshed();

  @override
  String toString() {
    return 'NewsEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NewsRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function() fetched,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function()? fetched,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function()? fetched,
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
    required TResult Function(NewsRefreshed value) refresh,
    required TResult Function(NewsFetched value) fetched,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewsRefreshed value)? refresh,
    TResult Function(NewsFetched value)? fetched,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsRefreshed value)? refresh,
    TResult Function(NewsFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class NewsRefreshed implements NewsEvent {
  const factory NewsRefreshed() = _$NewsRefreshed;
}

/// @nodoc
abstract class $NewsFetchedCopyWith<$Res> {
  factory $NewsFetchedCopyWith(
          NewsFetched value, $Res Function(NewsFetched) then) =
      _$NewsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsFetchedCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements $NewsFetchedCopyWith<$Res> {
  _$NewsFetchedCopyWithImpl(
      NewsFetched _value, $Res Function(NewsFetched) _then)
      : super(_value, (v) => _then(v as NewsFetched));

  @override
  NewsFetched get _value => super._value as NewsFetched;
}

/// @nodoc

class _$NewsFetched implements NewsFetched {
  const _$NewsFetched();

  @override
  String toString() {
    return 'NewsEvent.fetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NewsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function() fetched,
  }) {
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function()? fetched,
  }) {
    return fetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
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
    required TResult Function(NewsRefreshed value) refresh,
    required TResult Function(NewsFetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewsRefreshed value)? refresh,
    TResult Function(NewsFetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsRefreshed value)? refresh,
    TResult Function(NewsFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class NewsFetched implements NewsEvent {
  const factory NewsFetched() = _$NewsFetched;
}
