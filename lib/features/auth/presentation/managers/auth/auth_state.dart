part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success({
    required UserModel data,
  }) = _Success;
  const factory AuthState.error({
    required ApiFailureState state,
    required String message,
  }) = _Error;
}
