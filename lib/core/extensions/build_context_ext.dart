part of 'package:smart_parking/core.dart';

extension BuildContextExt on BuildContext {
  double get fullHeight => MediaQuery.of(this).size.height;

  double get fullWidth => MediaQuery.of(this).size.width;
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

  Future<T?> pushNamed<T extends Object>(String routeName,
      [Object? args]) async {
    return Navigator.pushNamed<T>(
      this,
      routeName,
      arguments: args,
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

  Future<T?> pushReplacementNamed<T extends Object, TO extends Object>(
      String routeName,
      [Object? args]) async {
    return Navigator.pushReplacementNamed<T, TO>(
      this,
      routeName,
      arguments: args,
    );
  }

  Future<T?> pushNamedAndRemoveUntil<T extends Object>(
      String routeName, bool Function(Route<dynamic> route) predicate,
      [Object? args]) async {
    return Navigator.pushNamedAndRemoveUntil<T>(
      this,
      routeName,
      predicate,
      arguments: args,
    );
  }
}