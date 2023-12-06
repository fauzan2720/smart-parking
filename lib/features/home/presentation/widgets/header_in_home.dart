import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core.dart';
import '../../../auth/presentation/managers/managers.dart';
import 'button_in_home.dart';

class HeaderInHome extends StatelessWidget {
  final void Function() onTopUpSaldoTap;
  final void Function() onParkingTap;
  final void Function() onVehicleTap;
  final void Function() onPayTap;

  const HeaderInHome({
    super.key,
    required this.onTopUpSaldoTap,
    required this.onParkingTap,
    required this.onVehicleTap,
    required this.onPayTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.primary, vertical: 25.0),
      color: AppColors.primary,
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) => state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          success: (data) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              5.0.height,
              Row(
                children: [
                  const ImageIcon(
                    AppIcons.saldo,
                    size: 20.0,
                    color: AppColors.white,
                  ),
                  5.0.width,
                  Text(
                    data.saldo.currencyFormatRp,
                    style: const TextStyle(
                      color: AppColors.white,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    data.nomorPlat,
                    style: const TextStyle(
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
              15.0.height,
              Text(
                'Haii, ${data.namaLengkap}',
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FW.medium,
                  color: AppColors.white,
                ),
              ),
              const Text(
                'Ayo parkir dengan aman!',
                style: TextStyle(
                  color: AppColors.white,
                ),
              ),
              35.0.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonInHome(
                    label: 'Isi Saldo',
                    icon: AppIcons.saldo,
                    onPressed: onTopUpSaldoTap,
                  ),
                  ButtonInHome(
                    label: 'Parkir',
                    icon: AppIcons.parking,
                    onPressed: onParkingTap,
                  ),
                  ButtonInHome(
                    label: 'Kendaraan',
                    icon: AppIcons.car2,
                    onPressed: onVehicleTap,
                  ),
                  ButtonInHome(
                    label: 'Bayar',
                    icon: AppIcons.scanQrcode,
                    onPressed: onPayTap,
                  ),
                ],
              ),
              10.0.height,
            ],
          ),
        ),
      ),
    );
  }
}
