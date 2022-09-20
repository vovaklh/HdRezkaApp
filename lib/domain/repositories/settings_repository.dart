import 'package:hdrezka_app/domain/dto/settings_dto.dart';

abstract class SettingsRepository {
  Stream<SettingsDto> get settingsStream;

  Future<void> loadSettings();

  Future<void> signIn(String email, String password);

  Future<void> singUp(String email, String password);

  Future<void> setMirror(String mirror);

  Future<void> signOut();
}
