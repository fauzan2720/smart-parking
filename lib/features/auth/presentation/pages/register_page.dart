import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';
import 'package:smart_parking/features/auth/presentation/pages/pin_page.dart';
import 'package:smart_parking/features/auth/presentation/widgets/divider_text.dart';
import 'package:smart_parking/features/home/presentation/pages/main_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController =
      TextEditingController();
  final TextEditingController identityNumberController =
      TextEditingController();
  final TextEditingController identityImageController = TextEditingController();

  @override
  void dispose() {
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    passwordController.clear();
    passwordConfirmController.clear();
    identityNumberController.clear();
    identityImageController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.secondary),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                70.0.height,
                const Text(
                  "Buat Akun Baru",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FW.medium,
                    fontSize: 24.0,
                  ),
                ),
                30.0.height,
                SmartFormInput(
                  controller: nameController,
                  hint: "Nama Lengkap",
                  icon: AppIcons.user,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nama kamu masih kosong";
                    } else {
                      return null;
                    }
                  },
                ),
                20.0.height,
                SmartFormInput(
                  controller: emailController,
                  hint: "Email",
                  icon: AppIcons.email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email masih kosong";
                    } else if (value.isValidEmail()) {
                      return "Email tidak valid";
                    } else {
                      return null;
                    }
                  },
                ),
                20.0.height,
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
                      return "Kata sandi terlalu lemah";
                    } else if (value != passwordConfirmController.text) {
                      return "Kata sandi tidak sama";
                    } else {
                      return null;
                    }
                  },
                ),
                20.0.height,
                SmartFormInput(
                  controller: passwordConfirmController,
                  hint: "Konfirmasi Kata Sandi",
                  icon: AppIcons.password,
                  isPassword: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Kata sandi masih kosong";
                    } else if (value != passwordController.text) {
                      return "Kata sandi tidak sama";
                    } else {
                      return null;
                    }
                  },
                ),
                20.0.height,
                SmartFormInput(
                  controller: identityNumberController,
                  hint: "Nomor Identitas",
                  icon: AppIcons.identity,
                  keyboardType: TextInputType.phone,
                  helperText: "KTP - Kartu Pelajar - Kartu Mahasiswa",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nomor identitas masih kosong";
                    } else {
                      return null;
                    }
                  },
                ),
                20.0.height,
                SmartFormUpload(
                  controller: identityImageController,
                  hint: "Upload Identitas",
                  icon: AppIcons.identity,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Foto identitas masih kosong";
                    } else {
                      return null;
                    }
                  },
                ),
                40.0.height,
                SmartFormButton(
                  text: "Lanjutkan",
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      final bool pinSuccess =
                          await context.push<bool>(const PinPage(
                                appBarTitle: "Buat Pin",
                                buttonLabel: "Daftar Sekarang",
                              )) ??
                              false;

                      if (pinSuccess && context.mounted) {
                        "Yeay! Register berhasil".succeedBar(context);
                        context.pushAndRemoveUntil(
                            const MainPage(), (route) => false);
                      }
                    }
                  },
                ),
                30.0.height,
                const DividerText(text: "atau"),
                30.0.height,
                SmartFormOutlinedButton(
                  text: "Masuk",
                  onPressed: () => context.pop(),
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
