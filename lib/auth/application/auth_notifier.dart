import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = _Initial;
  const factory AuthState.unathenticated() = _Unathenticated;
  const factory AuthState.athenticated() = _Athenticated;
  const factory AuthState.faliure() = _Faliure;
}
