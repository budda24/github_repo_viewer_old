import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_viewer/auth/application/auth_notifier.dart';
import 'package:repo_viewer/auth/infrastructure/credential_storage/secure_credential_storage.dart';
import 'package:repo_viewer/auth/infrastructure/github_autheticate.dart';

final flutterSecureStorageProvider =
    Provider((ref) => const FlutterSecureStorage());
final dioProvider = Provider((ref) => Dio());
final credentialsStorageProvider = Provider(
  (ref) => SecureCredentialStorage(
    ref.watch(flutterSecureStorageProvider),
  ),
);
final githubAuthenticatorProvider = Provider(
  (ref) => GithubAuthenticator(
    ref.watch(credentialsStorageProvider),
    ref.watch(dioProvider),
  ),
);
final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.watch(githubAuthenticatorProvider),
  ),
);
