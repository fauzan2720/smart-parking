part of 'package:smart_parking/core.dart';

class SmartFormButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final Color backgroundColor;

  const SmartFormButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.fullWidth,
      height: 45.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radius),
          ),
          backgroundColor: backgroundColor,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FW.medium,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
