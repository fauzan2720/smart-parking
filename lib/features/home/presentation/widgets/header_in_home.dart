import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';
import 'package:smart_parking/features/home/presentation/widgets/button_in_home.dart';
import 'package:smart_parking/features/vehicle/presentation/pages/vehicle_page.dart';

class HeaderInHome extends StatelessWidget {
  const HeaderInHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.primary, vertical: 20.0),
      color: AppColors.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const ImageIcon(
                AppIcons.saldo,
                size: 20.0,
                color: AppColors.white,
              ),
              5.0.width,
              Text(
                20000.currencyFormatRp,
                style: const TextStyle(
                  color: AppColors.white,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () => context.push(const VehiclePage()),
                child: Row(
                  children: [
                    const Text(
                      "P 5937 GF",
                      style: TextStyle(
                        color: AppColors.white,
                      ),
                    ),
                    5.0.width,
                    const ImageIcon(
                      AppIcons.add,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
          15.0.height,
          const Text(
            "Haii, Fauzan",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FW.medium,
              color: AppColors.white,
            ),
          ),
          const Text(
            "Ayo parkir dengan aman!",
            style: TextStyle(
              color: AppColors.white,
            ),
          ),
          35.0.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonInHome(
                label: 'Isi Saldo',
                icon: AppIcons.saldo,
                onPressed: () {},
              ),
              ButtonInHome(
                label: 'Lokasi',
                icon: AppIcons.parking,
                onPressed: () {},
              ),
              ButtonInHome(
                label: 'QR Code',
                icon: AppIcons.qrcode,
                onPressed: () {},
              ),
              ButtonInHome(
                label: 'Bayar',
                icon: AppIcons.scanQrcode,
                onPressed: () {},
              ),
            ],
          ),
          10.0.height,
        ],
      ),
    );
  }
}
