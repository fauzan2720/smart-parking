import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';

class PinPage extends StatefulWidget {
  final String appBarTitle;
  final String buttonLabel;
  final void Function(String value) onPressed;

  const PinPage({
    super.key,
    this.appBarTitle = "Konfirmasi",
    this.buttonLabel = "Konfirmasi Sekarang",
    required this.onPressed,
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
                text: widget.buttonLabel,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    widget.onPressed(pinController.text);
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
