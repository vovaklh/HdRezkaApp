import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_filter.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_type.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/repositories/content_repository.dart';

part 'content_cubit.freezed.dart';
part 'content_state.dart';

class ContentCubit extends Cubit<ContentState> {
  final ContentRepository contentRepository;

  ContentCubit({required this.contentRepository})
      : super(const ContentState.initial());

  Future<void> getContent(
    int page,
    ContentFilter filter,
    ContentType type,
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
