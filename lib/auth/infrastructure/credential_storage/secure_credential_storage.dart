import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:oauth2/src/credentials.dart';

import 'package:repo_viewer/auth/infrastructure/credential_storage/credentials_storage.dart';

class SecureCredentialStorage extends CredentialsStorage {
  final FlutterSecureStorage _storage;

  SecureCredentialStorage(this._storage);

  static const _key = 'oauth2_credentials';

  Credentials? _cachedCredentials;

  @override
  Future<Credentials?> read() async {
    if (_cachedCredentials != null) {
      return null;
    }
    final json = await _storage.read(key: _key);
    if (json == null) {
      return null;
    }
    try {
      return _cachedCredentials = Credentials.fromJson(json);
    } on FormatException {
      return null;
    }
  }

  @override
  Future<void> save(Credentials credentials) {
    _cachedCredentials = credentials;
    return _storage.write(key: 'credentials', value: credentials.toJson());
  }

  @override
  Future<void> cleare() {
    _cachedCredentials = null;
    return _storage.delete(key: 'credentials');
  }
}
