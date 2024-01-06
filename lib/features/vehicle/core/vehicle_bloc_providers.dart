import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/injector.dart';
import '../presentation/managers/managers.dart';

class VehicleBlocProviders {
  const VehicleBlocProviders._();

  static final List<BlocProvider> init = [
    BlocProvider<VehicleBloc>(create: (_) => locator()),
  ];
}
