import 'package:flutter/material.dart';
import '../../../../core.dart';
import 'login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? ListView(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.primary, vertical: 50.0),
              children: [
                Image.asset(AppImages.splash),
                28.0.height,
                const Text(
                  'Solusi Parkir Tanpa Kontak\nFisik Dengan Petugas',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FW.medium,
                    color: AppColors.primary,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.primary, vertical: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.splash),
                  28.0.width,
                  const Text(
                    'Solusi Parkir Tanpa Kontak\nFisik Dengan Petugas',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FW.medium,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(
            AppSizes.primary, AppSizes.primary, AppSizes.primary, 50.0),
        child: SmartFormOutlinedButton(
          text: 'Mulai',
          onPressed: () => context.pushReplacement(const LoginPage()),
        ),
      ),
    );
  }
}
