import 'package:flutter/material.dart';
import 'package:hdrezka_app/data/datasources/local/app_constants.dart';
import 'package:hdrezka_app/l10n/app_locale.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static const _themeModeKey = "THEME_MODE_KEY";
  static const _localeKey = "LOCALE_KEY";
  static const _mirrorKey = "MIRROR_KEY";

  late SharedPreferences _preferences;

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<bool> setThemeMode(ThemeMode mode) async =>
      _preferences.setString(_themeModeKey, mode.name);
  ThemeMode? getThemeMode() {
    final String? value = _preferences.getString(_themeModeKey);
    return value != null
        ? ThemeMode.values.firstWhere((element) => element.name == value)
        : null;
  }

  Future<bool> setLocale(AppLocale locale) async =>
      _preferences.setString(_localeKey, locale.name);
  AppLocale? getLocale() {
    final String? value = _preferences.getString(_localeKey);
    return value != null
        ? AppLocale.values.firstWhere((element) => element.name == value)
        : null;
  }

  Future<bool> setMirror(String mirror) async =>
      _preferences.setString(_mirrorKey, mirror);
  String getMirror() =>
      _preferences.getString(_mirrorKey) ?? AppConstants.mirrors.first;
}
