import 'package:flutter/material.dart';
import 'package:smart_parking/core/extensions/extensions.dart';

import '../constants/constants.dart';

class SmartFormOutlinedButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const SmartFormOutlinedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.fullWidth,
      height: 45.0,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radius),
          ),
          side: const BorderSide(
            color: AppColors.primary,
          ),
          backgroundColor: Colors.transparent,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FW.medium,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
