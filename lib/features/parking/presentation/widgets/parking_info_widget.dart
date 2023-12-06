import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../../../core.dart';
import '../pages/qr_code_page.dart';

class ParkingInfoWidget extends StatelessWidget {
  const ParkingInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Lokasi Parkir Anda',
                style: TextStyle(
                  fontSize: 12.0,
                  color: AppColors.grey,
                ),
              ),
              4.0.height,
              const Text(
                'A-2',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FW.medium,
                ),
              ),
              15.0.height,
              const Text(
                'Nomor Kendaraan Anda',
                style: TextStyle(
                  fontSize: 12.0,
                  color: AppColors.grey,
                ),
              ),
              4.0.height,
              const Text(
                'P 2020 GG',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FW.medium,
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: InkWell(
            onTap: () => context.push(const QrCodePage('1234567890')),
            child: Hero(
              tag: '1234567890',
              child: QrImage(
                data: '1234567890',
                version: QrVersions.auto,
                size: 120.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
