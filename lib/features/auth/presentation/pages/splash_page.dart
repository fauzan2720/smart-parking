import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';
import 'package:smart_parking/features/auth/presentation/pages/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.primary, vertical: 50.0),
        child: Column(
          children: [
            Image.asset(AppImages.splash),
            28.0.height,
            const Text(
              "Solusi Parkir Tanpa Kontak\nFisik Dengan Petugas",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FW.medium,
                color: AppColors.primary,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            SmartFormOutlinedButton(
              text: "Mulai",
              onPressed: () => context.pushReplacement(const LoginPage()),
            ),
          ],
        ),
      ),
    );
  }
}
