import 'auth_bloc_providers.dart';
import 'auth_dependency.dart';

class Auth {
  const Auth._();

  static void injection() => AuthDepedency.init();
  static final blocProviders = AuthBlocProviders.init;
}
