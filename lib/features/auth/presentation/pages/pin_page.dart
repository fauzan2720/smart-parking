import 'package:flutter/material.dart';
import '../../../../core.dart';

class PinPage extends StatefulWidget {
  final String appBarTitle;
  final String buttonLabel;

  const PinPage({
    super.key,
    this.appBarTitle = 'Konfirmasi',
    this.buttonLabel = 'Konfirmasi Sekarang',
  });

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController pinController = TextEditingController();

  @override
  void dispose() {
    pinController.dispose();
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
        child: ListView(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.primary, vertical: 30.0),
          children: [
            SmartFormInputPIN(
              controller: pinController,
            ),
            25.0.height,
            SmartFormButton(
              text: widget.buttonLabel,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  context.pop(true);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
