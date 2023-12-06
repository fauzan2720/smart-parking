import 'package:flutter/material.dart';
import '../../../../core.dart';
import '../widgets/history_card.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.primary),
      itemCount: 14,
      itemBuilder: (context, index) => const HistoryCard(),
    );
  }
}
