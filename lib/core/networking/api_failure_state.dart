import 'api_failure.dart';

enum ApiFailureState {
  invalid,
  disconnected,
  unauthorized,
  error;

  bool get isInvalid => this == ApiFailureState.invalid;
  bool get isDisconnected => this == ApiFailureState.disconnected;
  bool get isUnauthorized => this == ApiFailureState.unauthorized;
  bool get isError => this == ApiFailureState.error;
}

ApiFailureState getApiFailureState(Failure failure) {
  if (failure is RequestFailure) {
    return ApiFailureState.invalid;
  } else if (failure is AuthorityFailure) {
    return ApiFailureState.unauthorized;
  } else if (failure is ConnectionFailure) {
    return ApiFailureState.disconnected;
  } else if (failure is ServerFailure) {
    return ApiFailureState.error;
  } else {
    return ApiFailureState.error;
  }
}
