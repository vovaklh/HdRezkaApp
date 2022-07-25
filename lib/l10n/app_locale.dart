import 'package:flutter/material.dart';

enum AppLocale {
  ru;

  const AppLocale();

  Locale get locale {
    switch (this) {
      case AppLocale.ru:
        return const Locale('ru');
    }
  }
}
