import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';
import 'package:smart_parking/features/parking/presentation/widgets/parking_address_widget.dart';
import 'package:smart_parking/features/parking/presentation/widgets/parking_in_out_widget.dart';
import 'package:smart_parking/features/parking/presentation/widgets/parking_info_widget.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tiket Parkir"),
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
              onScanOutTap: () {},
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            10.0.height,
            Align(
              alignment: Alignment.centerRight,
              child: Text("Saldo saat ini ${20000.currencyFormatRp}"),
            ),
            4.0.height,
            SmartFormButton(
              text: "Bayar Sekarang | ${5000.currencyFormatRp}",
              onPressed: () {},
            ),
            10.0.height,
            SmartFormOutlinedButton(
              text: "Metode Pembayaran Lain",
              onPressed: () {},
            ),
            40.0.height,
          ],
        ),
      ),
    );
  }
}
