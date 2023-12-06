import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core.dart';
import '../../../auth/presentation/managers/auth/auth_bloc.dart';
import '../../../auth/presentation/pages/splash_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(AppSizes.primary),
        children: [
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) => state.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              success: (data) => Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50.0),
                    padding: const EdgeInsets.only(
                        top: 70.0, left: 20.0, right: 20.0),
                    height: 160.0,
                    width: context.fullWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSizes.radius),
                      boxShadow: AppBoxShadow.card,
                      color: AppColors.white,
                    ),
                    child: Column(
                      children: [
                        Text(
                          data.namaLengkap,
                          style: const TextStyle(
                            fontSize: 22.0,
                            fontWeight: FW.bold,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        5.0.height,
                        Text(
                          data.email,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.network(
                      'https://ui-avatars.com/api/?name=${data.namaLengkap}',
                      height: 100.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.primary),
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              loading: () {
                context.showLoadingDialog();
              },
              initial: () {
                context.dismissLoadingDialog();
                'Logout berhasil'.succeedBar(context);
                context.pushAndRemoveUntil(
                    const SplashPage(), (route) => false);
              },
              error: (state, message) {
                context.dismissLoadingDialog();
                message.failedBar(context);
              },
            );
          },
          child: SmartFormButton(
            text: 'Logout',
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.logout());
            },
            backgroundColor: AppColors.red,
          ),
        ),
      ),
    );
  }
}
