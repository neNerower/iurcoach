import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();
  final _storage = FlutterSecureStorage();

  final _dio = Dio(BaseOptions(
    baseUrl: "127.0.0.1:3002",
    connectTimeout: 5000,
    receiveTimeout: 3000,
  ));

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    Response response = await _dio.post("/login", data: {'username': username, 'password': password});
    if (response.statusCode == 200) {
      // Save jwt to secure storage
      await _storage.write(key: 'access_token', value: response.data['access_token']);
      await _storage.write(key: 'refresh_token', value: response.data['refresh_token']);

      () => _controller.add(AuthenticationStatus.authenticated);
    }
    // TODO: Throw exception if not succeeded
  }

  Future<void> logOut() async {
    // Removing jwt from secure storage
    await _storage.delete(key: 'access_token');
    await _storage.delete(key: 'refresh_token');

    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
