import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../models/tokens.dart';

class TokensRepository {
  final _storage = FlutterSecureStorage();

  Future<Tokens?> getTokens() async {
    final accessToken = await _storage.read(key: 'access_token');
    final refreshToken = await _storage.read(key: 'refresh_token');

    if (accessToken != null && refreshToken != null) {
      return Tokens(accessToken, refreshToken);
    }

    return null;
  }
}