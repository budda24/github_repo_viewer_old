// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/services.dart';
import 'package:oauth2/oauth2.dart';

import 'package:repo_viewer/auth/infrastructure/credential_storage/credentials_storage.dart';

class GithubAuthenticator {
  final CredentialsStorage _credentialsStorage;

  GithubAuthenticator(this._credentialsStorage);

  Future<Credentials?> getSignInCredentials() async {
    try {
      final storageCredentials = await _credentialsStorage.read();
      if (storageCredentials != null) {
        if (storageCredentials.canRefresh && storageCredentials.isExpired) {
          //TODO: refresh token
        }
      }
      return storageCredentials;
    } on PlatformException {
      return null;
    }
  }

  Future<bool> isSignIn() =>
      getSignInCredentials().then((credentials) => credentials != null);
}
