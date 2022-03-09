class UserModel {
  String firstName;
  String? lastName;
  DateTime? birthdate;
  String? group;
  String? isuID;
  String? vkID;
  String? phoneNumber;
  String? email;
  String? photoURL;

  UserModel({
    required this.firstName,
    this.lastName,
    this.birthdate,
    this.group,
    this.isuID,
    this.vkID,
    this.phoneNumber,
    this.email,
    this.photoURL,
  });
}
