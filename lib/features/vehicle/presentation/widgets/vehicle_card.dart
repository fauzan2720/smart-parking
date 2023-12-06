import 'package:flutter/material.dart';
import '../../../../core.dart';
import '../../domain/entities/vehicle_entity.dart';

class VehicleCard extends StatelessWidget {
  final VehicleEntity vehicleEntity;
  final void Function() onEditTap;
  final void Function() onDeleteTap;

  const VehicleCard({
    super.key,
    required this.vehicleEntity,
    required this.onEditTap,
    required this.onDeleteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.card),
        color: AppColors.white,
        boxShadow: AppBoxShadow.card,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.card),
            child: Image.network(
              vehicleEntity.frontVehicleImage,
              width: 50.0,
              height: 50.0,
              fit: BoxFit.cover,
            ),
          ),
          10.0.width,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(vehicleEntity.plate),
              SizedBox(
                width: context.fullWidth - 195,
                child: Text(
                  vehicleEntity.name,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FW.medium,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: onEditTap,
            child: Image.asset(
              AppImages.edit,
              width: 30.0,
            ),
          ),
          5.0.width,
          InkWell(
            onTap: onDeleteTap,
            child: Image.asset(
              AppImages.delete,
              width: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
