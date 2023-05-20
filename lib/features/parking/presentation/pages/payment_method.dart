import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parking/core.dart';
import 'package:smart_parking/features/auth/presentation/pages/pin_page.dart';
import 'package:smart_parking/features/home/presentation/bloc/page_bloc.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController pinController = TextEditingController();

  @override
  void dispose() {
    phoneController.clear();
    pinController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String? selectedOption;
    final List<String> paymentMethods = ["GoPay", "OvoPay", "Dana"];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pembayaran"),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(AppSizes.primary),
          children: [
            const Text("Pilih Metode Pembayaran Lain"),
            10.0.height,
            StatefulBuilder(
              builder: (context, changePaymentMethod) {
                return SingleChildScrollView(
                  controller: ScrollController(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: paymentMethods
                        .map((paymentMethod) => GestureDetector(
                              onTap: () {
                                selectedOption = paymentMethod;
                                changePaymentMethod(() {});
                              },
                              child: Row(
                                children: [
                                  Radio(
                                    value: paymentMethod,
                                    groupValue: selectedOption,
                                    onChanged: (value) {},
                                  ),
                                  Text(paymentMethod),
                                  20.0.width,
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                );
              },
            ),
            25.0.height,
            SmartFormInput(
              controller: phoneController,
              hint: "Masukkan Nomor Telepon",
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
            25.0.height,
            SmartFormInput(
              controller: pinController,
              hint: "Masukkan Pin",
              icon: AppIcons.plat,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.length != 6) {
                  return 'Pin terdiri dari 6 digit';
                } else {
                  return null;
                }
              },
            ),
            25.0.height,
            SmartFormButton(
              text: "Bayar Sekarang",
              onPressed: () async {
                if (selectedOption == null) {
                  "Pilih metode pembayaran".failedBar(context);
                } else if (formKey.currentState!.validate()) {
                  final bool pinSuccess =
                      await context.push<bool>(const PinPage()) ?? false;

                  if (pinSuccess && context.mounted) {
                    context.popToRoot();
                    context.read<PageBloc>().add(2);
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
