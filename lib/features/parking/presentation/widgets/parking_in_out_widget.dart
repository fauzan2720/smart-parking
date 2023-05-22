import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';
import 'package:smart_parking/core/extensions/date_time_ext.dart';

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
              Text(
                DateTime(2023, 5, 15, 10, 30).toFormattedTime(),
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FW.medium,
                ),
              ),
              4.0.height,
              Text(
                DateTime(2023, 5, 15, 10, 30).toFormattedString(),
                style: const TextStyle(
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
              // Text(
              //   DateTime(2023, 5, 15, 10, 30).toFormattedTime(),
              //   style: const TextStyle(
              //     fontSize: 18.0,
              //     fontWeight: FW.medium,
              //   ),
              // ),
              // 4.0.height,
              // Text(
              //   DateTime(2023, 5, 15, 10, 30).toFormattedString(),
              //   style: const TextStyle(
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
