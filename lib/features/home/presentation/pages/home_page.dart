import 'package:flutter/material.dart';
import 'package:smart_parking/core.dart';
import 'package:smart_parking/features/home/presentation/widgets/header_in_home.dart';
import 'package:smart_parking/features/parking/presentation/widgets/history_card.dart';
import 'package:smart_parking/features/parking/presentation/pages/ticket_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const HeaderInHome(),
        15.0.height,
        Container(
          margin: const EdgeInsets.symmetric(horizontal: AppSizes.primary),
          padding: const EdgeInsets.symmetric(
              vertical: 15.0, horizontal: AppSizes.primary),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.card),
            color: AppColors.white,
            boxShadow: AppBoxShadow.card,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Promo 12.12",
                style: TextStyle(
                  fontWeight: FW.medium,
                ),
              ),
              10.0.height,
              const Text(
                "Parkir pada tanggal 12 bulan 12 diskon 50% berlaku di Mall Lippo Plaza Jember",
                style: TextStyle(
                  fontSize: 11.0,
                ),
              ),
              15.0.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "*syarat dan ketentuan berlaku",
                    style: TextStyle(
                      fontSize: 11.0,
                      color: AppColors.grey,
                    ),
                  ),
                  Container(
                    height: 22.0,
                    width: 62.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppColors.primary,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: const Center(
                        child: Text(
                          "Klaim",
                          style: TextStyle(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        40.0.height,
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.primary),
          child: Text(
            "Anda sekarang sedang parkir",
            style: TextStyle(
              fontWeight: FW.semibold,
              fontSize: 16.0,
            ),
          ),
        ),
        20.0.height,
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.primary),
          itemCount: 1,
          itemBuilder: (context, index) => HistoryCard(
            onSeeTap: () => context.push(const TicketPage()),
          ),
        ),
        30.0.height,
      ],
    );
  }
}
