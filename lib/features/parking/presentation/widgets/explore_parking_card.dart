import 'package:flutter/material.dart';
import '../../../../core.dart';
import '../../domain/models/explore_parking_model.dart';

class ExploreParkingCard extends StatelessWidget {
  final ExploreParkingModel parkingLocationEntity;
  final VoidCallback onTap;

  const ExploreParkingCard({
    super.key,
    required this.parkingLocationEntity,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  parkingLocationEntity.name,
                  style: const TextStyle(
                    fontWeight: FW.medium,
                  ),
                ),
                5.0.height,
                Text(
                  parkingLocationEntity.address,
                  style: const TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          10.0.width,
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Text(
                'Lihat Lokasi',
                style: TextStyle(
                  fontSize: 12.0,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
