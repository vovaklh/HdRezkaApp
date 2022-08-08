import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/repositories/favorites_repository.dart';

part 'favorites_cubit.freezed.dart';
part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final FavoritesRepository favoritesRepository;

  FavoritesCubit({required this.favoritesRepository})
      : super(const FavoritesState.initial()) {
    favoritesRepository.favoritesStream.listen((content) {
      emit(FavoritesState.success(content));
    });
  }
}
