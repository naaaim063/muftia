import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalService {
  static const _keyName = 'name';
  static const _keyEmail = 'email';
  static const _keyPassword = 'password';
  static const _keyIsLoggedIn = 'is_logged_in';

  // SIGNUP
  static Future<void> signup(
      String name, String email, String password) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyName, name);
    await prefs.setString(_keyEmail, email);
    await prefs.setString(_keyPassword, password);
  }

  // LOGIN
  static Future<bool> login(String email, String password) async {
    final prefs = await SharedPreferences.getInstance();
    final savedEmail = prefs.getString(_keyEmail);
    final savedPassword = prefs.getString(_keyPassword);

    if (savedEmail == email && savedPassword == password) {
      await prefs.setBool(_keyIsLoggedIn, true);
      return true;
    }
    return false;
  }

  // RESET PASSWORD
  static Future<bool> resetPassword(
      String email, String newPassword) async {
    final prefs = await SharedPreferences.getInstance();
    final savedEmail = prefs.getString(_keyEmail);

    if (savedEmail == email) {
      await prefs.setString(_keyPassword, newPassword);
      return true;
    }
    return false;
  }

  static Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyIsLoggedIn) ?? false;
  }

  static Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyIsLoggedIn, false);
  }
}
