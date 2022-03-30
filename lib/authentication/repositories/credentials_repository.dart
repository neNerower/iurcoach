import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../models/credentials.dart';

class CredentialsRepository {
  final _storage = FlutterSecureStorage();
  Credentials? _credentials;

  Future<Credentials?> getCredentials() async {
    if (_credentials != null)
      return _credentials;

    final accessToken = await _storage.read(key: 'access_token');
    final refreshToken = await _storage.read(key: 'refresh_token');
    _credentials = Credentials(accessToken ?? "", refreshToken ?? "");

    return _credentials;
  }
}