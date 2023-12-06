part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String phoneNumber,
    required String password,
  }) = _Login;
  const factory AuthEvent.getData() = _GetData;
  const factory AuthEvent.logout() = _Logout;
}
