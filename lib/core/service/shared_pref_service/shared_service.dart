import 'package:shared_preferences/shared_preferences.dart';
mixin SharedConstant{
  static const String isDark='is_dark';
}

mixin SharedPrefsService {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // ─────────────── GETTERS ───────────────

  static String getString(String key, {String defaultValue = ''}) {
    return _prefs.getString(key) ?? defaultValue;
  }

  static int getInt(String key, {int defaultValue = 0}) {
    return _prefs.getInt(key) ?? defaultValue;
  }

  static bool getBool(String key, {bool defaultValue = false}) {
    return _prefs.getBool(key) ?? defaultValue;
  }

  // ─────────────── SETTERS ───────────────

  static Future<bool> setString(String key, String value) async {
    return _prefs.setString(key, value);
  }

  static Future<bool> setInt(String key, int value) async {
    return _prefs.setInt(key, value);
  }

  static Future<bool> setBool(String key, bool value) async {
    return _prefs.setBool(key, value);
  }

  // ─────────────── DELETE ───────────────

  static Future<bool> remove(String key) async {
    return _prefs.remove(key);
  }
}
