import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core.dart';
import '../../../home/presentation/pages/main_page.dart';
import '../managers/auth/auth_bloc.dart';
import 'splash_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AuthBloc>().add(const AuthEvent.getData());
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () => context.showLoadingDialog(),
            success: (data) {
              context.dismissLoadingDialog();
              context.pushReplacement(const MainPage());
            },
            error: (state, message) {
              context.dismissLoadingDialog();
              switch (state) {
                case ApiFailureState.unauthorized:
                  context.pushReplacement(const SplashPage());
                  break;
                case ApiFailureState.invalid:
                case ApiFailureState.disconnected:
                case ApiFailureState.error:
                default:
                  context.pushReplacement(const SplashPage());
                  break;
              }
            },
          );
        },
        child: Center(
          child: Image.asset(
            AppImages.logo,
            width: context.fullWidth / 2,
          ),
        ),
      ),
    );
  }
}
