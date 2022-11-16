import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_viewer/auth/domain/auth_faliure.dart';
import 'package:repo_viewer/auth/infrastructure/github_autheticate.dart';
part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = _Initial;
  const factory AuthState.unathenticated() = _Unathenticated;
  const factory AuthState.athenticated() = _Athenticated;
  const factory AuthState.faliure(AuthFailure faliure) = _Faliure;
}

typedef AuthUriCallBack = Future<Uri> Function(Uri authorizationUri);

class AuthNotifier extends StateNotifier<AuthState> {
  final GithubAuthenticator _githubAuthenticator;
  AuthNotifier(this._githubAuthenticator) : super(const AuthState.initial());

  Future<void> checkAndUpdateAuthState() async {
    state = await _githubAuthenticator.isSignIn()
        ? const AuthState.athenticated()
        : const AuthState.unathenticated();
  }

  Future<void> sihIn(AuthUriCallBack authotizationCallBack) async {
    final grant = _githubAuthenticator.createGrant();
    final redirectUri = await authotizationCallBack(
      _githubAuthenticator.getAuthorizationUri(grant),
    );
    final faliureOrSuccess = await _githubAuthenticator
        .handleAuthorizationResponse(grant, redirectUri.queryParameters);

    state = faliureOrSuccess.fold(
      (l) => AuthState.faliure(l),
      (r) => const AuthState.athenticated(),
    );
    grant.close();
  }

  Future<void> signOut() async {
    final faliureOrSuccess = await _githubAuthenticator.logOut();
    faliureOrSuccess.fold(
        (l) => AuthState.faliure(l), (r) => const AuthState.unathenticated());
  }
}
