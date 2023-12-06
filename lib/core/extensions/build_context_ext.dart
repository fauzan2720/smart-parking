import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

extension BuildContextExt on BuildContext {
  double get fullHeight => MediaQuery.of(this).size.height;

  double get fullWidth => MediaQuery.of(this).size.width;

  /// Show a loading dialog with text [message]
  Future showLoadingDialog({String? message}) {
    return EasyLoading.show(
      maskType: EasyLoadingMaskType.black,
      status: message ?? 'Loading...',
      dismissOnTap: false,
    );
  }

  /// Dismiss current showed loading dialog
  Future dismissLoadingDialog() => EasyLoading.dismiss();
}

extension NavigatorExt on BuildContext {
  void pop<T extends Object>([T? result]) {
    Navigator.pop(this, result);
  }

  void popToRoot<T extends Object>() {
    Navigator.popUntil(this, (route) => route.isFirst);
  }

  Future<T?> push<T extends Object>(Widget widget, [String? name]) async {
    return Navigator.push<T>(
      this,
      MaterialPageRoute(
        builder: (context) => widget,
        settings: RouteSettings(name: name),
      ),
    );
  }

  Future<T?> pushReplacement<T extends Object, TO extends Object>(Widget widget,
      [String? name]) async {
    return Navigator.pushReplacement<T, TO>(
      this,
      MaterialPageRoute(
        builder: (context) => widget,
        settings: RouteSettings(name: name),
      ),
    );
  }

  Future<T?> pushAndRemoveUntil<T extends Object>(
      Widget widget, bool Function(Route<dynamic> route) predicate,
      [String? name]) async {
    return Navigator.pushAndRemoveUntil<T>(
      this,
      MaterialPageRoute(
        builder: (context) => widget,
        settings: RouteSettings(name: name),
      ),
      predicate,
    );
  }
}
