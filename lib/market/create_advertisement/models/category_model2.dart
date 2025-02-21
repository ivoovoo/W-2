import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/market/first_menu/model/advertisement_model.dart';

import 'category_model.dart';

part 'category_model2.freezed.dart';

part 'category_model2.g.dart';

@freezed
class CategoryResponse2 with _$CategoryResponse2 {
  const factory CategoryResponse2({
    @JsonKey(name: 'current_category_main')
    required MainCategory currentCategoryMain,
    required List<AdvertisementModel> ads,
    @JsonKey(name: 'additional_category')
    required List<AdditionalCategory> additionalCategory,
    required List<Attribute> attributes,
    @JsonKey(name: 'additional_attributes')
    required List<AdditionalAttribute> additionalAttributes,
    required List<Subattribute> subattributes,
  }) = _CategoryResponse2;

  factory CategoryResponse2.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponse2FromJson(json);
}

@freezed
class AdditionalCategory with _$AdditionalCategory {
  const factory AdditionalCategory({
    required int id,
    required String name,
    @JsonKey(name: 'main_category') required MainCategory mainCategory,
  }) = _AdditionalCategory;

  factory AdditionalCategory.fromJson(Map<String, dynamic> json) =>
      _$AdditionalCategoryFromJson(json);
}

@freezed
class Attribute with _$Attribute {
  const factory Attribute({
    required int id,
    required String name,
    @JsonKey(name: 'main_category') required MainCategory mainCategory,
    @JsonKey(name: 'additional_category')
    required AdditionalCategory additionalCategory,
    required Subcategory subcategory,
  }) = _Attribute;

  factory Attribute.fromJson(Map<String, dynamic> json) =>
      _$AttributeFromJson(json);
}

@freezed
class Subcategory with _$Subcategory {
  const factory Subcategory({
    required int id,
    required String name,
    @JsonKey(name: 'additional_category')
    required AdditionalCategory additionalCategory,
  }) = _Subcategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
}

@freezed
class AdditionalAttribute with _$AdditionalAttribute {
  const factory AdditionalAttribute({
    required int id,
    required String name,
    required Attribute attribute,
  }) = _AdditionalAttribute;

  factory AdditionalAttribute.fromJson(Map<String, dynamic> json) =>
      _$AdditionalAttributeFromJson(json);
}

@freezed
class Subattribute with _$Subattribute {
  const factory Subattribute({
    required int id,
    required String name,
    @JsonKey(name: 'additional_attribute')
    required AdditionalAttribute additionalAttribute,
  }) = _Subattribute;

  factory Subattribute.fromJson(Map<String, dynamic> json) =>
      _$SubattributeFromJson(json);
}
