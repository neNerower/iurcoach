import 'package:dio/dio.dart';
import 'package:iurc_mobile_app/api/api.dart';
import 'package:iurc_mobile_app/models/models.dart';

class UserRepository {
  final Api _api = Api();

  Future<User> fetchAccountUser() async {
    Response response = await _api.dio.get("/user/me");

    return User.fromJson(response.data);
  }

  Future<User> fetchUser({required int id}) async {
    Response response = await _api.dio.get("/user/$id");

    return User.fromJson(response.data);
  }
}
