import 'package:flutter/material.dart';

import '../../../../core.dart';
import '../../../auth/presentation/pages/pin_page.dart';
import '../widgets/parking_address_widget.dart';
import '../widgets/parking_in_out_widget.dart';
import '../widgets/parking_info_widget.dart';
import 'pay_page.dart';
import 'payment_method.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiket Parkir'),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.primary, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ParkingInfoWidget(),
            20.0.height,
            const Divider(
              color: AppColors.grey,
            ),
            20.0.height,
            ParkingInOutWidget(
              onScanOutTap: () => context.push(PayPage(
                onDetect: (value) {
                  'Barcode found! $value'.infoBar(context);
                  context.pushAndRemoveUntil(
                      const TicketPage(), (route) => route.isFirst);
                },
              )),
            ),
            20.0.height,
            const Divider(
              color: AppColors.grey,
            ),
            20.0.height,
            const ParkingAddressWidget(),
            20.0.height,
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.primary),
        child: MediaQuery.of(context).orientation == Orientation.portrait
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  10.0.height,
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('Saldo saat ini ${20000.currencyFormatRp}'),
                  ),
                  4.0.height,
                  SmartFormButton(
                    text: 'Bayar Sekarang | ${5000.currencyFormatRp}',
                    onPressed: () async {
                      final bool pinSuccess =
                          await context.push<bool>(const PinPage()) ?? false;

                      if (pinSuccess && context.mounted) {
                        context.popToRoot();
                      }
                    },
                  ),
                  10.0.height,
                  SmartFormOutlinedButton(
                    text: 'Metode Pembayaran Lain',
                    onPressed: () => context.push(const PaymentMethod()),
                  ),
                  40.0.height,
                ],
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  10.0.height,
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('Saldo saat ini ${20000.currencyFormatRp}'),
                  ),
                  4.0.height,
                  Row(
                    children: [
                      Flexible(
                        child: SmartFormButton(
                          text: 'Bayar Sekarang | ${5000.currencyFormatRp}',
                          onPressed: () async {
                            final bool pinSuccess =
                                await context.push<bool>(const PinPage()) ??
                                    false;

                            if (pinSuccess && context.mounted) {
                              context.popToRoot();
                            }
                          },
                        ),
                      ),
                      10.0.width,
                      Flexible(
                        child: SmartFormOutlinedButton(
                          text: 'Metode Pembayaran Lain',
                          onPressed: () => context.push(const PaymentMethod()),
                        ),
                      ),
                    ],
                  ),
                  20.0.height,
                ],
              ),
      ),
    );
  }
}
