import 'dart:io';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

/// [Failure] is Used to handling error,
/// return this class when an exception raised
abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class AuthorityFailure extends Failure {
  const AuthorityFailure([String? message]) : super(message ?? '');
}

class RequestFailure extends Failure {
  const RequestFailure([String? message]) : super(message ?? '');
}

class DatabaseFailure extends Failure {
  const DatabaseFailure([String? message]) : super(message ?? '');
}

class ServerFailure extends Failure {
  const ServerFailure([String? message]) : super(message ?? '');
}

class ConnectionFailure extends Failure {
  const ConnectionFailure([String? message]) : super(message ?? '');
}

Failure getUnexpectedFailure(DioException error) {
  if (error.type == DioExceptionType.unknown &&
      error.error is SocketException) {
    return const ConnectionFailure();
  } else if (error.type == DioExceptionType.badResponse) {
    final response = error.response!;
    final statusCode = response.statusCode!;
    if (statusCode == 401) {
      return const AuthorityFailure();
    } else if (statusCode == 400 || statusCode == 409) {
      return const RequestFailure();
    } else if (statusCode == 404 || statusCode >= 500) {
      return const ServerFailure();
    } else {
      return const ServerFailure();
    }
  } else {
    return const ServerFailure();
  }
}
