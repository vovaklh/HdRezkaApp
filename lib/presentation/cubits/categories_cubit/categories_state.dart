part of 'categories_cubit.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _CategoriesInitialState;
  const factory CategoriesState.loading() = _CategoriesLoadingState;
  const factory CategoriesState.success(
    int page,
    int? nextPage,
    List<Content> content,
  ) = _CategoriesSuccessState;
  const factory CategoriesState.error(int page, Object exception) =
      _CategoriesErrorState;
}
