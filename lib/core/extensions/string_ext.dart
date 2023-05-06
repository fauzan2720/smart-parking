part of 'package:smart_parking/core.dart';

extension DialogExt on String {
  void succeedBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.primary,
        behavior: SnackBarBehavior.floating,
        content: Text(this, textAlign: TextAlign.center),
        duration: const Duration(seconds: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  void infoBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.blueGrey.withOpacity(0.8),
        behavior: SnackBarBehavior.floating,
        content: Text(this, textAlign: TextAlign.center),
        duration: const Duration(seconds: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  void failedBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red.withOpacity(0.8),
        behavior: SnackBarBehavior.floating,
        content: Text(this, textAlign: TextAlign.center),
        duration: const Duration(seconds: 3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

extension ValidationExt on String {
  bool isValidEmail() {
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return !emailRegex.hasMatch(this);
  }

  bool isValidPhoneNumber() {
    final RegExp phoneRegex = RegExp(r'^0\d{10,12}$');
    return !phoneRegex.hasMatch(this);
  }
}
