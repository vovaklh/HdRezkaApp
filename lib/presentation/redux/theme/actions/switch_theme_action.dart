import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/data/datasources/local/shared_prefs.dart';
import 'package:hdrezka_app/presentation/redux/app_state.dart';

class SwitchThemeAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    final currentThemeMode = state.themeMode;
    if (currentThemeMode == ThemeMode.light) {
      await locator<SharedPrefs>().setThemeMode(ThemeMode.dark);
      return state.copyWith(themeMode: ThemeMode.dark);
    }

    await locator<SharedPrefs>().setThemeMode(ThemeMode.light);
    return state.copyWith(themeMode: ThemeMode.light);
  }
}
