import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSecureDb {
  static const _freshInstallKey = 'fresh-install-key';
  static const _tokenKey = 'token-key';

  UserSecureDb({
    FlutterSecureStorage? secureStorage,
  }) : _secureStorage = secureStorage ?? const FlutterSecureStorage();
  final FlutterSecureStorage _secureStorage;

  Future upsertTokens({
    required String token,
  }) {
    return Future.wait([
      _secureStorage.write(key: _tokenKey, value: token),
    ]);
  }

  Future<String?> get token {
    return _secureStorage.read(key: _tokenKey);
  }

  Future<bool?> get freshInstall async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_freshInstallKey);
  }

  Future deleteUserInfo() {
    return Future.wait([
      _secureStorage.delete(key: _tokenKey),
    ]);
  }

  Future clearSecureStorageOnReinstall() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getBool(_freshInstallKey) ?? true) {
      await deleteUserInfo();
      prefs.setBool(_freshInstallKey, false);
    }
  }
}
