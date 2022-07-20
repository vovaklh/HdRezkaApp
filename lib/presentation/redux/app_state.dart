import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/l10n/app_locale.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required ThemeMode themeMode,
    required AppLocale appLocale,
  }) = _AppState;

  factory AppState.initial() => const AppState(
        themeMode: ThemeMode.light,
        appLocale: AppLocale.en,
      );
}
