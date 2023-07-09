import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil {
  static const String _kUserTokenKey = 'userToken';



  static Future<SharedPreferences> _getSharedPreferencesInstance() async {
    return await SharedPreferences.getInstance();
  }

  static Future<String> getItem(String key) async {
    final prefs = await _getSharedPreferencesInstance();
    return prefs.getString(key) ?? '';
  }

  static Future<void> addItem(String key, String value) async {
    final prefs = await _getSharedPreferencesInstance();
    await prefs.setString(key, value);
  }


  static Future<void> saveUserToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_kUserTokenKey, token);
  }
  static  void clear(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  static Future<String?> getUserToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_kUserTokenKey);
  }

}
