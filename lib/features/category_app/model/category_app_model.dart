import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_app_model.freezed.dart';
part 'category_app_model.g.dart';

@freezed
class CategoryAppModel with _$CategoryAppModel {
  const factory CategoryAppModel({
    @JsonKey(name: 'site_categories') required List<AppCategory> siteCategories,
  }) = _CategoryAppModel;

  factory CategoryAppModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryAppModelFromJson(json);
}

@freezed
class AppCategory with _$AppCategory {
  const factory AppCategory({
    required int id,
    required String name,
  }) = _AppCategory;

  factory AppCategory.fromJson(Map<String, dynamic> json) =>
      _$AppCategoryFromJson(json);
}
