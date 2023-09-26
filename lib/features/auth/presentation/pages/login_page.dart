import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';
import 'package:smart_parking/features/auth/presentation/pages/register_page.dart';
import 'package:smart_parking/features/auth/presentation/widgets/divider_text.dart';
import 'package:smart_parking/features/home/presentation/pages/main_page.dart';

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
                  hint: "Nomor Telepon",
                  icon: AppIcons.phone,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nomor telepon masih kosong";
                    } else if (value.isValidPhoneNumber()) {
                      return "Nomor Telepon tidak valid";
                    } else {
                      return null;
                    }
                  },
                ),
                20.0.height,
                SmartFormInput(
                  controller: passwordController,
                  hint: "Kata Sandi",
                  icon: AppIcons.password,
                  isPassword: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Kata sandi masih kosong";
                    } else if (value.length < 6) {
                      return "Kata sandi terdiri dari minimal 6 karakter";
                    } else {
                      return null;
                    }
                  },
                ),
                40.0.height,
                SmartFormButton(
                  text: "Masuk",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      "Yeay! Login berhasil".succeedBar(context);
                      context.pushAndRemoveUntil(
                          const MainPage(), (route) => false);
                    }
                  },
                ),
                30.0.height,
                const DividerText(text: "atau"),
                30.0.height,
                SmartFormOutlinedButton(
                  text: "Buat Akun Baru",
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
