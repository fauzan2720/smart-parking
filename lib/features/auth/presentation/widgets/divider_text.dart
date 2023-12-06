import 'package:flutter/material.dart';
import '../../../../core.dart';

class DividerText extends StatelessWidget {
  final String text;
  final double thickness;
  final Color color;

  const DividerText({
    super.key,
    required this.text,
    this.thickness = 1,
    this.color = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: thickness,
            color: color,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            text,
            style: TextStyle(
              color: color,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: thickness,
            color: color,
          ),
        ),
      ],
    );
  }
}
