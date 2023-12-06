import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../../../core.dart';
import '../../domain/entities/saldo_history_entity.dart';
import '../widgets/saldo_history_card.dart';

class TopUpSaldoPage extends StatelessWidget {
  const TopUpSaldoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SaldoHistoryEntity> saldoHistories = [
      SaldoHistoryEntity(
        price: 100000,
        status: 'Masuk',
        createdAt: DateTime(2023, 5, 15, 10, 30),
      ),
      SaldoHistoryEntity(
        price: 50000,
        status: 'Keluar',
        createdAt: DateTime(2023, 5, 16, 14, 45),
      ),
      SaldoHistoryEntity(
        price: 250000,
        status: 'Masuk',
        createdAt: DateTime(2023, 5, 18, 9, 15),
      ),
      SaldoHistoryEntity(
        price: 75000,
        status: 'Keluar',
        createdAt: DateTime(2023, 5, 19, 17, 0),
      ),
      SaldoHistoryEntity(
        price: 200000,
        status: 'Masuk',
        createdAt: DateTime(2023, 5, 20, 8, 45),
      ),
      SaldoHistoryEntity(
        price: 35000,
        status: 'Keluar',
        createdAt: DateTime(2023, 5, 20, 13, 20),
      ),
      SaldoHistoryEntity(
        price: 150000,
        status: 'Masuk',
        createdAt: DateTime(2023, 5, 21, 11, 30),
      ),
      SaldoHistoryEntity(
        price: 10000,
        status: 'Keluar',
        createdAt: DateTime(2023, 5, 21, 14, 15),
      ),
      SaldoHistoryEntity(
        price: 300000,
        status: 'Masuk',
        createdAt: DateTime(2023, 5, 22, 9, 0),
      ),
      SaldoHistoryEntity(
        price: 80000,
        status: 'Keluar',
        createdAt: DateTime(2023, 5, 22, 12, 45),
      ),
    ];

    saldoHistories.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Isi Saldo'),
      ),
      body: ListView(
        children: [
          20.0.height,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.secondary),
            child: Text(
              'Silahkan datang ke kasir dengan menunjukkan kode barcode dibawah',
              style: TextStyle(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          25.0.height,
          Center(
            child: QrImage(
              data: 'data',
              version: QrVersions.auto,
              size: MediaQuery.of(context).orientation == Orientation.landscape
                  ? context.fullWidth / 3
                  : context.fullWidth / 1.8,
            ),
          ),
          40.0.height,
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(5.0),
              ),
              color: AppColors.primary,
              border: Border.all(
                color: AppColors.border,
              ),
            ),
            child: const Text(
              'Transaksi terakhir',
              style: TextStyle(
                fontWeight: FW.medium,
                color: AppColors.white,
              ),
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: saldoHistories.length,
            itemBuilder: (BuildContext context, int index) {
              return SaldoHistoryCard(
                saldoHistoryEntity: saldoHistories[index],
                onTap: (isClaim) {},
              );
            },
          ),
        ],
      ),
    );
  }
}
