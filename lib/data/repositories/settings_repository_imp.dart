import 'package:flutter/material.dart';
import 'package:hdrezka_app/data/datasources/local/shared_prefs.dart';
import 'package:hdrezka_app/domain/dto/settings_dto.dart';
import 'package:hdrezka_app/domain/repositories/settings_repository.dart';
import 'package:hdrezka_app/domain/services/auth_service.dart';
import 'package:rxdart/rxdart.dart';

class SettingsRepositoryImp implements SettingsRepository {
  final AuthService authService;
  final SharedPrefs sharedPrefs;

  final _settingsSubject = BehaviorSubject<SettingsDto>();

  SettingsRepositoryImp({
    required this.authService,
    required this.sharedPrefs,
  });

  @override
  Stream<SettingsDto> get settingsStream => _settingsSubject.stream;

  @override
  Future<void> loadSettings() async {
    final themeMode = sharedPrefs.getThemeMode();
    final isDarkMode = themeMode != null ? themeMode == ThemeMode.dark : true;
    final mirror = sharedPrefs.getMirror();
    final settingsDto = SettingsDto(
      isLoggedIn: authService.isLoggedIn,
      isDarkMode: isDarkMode,
      mirror: mirror,
    );
    _settingsSubject.add(settingsDto);
  }

  @override
  Future<void> signIn(String email, String password) async {
    await authService.signIn(email, password);
    _settingsSubject.add(_settingsSubject.value.copyWith(
      isLoggedIn: true,
    ));
  }

  @override
  Future<void> signOut() async {
    await authService.signOut();
    _settingsSubject.add(_settingsSubject.value.copyWith(
      isLoggedIn: false,
    ));
  }

  @override
  Future<void> singUp(String email, String password) async {
    await authService.signUp(email, password);
    _settingsSubject.add(_settingsSubject.value.copyWith(
      isLoggedIn: true,
    ));
  }

  @override
  Future<void> setMirror(String mirror) async {
    await sharedPrefs.setMirror(mirror);
    _settingsSubject.add(_settingsSubject.value.copyWith(
      mirror: mirror,
    ));
  }
}
