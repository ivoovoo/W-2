import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryResponse with _$CategoryResponse {
  const factory CategoryResponse({
    @JsonKey(name: 'main_categories')
    required List<MainCategory> mainCategories,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}

@freezed
class MainCategory with _$MainCategory {
  const factory MainCategory({
    required int id,
    required String name,
  }) = _MainCategory;

  factory MainCategory.fromJson(Map<String, dynamic> json) =>
      _$MainCategoryFromJson(json);
}
