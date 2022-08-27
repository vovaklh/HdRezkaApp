import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/entities/content_details.dart';
import 'package:hdrezka_app/domain/repositories/content_repository.dart';
import 'package:hdrezka_app/domain/repositories/favorites_repository.dart';
import 'package:hdrezka_app/domain/repositories/history_repository.dart';

part 'content_details_cubit.freezed.dart';
part 'content_details_state.dart';

class ContentDetailsCubit extends Cubit<ContentDetailsState> {
  final ContentRepository contentRepository;
  final HistoryRepository historyRepository;
  final FavoritesRepository favoritesRepository;

  ContentDetailsCubit({
    required this.contentRepository,
    required this.historyRepository,
    required this.favoritesRepository,
  }) : super(const ContentDetailsState.initial());

  Future<void> getContentDetails(Content content) async {
    try {
      emit(const ContentDetailsState.loading());

      final contentDetails =
          await contentRepository.getContentDetails(content.mirrorLessUrl);
      final isFavorite = await favoritesRepository.isFavorite(content.id);

      emit(ContentDetailsState.success(contentDetails.copyWith(
        isFavorite: isFavorite,
      )));
    } catch (exception) {
      emit(ContentDetailsState.error(exception));
    }
  }

  Future<void> addToHistory(Content content) async {
    await historyRepository.addToHistory(content.copyWith(
      addedToHistoryAt: DateTime.now().toUtc(),
    ));
  }

  Future<void> addToFavorites(Content content) async {
    try {
      await favoritesRepository.addToFavorites(content.copyWith(
        addedToFavoritesAt: DateTime.now().toUtc(),
      ));

      final contentDetails = state.maybeMap(
        success: (value) => value.contentDetails,
        orElse: () => null,
      );

      if (contentDetails != null) {
        emit(ContentDetailsState.success(contentDetails.copyWith(
          isFavorite: true,
        )));
      }
    } catch (exception) {
      emit(ContentDetailsState.error(exception));
    }
  }

  Future<void> deleteFromFavorites(Content content) async {
    try {
      await favoritesRepository.deleteFromFavorites(content);

      final contentDetails = state.maybeMap(
        success: (value) => value.contentDetails,
        orElse: () => null,
      );

      if (contentDetails != null) {
        emit(ContentDetailsState.success(contentDetails.copyWith(
          isFavorite: false,
        )));
      }
    } catch (exception) {
      emit(ContentDetailsState.error(exception));
    }
  }
}
