part of 'package:smart_parking/core.dart';

class SmartFormInputPIN extends StatelessWidget {
  final TextEditingController? controller;

  const SmartFormInputPIN({
    super.key,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      textAlignVertical: TextAlignVertical.center,
      controller: controller,
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.length < 6) {
          return 'Pin terdiri dari 6 digit';
        } else {
          return null;
        }
      },
      obscureText: true,
      obscuringCharacter: "*",
      maxLength: 6,
      decoration: InputDecoration(
        counterText: "",
        hintText: "Masukkan PIN",
        hintStyle: const TextStyle(
          color: AppColors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.grey,
          ),
          borderRadius: BorderRadius.circular(AppSizes.radius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.primary,
          ),
          borderRadius: BorderRadius.circular(AppSizes.radius),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.grey,
          ),
          borderRadius: BorderRadius.circular(AppSizes.radius),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
    );
  }
}
