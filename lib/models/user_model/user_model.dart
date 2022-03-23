import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String firstName,
    String? lastName,
    DateTime? birthdate,
    double? weight,
    double? height,
    String? team,
    String? faculty,
    String? studGroup,
    String? isuID,
    String? vkID,
    String? phoneNumber,
    String? email,
    String? photoURL,
  }) = _UserModel;
}
