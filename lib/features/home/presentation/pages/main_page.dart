import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parking/core.dart';
import 'package:smart_parking/features/home/presentation/bloc/page_bloc.dart';
import 'package:smart_parking/features/home/presentation/pages/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  PreferredSizeWidget? _handleAppBar(int currentIndex) {
    switch (currentIndex) {
      case 2:
        return AppBar(
          title: const Text("Riwayat Transaksi").animate().fadeIn(),
        );
      default:
        return null;
    }
  }

  Widget _handleBody(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const Center(child: Text("Voucher"));
      case 2:
        return const Center(child: Text("Riwayat Transaksi"));
      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageBloc, int>(
      builder: (context, state) {
        return Scaffold(
          appBar: _handleAppBar(state),
          body: _handleBody(state),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state,
            onTap: (value) => context.read<PageBloc>().add(value),
            backgroundColor: AppColors.white,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AppIcons.home),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AppIcons.voucher),
                label: 'Voucher',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AppIcons.history),
                label: 'Riwayat',
              ),
            ],
          ),
        );
      },
    );
  }
}
