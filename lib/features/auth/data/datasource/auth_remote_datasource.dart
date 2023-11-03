import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'auth_remote_datasource.g.dart';

@RestApi()
abstract class AuthRemoteDatasource {
  factory AuthRemoteDatasource(Dio dio, {required String baseUrl}) =
      _AuthRemoteDatasource;
  @POST('login')
  Future<bool> login({
    @Field('no_telp') required String phoneNumber,
    @Field('password') required String password,
  });
}
