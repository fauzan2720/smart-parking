import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core.dart';
import '../../../home/presentation/pages/main_page.dart';
import '../managers/managers.dart';
import '../widgets/divider_text.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.secondary, vertical: 50.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                50.0.height,
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? 50.0
                          : context.fullWidth / 3),
                  child: Image.asset(AppImages.logo),
                ),
                40.0.height,
                SmartFormInput(
                  controller: phoneController,
                  hint: 'Nomor Telepon',
                  icon: AppIcons.phone,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nomor telepon masih kosong';
                    } else if (value.isValidPhoneNumber()) {
                      return 'Nomor Telepon tidak valid';
                    } else {
                      return null;
                    }
                  },
                ),
                20.0.height,
                SmartFormInput(
                  controller: passwordController,
                  hint: 'Kata Sandi',
                  icon: AppIcons.password,
                  isPassword: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Kata sandi masih kosong';
                    } else if (value.length < 6) {
                      return 'Kata sandi terdiri dari minimal 6 karakter';
                    } else {
                      return null;
                    }
                  },
                ),
                40.0.height,
                BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      loading: () {
                        context.showLoadingDialog();
                      },
                      success: (data) {
                        context.dismissLoadingDialog();
                        'Yeay! Login berhasil'.succeedBar(context);
                        context.pushAndRemoveUntil(
                            const MainPage(), (route) => false);
                      },
                      error: (state, message) {
                        context.dismissLoadingDialog();
                        message.failedBar(context);
                      },
                    );
                  },
                  child: SmartFormButton(
                    text: 'Masuk',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<AuthBloc>().add(AuthEvent.login(
                              phoneNumber: phoneController.text,
                              password: passwordController.text,
                            ));
                      }
                    },
                  ),
                ),
                30.0.height,
                const DividerText(text: 'atau'),
                30.0.height,
                SmartFormOutlinedButton(
                  text: 'Buat Akun Baru',
                  onPressed: () => context.push(const RegisterPage()),
                ),
                50.0.height,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
