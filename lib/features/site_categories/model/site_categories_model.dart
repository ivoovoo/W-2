import 'package:freezed_annotation/freezed_annotation.dart';

part 'site_categories_model.freezed.dart';
part 'site_categories_model.g.dart';

@freezed
class SiteCategoriesResponse with _$SiteCategoriesResponse {
  const factory SiteCategoriesResponse({
    @JsonKey(name: 'site_categories')
    required List<SiteCategory> siteCategories,
  }) = _SiteCategoriesResponse;

  factory SiteCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$SiteCategoriesResponseFromJson(json);
}

@freezed
class SiteCategory with _$SiteCategory {
  const factory SiteCategory({
    required int id,
    required String name,
  }) = _SiteCategory;

  factory SiteCategory.fromJson(Map<String, dynamic> json) =>
      _$SiteCategoryFromJson(json);
}
