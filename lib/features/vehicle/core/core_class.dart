import 'vehicle_bloc_providers.dart';
import 'vehicle_dependency.dart';

class Vehicle {
  const Vehicle._();

  static void injection() => VehicleDepedency.init();
  static final blocProviders = VehicleBlocProviders.init;
}
