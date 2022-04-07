import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:iurc_mobile_app/api/api.dart';
import 'package:iurc_mobile_app/models/models.dart';

const ACCESS_TOKEN = 'access_token';
const REFRESH_TOKEN = 'refresh_token';

class TokensRepository {
  final _api = Api();
  final _storage = FlutterSecureStorage();
  Tokens _tokens = Tokens.empty();

  TokensRepository._();
  static final _singleton = TokensRepository._();
  factory TokensRepository() => _singleton;

  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    _tokens = Tokens(accessToken, refreshToken);
    // Save tokens to secure storage
    await _storage.write(key: ACCESS_TOKEN, value: accessToken);
    await _storage.write(key: REFRESH_TOKEN, value: refreshToken);
  }

  Future<Tokens> getTokens() async {
    if (!_tokens.isEmpty) {
      return _tokens;
    }

    // Read tokens from secure storage
    final accessToken = await _storage.read(key: ACCESS_TOKEN);
    final refreshToken = await _storage.read(key: REFRESH_TOKEN);

    if (accessToken != null && refreshToken != null) {
      return Tokens(accessToken, refreshToken);
    }

    return Tokens.empty();
  }

  Future<void> deleteTokens() async {
    // Remove tokens from secure storage
    await _storage.delete(key: ACCESS_TOKEN);
    await _storage.delete(key: REFRESH_TOKEN);
    
    _tokens = Tokens.empty();
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    try {
      Response response = await _api.tokenDio.post(
        "/login",
        data: {'username': username, 'password': password},
      );
      // TODO: Use serializer to convert from JSON
      final String accessToken = response.data[ACCESS_TOKEN];
      final String refreshToken = response.data[REFRESH_TOKEN];

      await saveTokens(accessToken: accessToken, refreshToken: refreshToken);
    } on DioError catch (e) {
      throw e;
    } catch (_) {
      throw Exception("Login error !");
    }
  }

  Future<void> refreshTokens() async {
    Response response = await _api.tokenDio.get(
      '/token',
      options: Options(
        headers: {'Authorization': 'Bearer: ${_tokens.refreshToken}'},
      ),
    );

    saveTokens(
      accessToken: response.data[ACCESS_TOKEN],
      refreshToken: _tokens.refreshToken,
    );
  }
}
