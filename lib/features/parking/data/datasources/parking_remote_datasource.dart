import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/models/api_base_response.dart';
import '../models/models.dart';

part 'parking_remote_datasource.g.dart';

@RestApi()
abstract class ParkingRemoteDatasource {
  factory ParkingRemoteDatasource(Dio dio, {required String baseUrl}) =
      _ParkingRemoteDatasource;

  @GET('parkir')
  Future<ApiBaseResponse<List<ExploreResponseModel>>> getExploreParkings();
}
