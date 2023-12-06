import 'package:flutter/material.dart';
import '../../../../core.dart';
import '../../../auth/presentation/pages/splash_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSizes.primary),
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              padding:
                  const EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
              height: 160.0,
              width: context.fullWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.radius),
                boxShadow: AppBoxShadow.card,
                color: AppColors.white,
              ),
              child: Column(
                children: [
                  const Text(
                    'Fauzan Abdillah',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FW.bold,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  5.0.height,
                  const Text(
                    'fauzan.abdillah2705@gmail.com',
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.network(
                  'https://ui-avatars.com/api/?name=Fauzan Abdillah',
                  height: 100.0,
                  width: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        SmartFormButton(
          text: 'Logout',
          onPressed: () =>
              context.pushAndRemoveUntil(const SplashPage(), (route) => false),
          backgroundColor: AppColors.red,
        ),
      ],
    );
  }
}
