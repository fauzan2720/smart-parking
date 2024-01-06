import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/networking/networking.dart';
import '../../domain/models/models.dart';

import '../../domain/repositories/repositories.dart';
import '../datasources/datasources.dart';

class VehicleRepositoryImpl implements VehicleRepository {
  VehicleRemoteDatasource _remoteDatasource() {
    return VehicleRemoteDatasource(
      ApiClient(useToken: true).instance,
      baseUrl: baseUrl,
    );
  }

  @override
  Future<Either<Failure, List<VehicleModel>>> getVehicles() async {
    try {
      final result = await _remoteDatasource().getVehicles();
      return Right(result.data!.map((e) => e.toDomain()).toList());
    } on DioException catch (e) {
      return Left(getUnexpectedFailure(e));
    } catch (e) {
      return Left(RequestFailure(e.toString()));
    }
  }
}
