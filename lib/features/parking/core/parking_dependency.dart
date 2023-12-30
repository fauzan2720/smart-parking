import '../../../core/utils/injector.dart';
import '../data/repositories/repositories.dart';
import '../domain/repositories/repositories.dart';
import '../presentation/managers/managers.dart';

class ParkingDepedency {
  const ParkingDepedency._();

  static void init() {
    /// [STATE_MANAGEMENT]
    locator.registerFactory(() => ExploreParkingBloc(locator()));

    /// [REPOSITORY]
    locator.registerLazySingleton<ParkingRepository>(
        () => ParkingRepositoryImpl());
  }
}
