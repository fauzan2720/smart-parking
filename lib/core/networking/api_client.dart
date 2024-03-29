import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_client_interpector.dart';

const baseUrl = 'https://fozan.shop/api/';

class ApiClient {
  ApiClient({
    this.useToken,
    this.useBasicAuth,
    this.customAuthParam,
    this.contentType = true,
  });

  final bool? useToken;
  final bool? useBasicAuth;
  final String? customAuthParam;
  final bool contentType;

  Dio get instance {
    return Dio(BaseOptions(
      contentType: contentType ? 'Application/json' : null,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    ))
      ..interceptors.add(ApiClientInterceptor(
        useBasicAuth: useBasicAuth,
        useToken: useToken,
        customAuthParam: customAuthParam,
      ))
      ..interceptors.add(ChuckerDioInterceptor())
      ..interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ));
  }
}
