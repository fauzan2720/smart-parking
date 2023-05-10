import 'package:flutter/material.dart';
import 'package:smart_parking/app.dart';
import 'package:smart_parking/core/utils/injector.dart' as di;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const App());
}
