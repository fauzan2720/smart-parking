part of 'package:smart_parking/core.dart';

class SmartFormInput extends StatelessWidget {
  final String hint;
  final AssetImage icon;
  final bool isPassword;
  final String? helperText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const SmartFormInput({
    super.key,
    required this.hint,
    required this.icon,
    this.isPassword = false,
    this.helperText,
    this.controller,
    this.keyboardType,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    bool isShowPassword = false;

    return StatefulBuilder(
      builder: (context, setState) => TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        validator: validator,
        obscureText: isPassword ? !isShowPassword : isPassword,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: AppColors.grey,
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.grey,
            ),
          ),
          prefixIcon: Transform.scale(
            scale: 0.5,
            child: ImageIcon(
              icon,
              color: AppColors.grey,
            ),
          ),
          suffixIcon: isPassword
              ? Transform.scale(
                  scale: 0.8,
                  child: IconButton(
                    onPressed: () {
                      isShowPassword = !isShowPassword;
                      setState(() {});
                    },
                    icon: ImageIcon(
                      isShowPassword
                          ? AppIcons.showPassword
                          : AppIcons.hidePassword,
                      color: AppColors.grey,
                    ),
                  ),
                )
              : null,
          helperText: helperText,
          helperStyle: const TextStyle(
            color: AppColors.grey,
          ),
        ),
      ),
    );
  }
}
