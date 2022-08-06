import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/repositories/history_repository.dart';

part 'history_cubit.freezed.dart';
part 'history_state.dart';

class HistoryCubit extends Cubit<HistoryState> {
  final HistoryRepository historyRepository;

  HistoryCubit({required this.historyRepository})
      : super(const HistoryState.initial()) {
    historyRepository.historyStream.listen((content) {
      emit(HistoryState.success(content));
    });
  }
}
