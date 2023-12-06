import 'package:flutter/material.dart';
import '../../../../core.dart';

class ButtonInHome extends StatelessWidget {
  final String label;
  final AssetImage icon;
  final void Function() onPressed;

  const ButtonInHome({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageIcon(
            icon,
            size: 30.0,
            color: AppColors.white,
          ),
          14.0.height,
          Text(
            label,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FW.medium,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
