import 'package:flutter/material.dart';

import '../../../../core.dart';
import '../../../parking/presentation/pages/parking_now_page.dart';
import '../../../parking/presentation/pages/pay_page.dart';
import '../../../parking/presentation/widgets/history_card.dart';
import '../../../profile/presentation/pages/top_up_saldo_page.dart';
import '../../../vehicle/presentation/pages/vehicle_page.dart';
import '../widgets/header_in_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HeaderInHome(
          onTopUpSaldoTap: () => context.push(const TopUpSaldoPage()),
          onParkingTap: () => context.push(const ParkingNowPage()),
          onVehicleTap: () => context.push(const VehiclePage()),
          onPayTap: () => context.push(PayPage(
            onDetect: (value) {
              'Barcode found! $value'.infoBar(context);
              context.popToRoot();
            },
          )),
        ),
        15.0.height,
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.primary),
          child: Text(
            'Anda sekarang sedang parkir',
            style: TextStyle(
              fontWeight: FW.semibold,
              fontSize: 16.0,
            ),
          ),
        ),
        20.0.height,
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.primary),
          itemCount: 1,
          itemBuilder: (context, index) => const HistoryCard(),
        ),
        30.0.height,
      ],
    );
  }
}
