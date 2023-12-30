import 'package:flutter/material.dart';
import '../../../../core.dart';
import '../../domain/models/parking_area.dart';

class ParkingAreaCard extends StatelessWidget {
  final ParkingArea parkingArea;

  const ParkingAreaCard({
    super.key,
    required this.parkingArea,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: parkingArea.available ? null : AppColors.red,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        border:
            parkingArea.available ? Border.all(color: AppColors.border) : null,
      ),
      child: Center(
        child: Text(
          parkingArea.location,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FW.medium,
            color: parkingArea.available ? AppColors.black : AppColors.white,
          ),
        ),
      ),
    );
  }
}
