import 'dart:async';

import 'package:dio/dio.dart';

import '../db/user_secure_db.dart';

class ApiClientInterceptor extends Interceptor {
  final bool? useToken;
  final bool? useBasicAuth;
  final String? customAuthParam;

  ApiClientInterceptor({
    this.useToken,
    this.useBasicAuth,
    this.customAuthParam,
  });
  @override
  FutureOr<dynamic> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (useToken ?? false) {
      final idToken = await UserSecureDb().token ?? '';
      options.headers[customAuthParam ?? 'Authorization'] = idToken;
    }

    return handler.next(options);
  }
}
