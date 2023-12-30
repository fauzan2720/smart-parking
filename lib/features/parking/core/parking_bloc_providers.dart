import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/injector.dart';
import '../presentation/managers/managers.dart';

class ParkingBlocProviders {
  const ParkingBlocProviders._();

  static final List<BlocProvider> init = [
    BlocProvider<ExploreParkingBloc>(create: (_) => locator()),
  ];
}
