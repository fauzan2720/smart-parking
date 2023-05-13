import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';

class ParkingInOutWidget extends StatelessWidget {
  final void Function()? onScanOutTap;

  const ParkingInOutWidget({
    super.key,
    required this.onScanOutTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Masuk",
                style: TextStyle(
                  fontSize: 12.0,
                  color: AppColors.grey,
                ),
              ),
              4.0.height,
              const Text(
                "18:48:22",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FW.medium,
                ),
              ),
              4.0.height,
              const Text(
                "Jumat, 2021-09-03",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Keluar",
                style: TextStyle(
                  fontSize: 12.0,
                  color: AppColors.grey,
                ),
              ),
              4.0.height,
              InkWell(
                onTap: onScanOutTap,
                child: const Text(
                  "Silahkan scan",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FW.medium,
                    color: AppColors.primary,
                  ),
                ),
              ),
              // const Text(
              //   "18:08:42",
              //   style: TextStyle(
              //     fontSize: 18.0,
              //     fontWeight: FW.medium,
              //   ),
              // ),
              // 4.0.height,
              // const Text(
              //   "Jumat, 2021-09-03",
              //   style: TextStyle(
              //     fontSize: 12.0,
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}