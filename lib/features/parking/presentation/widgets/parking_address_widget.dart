import 'package:flutter/material.dart';
import '../../../../core.dart';

class ParkingAddressWidget extends StatelessWidget {
  const ParkingAddressWidget({super.key});

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
                'Alamat Parkir Anda',
                style: TextStyle(
                  fontSize: 12.0,
                  color: AppColors.grey,
                ),
              ),
              4.0.height,
              const Text(
                'Lippo Plaza Jember',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FW.medium,
                ),
              ),
              4.0.height,
              const Text(
                'Jl. Gajah Mada No.106, Kb. Kidul, Jember Kidul, Kec. Kaliwates, Kabupaten Jember, Jawa Timur 68131',
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.radius),
            child: Image.network(
              'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/bolasport/medium_d96dba2be873937c97a40ab362f0a28b.jpg',
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
