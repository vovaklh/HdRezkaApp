part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _SettingsInitialState;
  const factory SettingsState.loading() = _SettingsLoadingState;
  const factory SettingsState.error(Object exception) = _SettingsErrorState;
  const factory SettingsState.success(SettingsDto settingsDto) =
      _SettingsSuccessState;
}
