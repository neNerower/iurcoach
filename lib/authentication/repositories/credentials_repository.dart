import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../models/credentials.dart';

class CredentialsRepository {
  final _storage = FlutterSecureStorage();

  Future<Credentials?> getCredentials() async {
    final accessToken = await _storage.read(key: 'access_token');
    final refreshToken = await _storage.read(key: 'refresh_token');

    if (accessToken != null && refreshToken != null) {
      return Credentials(accessToken, refreshToken);
    }

    return null;
  }
}