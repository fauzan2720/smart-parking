import 'package:fpdart/fpdart.dart';

import '../../../../core.dart';
import '../models/models.dart';

abstract class VehicleRepository {
  Future<Either<Failure, List<VehicleModel>>> getVehicles();
}
