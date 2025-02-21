import 'package:freezed_annotation/freezed_annotation.dart';

part 'advertisement_model.freezed.dart';

part 'advertisement_model.g.dart';

@freezed
class AdvertisementResponse with _$AdvertisementResponse {
  const factory AdvertisementResponse({
    @JsonKey(name: "my_ads") required List<AdvertisementModel> myAdvertisements,
  }) = _AdvertisementResponse;

  factory AdvertisementResponse.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementResponseFromJson(json);
}

@freezed
class AdvertisementModel with _$AdvertisementModel {
  const factory AdvertisementModel({
    required int id,
    required String name,
    required String description,
    required int author,
    // required City city,
    required double latitude,
    required double longitude,
    @JsonKey(name: 'ad_type') required AdvertisementType advertisementType,
    required String price,
    required List<dynamic>? videos,
    required List<AdvertisementImage> images,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'main_category') required Category mainCategory,
    @JsonKey(name: "additional_category") required Category? additionalCategory,
    @JsonKey(name: "sub_category") required SubCategory? subCategory,
    required Attribute? attribute,
    @JsonKey(name: "additional_attribute")
    required AdditionalAttribute? additionalAttribute,
    @JsonKey(name: "subattribute") required SubAttribute? subAttribute,
  }) = _AdvertisementModel;

  factory AdvertisementModel.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementModelFromJson(json);
}

@freezed
class City with _$City {
  const factory City({
    required int id,
    @JsonKey(name: "city_name") required String cityName,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@freezed
class AdvertisementType with _$AdvertisementType {
  const factory AdvertisementType({
    required String type,
  }) = _AdvertisementType;

  factory AdvertisementType.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementTypeFromJson(json);
}

@freezed
class AdvertisementImage with _$AdvertisementImage {
  const factory AdvertisementImage({
    required int id,
    required int ad,
    required String image,
  }) = _AdvertisementImage;

  factory AdvertisementImage.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementImageFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    required String name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class SubCategory with _$SubCategory {
  const factory SubCategory({
    required int id,
    required String name,
    @JsonKey(name: "additional_category") required Category additionalCategory,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
}

@freezed
class Attribute with _$Attribute {
  const factory Attribute({
    required int id,
    required String name,
    @JsonKey(name: "main_category") required Category mainCategory,
    @JsonKey(name: "additional_category") required Category additionalCategory,
    @JsonKey(name: "subcategory") required SubCategory subCategory,
  }) = _Attribute;

  factory Attribute.fromJson(Map<String, dynamic> json) =>
      _$AttributeFromJson(json);
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
class SubAttribute with _$SubAttribute {
  const factory SubAttribute({
    required int id,
    required String name,
    @JsonKey(name: "additional_attribute")
    required AdditionalAttribute additionalAttribute,
  }) = _SubAttribute;

  factory SubAttribute.fromJson(Map<String, dynamic> json) =>
      _$SubAttributeFromJson(json);
}
