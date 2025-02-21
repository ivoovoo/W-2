part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = CategoriesInitialState;

  const factory CategoriesState.loadInProgress() =
      CategoriesLoadInProgressState;

  const factory CategoriesState.loadSuccess(CategoryResponse categories) =
      CategoriesLoadSuccessState;

  const factory CategoriesState.loadSuccess2(
      CategoryResponse2 additionalCategories) = CategoriesLoadSuccessState2;

  const factory CategoriesState.loadFailure(String error) =
      CategoriesLoadFailureState;
}
