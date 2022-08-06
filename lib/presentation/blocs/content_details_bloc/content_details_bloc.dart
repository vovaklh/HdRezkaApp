import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/entities/content_details.dart';
import 'package:hdrezka_app/domain/repositories/content_repository.dart';
import 'package:hdrezka_app/domain/repositories/history_repository.dart';

part 'content_details_bloc.freezed.dart';
part 'content_details_event.dart';
part 'content_details_state.dart';

class ContentDetailsBloc
    extends Bloc<ContentDetailsEvent, ContentDetailsState> {
  final ContentRepository contentRepository;
  final HistoryRepository historyRepository;

  ContentDetailsBloc({
    required this.contentRepository,
    required this.historyRepository,
  }) : super(const ContentDetailsState.initial()) {
    on<GetContentDetailsEvent>(
      (event, emit) => _getContentDetails(event.mirrorLessUrl, emit),
    );
  }

  Future<void> _getContentDetails(String mirrorLessUrl, Emitter emit) async {
    try {
      emit(const ContentDetailsState.loading());

      final contentDetails =
          await contentRepository.getContentDetails(mirrorLessUrl);

      emit(ContentDetailsState.success(contentDetails));
    } catch (exception) {
      emit(ContentDetailsState.error(exception));
    }
  }

  Future<void> addToHistory(Content content) async {
    await historyRepository.addToHistory(content);
  }
}
