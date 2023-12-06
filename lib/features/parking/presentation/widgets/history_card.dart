import 'package:flutter/material.dart';
import '../../../../core.dart';
import '../pages/ticket_page.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key});

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(AppSizes.card),
                    child: Image.network(
                      'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/bolasport/medium_d96dba2be873937c97a40ab362f0a28b.jpg',
                      width: 50.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  10.0.width,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Lippo Plaza Jember',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FW.medium,
                        ),
                      ),
                      5.0.height,
                      Text(
                        DateTime(2023, 5, 15, 10, 30)
                            .toFormattedStringWithTime(),
                        style: const TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              10.0.height,
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: AppColors.red,
                ),
                child: const Text(
                  'Belum Bayar',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => context.push(const TicketPage()),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Text(
                'Lihat',
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
