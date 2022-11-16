// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:oauth2/oauth2.dart';
import 'package:repo_viewer/auth/domain/auth_faliure.dart';
import 'package:repo_viewer/auth/infrastructure/credential_storage/credentials_storage.dart';
import 'package:repo_viewer/core/infastructure/dio_extantion.dart';

import 'package:repo_viewer/core/shared/encoders.dart';

class GithubOAuthHttpClient extends http.BaseClient {
  final httpClient = http.Client();
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Accept'] = 'application/json';
    return httpClient.send(request);
  }
}

class GithubAuthenticator {
  final CredentialsStorage _credentialsStorage;
  final Dio _dio;

  GithubAuthenticator(this._credentialsStorage, this._dio);

  static final authorizationEndpoint =
      Uri.parse('http://example.com/oauth2/authorization');
  static final tokenEndpoint = Uri.parse('http://example.com/oauth2/token');
  static final redirectUrl = Uri.parse('http://localhost:3000/callback');
  static const revocationEndPoint =
      'https://api.github.com/user/applications/$clientId/grant';
  static const clientId = '63460641ec92cbd82318';
  static final secret = dotenv.get('GITHUB_SECRETE');
  static const scope = ['repo', 'read:user'];

  Future<Credentials?> getSignInCredentials() async {
    try {
      final storageCredentials = await _credentialsStorage.read();
      if (storageCredentials != null) {
        if (storageCredentials.canRefresh && storageCredentials.isExpired) {
          final faliureOrCredentials = refreshToken(storageCredentials);
          return faliureOrCredentials
              .then((value) => value.fold((l) => null, (r) => r));
        }
      }
      return storageCredentials;
    } on PlatformException {
      return null;
    }
  }

  Future<bool> isSignIn() =>
      getSignInCredentials().then((credentials) => credentials != null);

  AuthorizationCodeGrant createGrant() {
    return AuthorizationCodeGrant(
      clientId,
      authorizationEndpoint,
      tokenEndpoint,
      secret: secret,
      httpClient: GithubOAuthHttpClient(),
    );
  }

  Uri getAuthorizationUri(AuthorizationCodeGrant grant) {
    return grant.getAuthorizationUrl(redirectUrl, scopes: scope);
  }

  Future<Either<AuthFailure, Unit>> handleAuthorizationResponse(
    AuthorizationCodeGrant grant,
    Map<String, String> queryParamas,
  ) async {
    try {
      final client = await grant.handleAuthorizationResponse(queryParamas);
      await _credentialsStorage.save(client.credentials);
      return right(unit);
    } on FormatException {
      return left(const AuthFailure.server());
    } on AuthorizationException catch (e) {
      return left(AuthFailure.server(message: '${e.error}  ${e.description}'));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> logOut() async {
    final userNameAndPassword = stringToBase64.encode('$clientId:$secret');

    final accessToken = await _credentialsStorage
        .read()
        .then((credemtials) => credemtials?.accessToken);
    try {
      try {
        _dio.delete(
          revocationEndPoint,
          data: {'access_token': accessToken},
          options: Options(
            headers: {'Authorization': userNameAndPassword},
          ),
        );
      } on DioError catch (e) {
        if (e.isNoConnectionError) {
          print('no internet connection');
        }
      }

      await _credentialsStorage.cleare();
      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Credentials>> refreshToken(
    Credentials credentials,
  ) async {
    try {
      final refreshedCredentials = await credentials.refresh(
        identifier: clientId,
        httpClient: GithubOAuthHttpClient(),
        secret: secret,
      );
      await _credentialsStorage.save(refreshedCredentials);
      return right(refreshedCredentials);
    } on FormatException {
      return left(const AuthFailure.server());
    } on AuthorizationException catch (e) {
      left(AuthFailure.server(message: '${e.error} ${e.description}'));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
    throw const AuthFailure.storage();
  }
}
