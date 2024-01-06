import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/models/api_base_response.dart';
import '../models/models.dart';

part 'vehicle_remote_datasource.g.dart';

@RestApi()
abstract class VehicleRemoteDatasource {
  factory VehicleRemoteDatasource(Dio dio, {required String baseUrl}) =
      _VehicleRemoteDatasource;

  @GET('kendaraan')
  Future<ApiBaseResponse<List<VehicleResponseModel>>> getVehicles();
}
