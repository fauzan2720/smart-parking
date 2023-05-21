import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';
import 'package:smart_parking/features/parking/domain/entities/voucher_entity.dart';

class VoucherCard extends StatelessWidget {
  final VoucherEntity voucherEntity;
  final void Function(bool isClaim) onTap;

  const VoucherCard({
    super.key,
    required this.voucherEntity,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    bool isClaim = false;

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
                  voucherEntity.name,
                  style: const TextStyle(
                    fontWeight: FW.medium,
                  ),
                ),
                5.0.height,
                Text(
                  "Berakhir pada ${voucherEntity.deadline}",
                  style: const TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          10.0.width,
          StatefulBuilder(
            builder: (context, setState) => GestureDetector(
              onTap: () {
                isClaim = !isClaim;
                onTap(isClaim);
                setState(() {});
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                decoration: BoxDecoration(
                  color: isClaim ? null : AppColors.primary,
                  borderRadius: BorderRadius.circular(5.0),
                  border: isClaim ? Border.all(color: AppColors.border) : null,
                ),
                child: Text(
                  isClaim ? "Pakai" : "Klaim",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: isClaim ? AppColors.black : AppColors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
