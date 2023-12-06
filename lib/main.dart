import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app.dart';
import 'core/utils/app_bloc_observer.dart';
import 'core/utils/injector.dart' as di;

const bool isProduction = bool.fromEnvironment('dart.vm.product');

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();

  // Set up chucker
  if (!isProduction) {
    ChuckerFlutter.showOnRelease = true;
  }

  await initializeDateFormatting('id_ID', null);
  Bloc.observer = AppBlocObserver();
  runApp(const App());
}
