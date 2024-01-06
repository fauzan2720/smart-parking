import '../../../core/utils/injector.dart';
import '../data/repositories/repositories.dart';
import '../domain/repositories/repositories.dart';
import '../presentation/managers/managers.dart';

class VehicleDepedency {
  const VehicleDepedency._();

  static void init() {
    /// [STATE_MANAGEMENT]
    locator.registerFactory(() => VehicleBloc(locator()));

    /// [REPOSITORY]
    locator.registerLazySingleton<VehicleRepository>(
        () => VehicleRepositoryImpl());
  }
}
