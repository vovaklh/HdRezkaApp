import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_dto.freezed.dart';

@freezed
class SettingsDto with _$SettingsDto {
  const factory SettingsDto({
    required bool isLoggedIn,
    required String mirror,
  }) = _SettingsDto;
}
