import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app.dart';
import 'core/utils/app_bloc_observer.dart';
import 'core/utils/injector.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  await initializeDateFormatting('id_ID', null);
  Bloc.observer = AppBlocObserver();
  runApp(const App());
}
