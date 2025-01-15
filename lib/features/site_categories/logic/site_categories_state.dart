part of 'site_categories_bloc.dart';

@freezed
class SiteCategoriesState with _$SiteCategoriesState {
  const factory SiteCategoriesState.initial() = SiteCategoriesInitialState;

  const factory SiteCategoriesState.loadInProgress() =
      SiteCategoriesLoadInProgressState;

  const factory SiteCategoriesState.loadSuccess(
      SiteCategoriesResponse siteCategories) = SiteCategoriesLoadSuccessState;

  const factory SiteCategoriesState.loadFailure(String error) =
      SiteCategoriesLoadFailureState;
}
