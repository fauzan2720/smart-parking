import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/networking/networking.dart';
import '../../domain/models/explore_parking_model.dart';

import '../../domain/repositories/repositories.dart';
import '../datasources/datasources.dart';

class ParkingRepositoryImpl implements ParkingRepository {
  ParkingRemoteDatasource _remoteDatasource() {
    return ParkingRemoteDatasource(
      ApiClient(useToken: true).instance,
      baseUrl: baseUrl,
    );
  }

  @override
  Future<Either<Failure, List<ExploreParkingModel>>>
      getExploreParkings() async {
    try {
      final result = await _remoteDatasource().getExploreParkings();
      return Right(result.data!.map((e) => e.toDomain()).toList());
    } on DioException catch (e) {
      return Left(getUnexpectedFailure(e));
    } catch (e) {
      return Left(RequestFailure(e.toString()));
    }
  }
}
