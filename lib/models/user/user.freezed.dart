// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required int id,
      required String firstName,
      required String lastName,
      required DateTime birthdate,
      double? weight,
      double? height,
      required String team,
      required String faculty,
      required String studGroup,
      required String isuID,
      required String vkID,
      required String phoneNumber,
      required String email,
      required String photoURL}) {
    return _User(
      id: id,
      firstName: firstName,
      lastName: lastName,
      birthdate: birthdate,
      weight: weight,
      height: height,
      team: team,
      faculty: faculty,
      studGroup: studGroup,
      isuID: isuID,
      vkID: vkID,
      phoneNumber: phoneNumber,
      email: email,
      photoURL: photoURL,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  DateTime get birthdate => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  String get team => throw _privateConstructorUsedError;
  String get faculty => throw _privateConstructorUsedError;
  String get studGroup => throw _privateConstructorUsedError;
  String get isuID => throw _privateConstructorUsedError;
  String get vkID => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get photoURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String firstName,
      String lastName,
      DateTime birthdate,
      double? weight,
      double? height,
      String team,
      String faculty,
      String studGroup,
      String isuID,
      String vkID,
      String phoneNumber,
      String email,
      String photoURL});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? birthdate = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? team = freezed,
    Object? faculty = freezed,
    Object? studGroup = freezed,
    Object? isuID = freezed,
    Object? vkID = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      team: team == freezed
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String,
      faculty: faculty == freezed
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String,
      studGroup: studGroup == freezed
          ? _value.studGroup
          : studGroup // ignore: cast_nullable_to_non_nullable
              as String,
      isuID: isuID == freezed
          ? _value.isuID
          : isuID // ignore: cast_nullable_to_non_nullable
              as String,
      vkID: vkID == freezed
          ? _value.vkID
          : vkID // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String firstName,
      String lastName,
      DateTime birthdate,
      double? weight,
      double? height,
      String team,
      String faculty,
      String studGroup,
      String isuID,
      String vkID,
      String phoneNumber,
      String email,
      String photoURL});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? birthdate = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? team = freezed,
    Object? faculty = freezed,
    Object? studGroup = freezed,
    Object? isuID = freezed,
    Object? vkID = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      team: team == freezed
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String,
      faculty: faculty == freezed
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String,
      studGroup: studGroup == freezed
          ? _value.studGroup
          : studGroup // ignore: cast_nullable_to_non_nullable
              as String,
      isuID: isuID == freezed
          ? _value.isuID
          : isuID // ignore: cast_nullable_to_non_nullable
              as String,
      vkID: vkID == freezed
          ? _value.vkID
          : vkID // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.birthdate,
      this.weight,
      this.height,
      required this.team,
      required this.faculty,
      required this.studGroup,
      required this.isuID,
      required this.vkID,
      required this.phoneNumber,
      required this.email,
      required this.photoURL});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final DateTime birthdate;
  @override
  final double? weight;
  @override
  final double? height;
  @override
  final String team;
  @override
  final String faculty;
  @override
  final String studGroup;
  @override
  final String isuID;
  @override
  final String vkID;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String photoURL;

  @override
  String toString() {
    return 'User(id: $id, firstName: $firstName, lastName: $lastName, birthdate: $birthdate, weight: $weight, height: $height, team: $team, faculty: $faculty, studGroup: $studGroup, isuID: $isuID, vkID: $vkID, phoneNumber: $phoneNumber, email: $email, photoURL: $photoURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.birthdate, birthdate) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.team, team) &&
            const DeepCollectionEquality().equals(other.faculty, faculty) &&
            const DeepCollectionEquality().equals(other.studGroup, studGroup) &&
            const DeepCollectionEquality().equals(other.isuID, isuID) &&
            const DeepCollectionEquality().equals(other.vkID, vkID) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.photoURL, photoURL));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(birthdate),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(team),
      const DeepCollectionEquality().hash(faculty),
      const DeepCollectionEquality().hash(studGroup),
      const DeepCollectionEquality().hash(isuID),
      const DeepCollectionEquality().hash(vkID),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(photoURL));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {required int id,
      required String firstName,
      required String lastName,
      required DateTime birthdate,
      double? weight,
      double? height,
      required String team,
      required String faculty,
      required String studGroup,
      required String isuID,
      required String vkID,
      required String phoneNumber,
      required String email,
      required String photoURL}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  DateTime get birthdate;
  @override
  double? get weight;
  @override
  double? get height;
  @override
  String get team;
  @override
  String get faculty;
  @override
  String get studGroup;
  @override
  String get isuID;
  @override
  String get vkID;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  String get photoURL;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
