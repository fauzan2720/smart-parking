import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:smart_parking/app.dart';
import 'package:smart_parking/core/utils/injector.dart' as di;

import 'core/utils/app_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  await initializeDateFormatting('id_ID', null);
  Bloc.observer = AppBlocObserver();
  runApp(const App());
}
