import 'package:flutter/material.dart';

import '../../../../core.dart';
import '../../../parking/presentation/pages/explore_parking_page.dart';
import '../../../parking/presentation/pages/history_page.dart';
import '../../../parking/presentation/pages/voucher_page.dart';
import '../../../profile/presentation/pages/profile_page.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  PreferredSizeWidget? _handleAppBar(int currentIndex) {
    switch (currentIndex) {
      case 1:
        return AppBar(
          title: const Text('Riwayat Transaksi'),
        );
      case 2:
        return AppBar(
          title: const Text('Voucher Tersedia'),
        );
      case 3:
        return AppBar(
          title: const Text('Eksplor Parkir'),
        );
      case 4:
        return AppBar(
          title: const Text('Profile Saya'),
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
        return const HistoryPage();
      case 2:
        return const VoucherPage();
      case 3:
        return const ExploreParkingPage();
      case 4:
        return const ProfilePage();
      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _handleAppBar(_currentIndex),
      body: _handleBody(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          _currentIndex = value;
          setState(() {});
        },
        backgroundColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AppIcons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AppIcons.history),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AppIcons.voucher),
            label: 'Voucher',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AppIcons.search),
            label: 'Eksplor',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AppIcons.user),
            label: 'Saya',
          ),
        ],
      ),
    );
  }
}
