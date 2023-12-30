import 'package:fpdart/fpdart.dart';

import '../../../../core.dart';
import '../models/models.dart';

abstract class ParkingRepository {
  Future<Either<Failure, List<ExploreParkingModel>>> getExploreParkings();
}
