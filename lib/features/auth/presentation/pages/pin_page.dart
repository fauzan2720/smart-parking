import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';
import 'package:smart_parking/features/home/presentation/pages/main_page.dart';

class PinPage extends StatefulWidget {
  final String appBarTitle;

  const PinPage({
    super.key,
    this.appBarTitle = "Konfirmasi",
  });

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController pinController = TextEditingController();

  @override
  void dispose() {
    pinController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appBarTitle),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.primary, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmartFormInputPIN(
                controller: pinController,
              ),
              25.0.height,
              SmartFormButton(
                text: "Daftar Sekarang",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    "Yeay! Register berhasil".succeedBar(context);
                    context.pushAndRemoveUntil(
                        const MainPage(), (route) => false);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}