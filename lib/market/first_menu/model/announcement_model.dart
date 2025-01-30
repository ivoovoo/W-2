import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_model.freezed.dart';

part 'announcement_model.g.dart';

@freezed
class AnnouncementResponse with _$AnnouncementResponse {
  const factory AnnouncementResponse({
    @JsonKey(name: "my_ads") required List<AnnouncementModel> myAnnouncements,
  }) = _AnnouncementResponse;

  factory AnnouncementResponse.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementResponseFromJson(json);
}

@freezed
class AnnouncementModel with _$AnnouncementModel {
  const factory AnnouncementModel({
    required int id,
    required String name,
    required String description,
    required int author,
    required City city,
    @JsonKey(name: 'ad_type') required AnnouncementType announcementType,
    required String price,
    required List<dynamic>? videos,
    required List<AnnouncementImage> images,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'main_category') required Category mainCategory,
    @JsonKey(name: "additional_category") required Category additionalCategory,
    @JsonKey(name: "sub_category") required SubCategory subCategory,
    required Attribute attribute,
    @JsonKey(name: "additional_attribute")
    required AdditionalAttribute additionalAttribute,
    @JsonKey(name: "subattribute") required SubAttribute subAttribute,
  }) = _AnnouncementModel;

  factory AnnouncementModel.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementModelFromJson(json);
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
class AnnouncementType with _$AnnouncementType {
  const factory AnnouncementType({
    required String type,
  }) = _AnnouncementType;

  factory AnnouncementType.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementTypeFromJson(json);
}

@freezed
class AnnouncementImage with _$AnnouncementImage {
  const factory AnnouncementImage({
    required int id,
    required int ad,
    required String image,
  }) = _AnnouncementImage;

  factory AnnouncementImage.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementImageFromJson(json);
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
