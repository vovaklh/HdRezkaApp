import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_genre.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_type.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/repositories/content_repository.dart';

part 'categories_cubit.freezed.dart';
part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final ContentRepository contentRepository;

  CategoriesCubit({
    required this.contentRepository,
  }) : super(const CategoriesState.initial());

  Future<void> getContent(
    int page,
    ContentType contentType,
    ContentGenre genre, [
    int? year,
  ]) async {
    try {
      emit(const CategoriesState.loading());

      final content = await contentRepository.getContentByCategory(
        page,
        contentType,
        genre,
        year,
      );
      final isLastPage = content.length < 36;
      final nextPage = isLastPage ? null : page + 1;

      emit(CategoriesState.success(page, nextPage, content));
    } catch (exception) {
      emit(CategoriesState.error(page, exception));
    }
  }
}
