import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';
import 'package:smart_parking/core/widgets/documentation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.white,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: AppColors.primary,
            ),
      ),
      home: const WidgetsDocumentation(),
    );
  }
}
