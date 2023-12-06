import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core.dart';
import 'features/auth/presentation/pages/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: BlocProviders.state,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Smart Parking',
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
        home: const SplashPage(),
      ),
    );
  }
}
