import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/domain/dto/settings_dto.dart';
import 'package:hdrezka_app/domain/repositories/settings_repository.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final SettingsRepository settingsRepository;

  SettingsCubit({required this.settingsRepository})
      : super(const SettingsState.initial()) {
    settingsRepository.settingsStream.listen((settingsDto) {
      emit(SettingsState.success(settingsDto));
    });
  }

  Future<void> signIn(String email, String password) async {
    try {
      await settingsRepository.signIn(email, password);
    } catch (exception) {
      emit(SettingsState.error(exception));
    }
  }

  Future<void> signUp(String email, String password) async {
    try {
      await settingsRepository.singUp(email, password);
    } catch (exception) {
      emit(SettingsState.error(exception));
    }
  }

  Future<void> signOut() async {
    try {
      await settingsRepository.signOut();
    } catch (exception) {
      emit(SettingsState.error(exception));
    }
  }
}
