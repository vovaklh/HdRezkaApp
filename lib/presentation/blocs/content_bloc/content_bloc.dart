import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_filter.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_type.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/repositories/content_repository.dart';

part 'content_bloc.freezed.dart';
part 'content_event.dart';
part 'content_state.dart';

class ContentBloc extends Bloc<ContentEvent, ContentState> {
  final ContentRepository contentRepository;

  ContentBloc({required this.contentRepository})
      : super(const ContentState.initial()) {
    on<GetContentEvent>((event, emit) =>
        _getContent(event.page, event.filter, event.type, emit));
  }

  Future<void> _getContent(
    int page,
    ContentFilter filter,
    ContentType type,
    Emitter emit,
  ) async {
    try {
      emit(const ContentState.loading());

      final content = await contentRepository.getContent(page, filter, type);
      final isLastPage = content.length < 36;

      emit(ContentState.success(content, isLastPage));
    } catch (exception) {
      emit(ContentState.error(exception));
    }
  }
}
