import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/models/api_base_response.dart';
import '../models/models.dart';

part 'auth_remote_datasource.g.dart';

@RestApi()
abstract class AuthRemoteDatasource {
  factory AuthRemoteDatasource(Dio dio, {required String baseUrl}) =
      _AuthRemoteDatasource;
  @POST('login')
  Future<ApiBaseResponse<List<AuthResponseModel>>> login({
    @Field('no_telp') required String phoneNumber,
    @Field('password') required String password,
  });

  @GET('show')
  Future<ApiBaseResponse<List<UserResponseModel>>> show();

  @POST('logout')
  Future<String> logout();
}
