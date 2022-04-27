import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User{
  const factory User ({
    required int id,
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
    required String photoURL,
    // required List<int> results,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
