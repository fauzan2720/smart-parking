import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';

class WidgetsDocumentation extends StatelessWidget {
  const WidgetsDocumentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SmartFormInput(
              hint: "Username",
              icon: AppIcons.user,
            ),
            20.0.height,
            const SmartFormInput(
              hint: "Password",
              icon: AppIcons.password,
              isPassword: true,
            ),
            20.0.height,
            const SmartFormInputPIN(),
            40.0.height,
            SmartFormButton(
              text: "Mulai",
              onPressed: () {},
            ),
            20.0.height,
            SmartFormOutlinedButton(
              text: "Mulai",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
