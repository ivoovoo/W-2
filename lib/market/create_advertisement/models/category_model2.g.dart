// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryResponse2Impl _$$CategoryResponse2ImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryResponse2Impl(
      currentCategoryMain: MainCategory.fromJson(
          json['current_category_main'] as Map<String, dynamic>),
      ads: (json['ads'] as List<dynamic>)
          .map((e) => AdvertisementModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      additionalCategory: (json['additional_category'] as List<dynamic>)
          .map((e) => AdditionalCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      attributes: (json['attributes'] as List<dynamic>)
          .map((e) => Attribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      additionalAttributes: (json['additional_attributes'] as List<dynamic>)
          .map((e) => AdditionalAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      subattributes: (json['subattributes'] as List<dynamic>)
          .map((e) => Subattribute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryResponse2ImplToJson(
        _$CategoryResponse2Impl instance) =>
    <String, dynamic>{
      'current_category_main': instance.currentCategoryMain,
      'ads': instance.ads,
      'additional_category': instance.additionalCategory,
      'attributes': instance.attributes,
      'additional_attributes': instance.additionalAttributes,
      'subattributes': instance.subattributes,
    };

_$AdditionalCategoryImpl _$$AdditionalCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$AdditionalCategoryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      mainCategory:
          MainCategory.fromJson(json['main_category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdditionalCategoryImplToJson(
        _$AdditionalCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'main_category': instance.mainCategory,
    };

_$AttributeImpl _$$AttributeImplFromJson(Map<String, dynamic> json) =>
    _$AttributeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      mainCategory:
          MainCategory.fromJson(json['main_category'] as Map<String, dynamic>),
      additionalCategory: AdditionalCategory.fromJson(
          json['additional_category'] as Map<String, dynamic>),
      subcategory:
          Subcategory.fromJson(json['subcategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttributeImplToJson(_$AttributeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'main_category': instance.mainCategory,
      'additional_category': instance.additionalCategory,
      'subcategory': instance.subcategory,
    };

_$SubcategoryImpl _$$SubcategoryImplFromJson(Map<String, dynamic> json) =>
    _$SubcategoryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      additionalCategory: AdditionalCategory.fromJson(
          json['additional_category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubcategoryImplToJson(_$SubcategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'additional_category': instance.additionalCategory,
    };

_$AdditionalAttributeImpl _$$AdditionalAttributeImplFromJson(
        Map<String, dynamic> json) =>
    _$AdditionalAttributeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      attribute: Attribute.fromJson(json['attribute'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdditionalAttributeImplToJson(
        _$AdditionalAttributeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'attribute': instance.attribute,
    };

_$SubattributeImpl _$$SubattributeImplFromJson(Map<String, dynamic> json) =>
    _$SubattributeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      additionalAttribute: AdditionalAttribute.fromJson(
          json['additional_attribute'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubattributeImplToJson(_$SubattributeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'additional_attribute': instance.additionalAttribute,
    };
