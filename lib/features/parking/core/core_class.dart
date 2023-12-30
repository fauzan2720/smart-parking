import 'parking_bloc_providers.dart';
import 'parking_dependency.dart';

class Parking {
  const Parking._();

  static void injection() => ParkingDepedency.init();
  static final blocProviders = ParkingBlocProviders.init;
}
