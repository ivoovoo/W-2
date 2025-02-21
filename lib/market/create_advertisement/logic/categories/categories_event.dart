part of 'categories_bloc.dart';

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.init() = CategoriesInitEvent;

  const factory CategoriesEvent.getSubCategories(int idOfMainCategory) =
      GetSubCategoriesEvent;
}
