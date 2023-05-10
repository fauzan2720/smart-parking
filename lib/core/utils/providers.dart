part of 'package:smart_parking/core.dart';

class BlocProviders {
  static final List<BlocProvider> state = [
    BlocProvider<PageBloc>(create: (context) => di.locator<PageBloc>()),
  ];
}
