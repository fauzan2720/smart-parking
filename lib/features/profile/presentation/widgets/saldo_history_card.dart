import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';
import 'package:smart_parking/features/profile/domain/entities/saldo_history_entity.dart';

class SaldoHistoryCard extends StatelessWidget {
  final SaldoHistoryEntity saldoHistoryEntity;
  final void Function(bool isClaim) onTap;

  const SaldoHistoryCard({
    super.key,
    required this.saldoHistoryEntity,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${saldoHistoryEntity.status == "Masuk" ? "+" : "-"} ${saldoHistoryEntity.price.currencyFormatRp}",
            style: const TextStyle(
              fontWeight: FW.medium,
            ),
          ),
          5.0.height,
          Text(
            "${saldoHistoryEntity.createdAt}",
            style: const TextStyle(
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
