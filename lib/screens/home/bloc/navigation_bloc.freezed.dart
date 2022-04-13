// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavigationEventTearOff {
  const _$NavigationEventTearOff();

  NavigationPageChanged pageChanged({required int pageIndex}) {
    return NavigationPageChanged(
      pageIndex: pageIndex,
    );
  }
}

/// @nodoc
const $NavigationEvent = _$NavigationEventTearOff();

/// @nodoc
mixin _$NavigationEvent {
  int get pageIndex => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndex) pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int pageIndex)? pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? pageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationPageChanged value) pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigationPageChanged value)? pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationPageChanged value)? pageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationEventCopyWith<NavigationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res>;
  $Res call({int pageIndex});
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  final NavigationEvent _value;
  // ignore: unused_field
  final $Res Function(NavigationEvent) _then;

  @override
  $Res call({
    Object? pageIndex = freezed,
  }) {
    return _then(_value.copyWith(
      pageIndex: pageIndex == freezed
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $NavigationPageChangedCopyWith<$Res>
    implements $NavigationEventCopyWith<$Res> {
  factory $NavigationPageChangedCopyWith(NavigationPageChanged value,
          $Res Function(NavigationPageChanged) then) =
      _$NavigationPageChangedCopyWithImpl<$Res>;
  @override
  $Res call({int pageIndex});
}

/// @nodoc
class _$NavigationPageChangedCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $NavigationPageChangedCopyWith<$Res> {
  _$NavigationPageChangedCopyWithImpl(
      NavigationPageChanged _value, $Res Function(NavigationPageChanged) _then)
      : super(_value, (v) => _then(v as NavigationPageChanged));

  @override
  NavigationPageChanged get _value => super._value as NavigationPageChanged;

  @override
  $Res call({
    Object? pageIndex = freezed,
  }) {
    return _then(NavigationPageChanged(
      pageIndex: pageIndex == freezed
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NavigationPageChanged implements NavigationPageChanged {
  const _$NavigationPageChanged({required this.pageIndex});

  @override
  final int pageIndex;

  @override
  String toString() {
    return 'NavigationEvent.pageChanged(pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NavigationPageChanged &&
            const DeepCollectionEquality().equals(other.pageIndex, pageIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pageIndex));

  @JsonKey(ignore: true)
  @override
  $NavigationPageChangedCopyWith<NavigationPageChanged> get copyWith =>
      _$NavigationPageChangedCopyWithImpl<NavigationPageChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndex) pageChanged,
  }) {
    return pageChanged(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int pageIndex)? pageChanged,
  }) {
    return pageChanged?.call(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? pageChanged,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationPageChanged value) pageChanged,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigationPageChanged value)? pageChanged,
  }) {
    return pageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationPageChanged value)? pageChanged,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class NavigationPageChanged implements NavigationEvent {
  const factory NavigationPageChanged({required int pageIndex}) =
      _$NavigationPageChanged;

  @override
  int get pageIndex;
  @override
  @JsonKey(ignore: true)
  $NavigationPageChangedCopyWith<NavigationPageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
