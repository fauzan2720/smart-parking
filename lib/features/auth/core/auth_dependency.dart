import '../../../core/utils/injector.dart';
import '../data/repositories/repositories.dart';
import '../domain/repositories/repositories.dart';
import '../presentation/managers/managers.dart';

class AuthDepedency {
  const AuthDepedency._();

  static void init() {
    /// [STATE_MANAGEMENT]
    locator.registerFactory(() => AuthBloc(locator()));

    /// [REPOSITORY]
    locator.registerLazySingleton<AuthRepository>(
        () => AuthRepositoryImpl(locator()));
  }
}
