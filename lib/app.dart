import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'core.dart';
import 'features/auth/auth.dart';
import 'features/auth/presentation/pages/splash_screen.dart';
import 'features/parking/parking.dart';
import 'features/vehicle/vehicle.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        ...Auth.blocProviders,
        ...Parking.blocProviders,
        ...Vehicle.blocProviders,
      ],
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
        builder: EasyLoading.init(),
        navigatorObservers: [ChuckerFlutter.navigatorObserver],
        home: const SplashScreen(),
      ),
    );
  }
}
