import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:hdrezka_app/presentation/redux/theme/actions/switch_theme_action.dart';

abstract class ThemeManager {
  static void switchTheme(BuildContext context) {
    StoreProvider.dispatch(context, SwitchThemeAction());
  }
}
