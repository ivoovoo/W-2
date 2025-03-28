// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertisement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvertisementResponseImpl _$$AdvertisementResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvertisementResponseImpl(
      myAdvertisements: (json['my_ads'] as List<dynamic>)
          .map((e) => AdvertisementModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AdvertisementResponseImplToJson(
        _$AdvertisementResponseImpl instance) =>
    <String, dynamic>{
      'my_ads': instance.myAdvertisements,
    };

_$AdvertisementModelImpl _$$AdvertisementModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvertisementModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      author: (json['author'] as num).toInt(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      advertisementType:
          AdvertisementType.fromJson(json['ad_type'] as Map<String, dynamic>),
      price: json['price'] as String,
      videos: json['videos'] as List<dynamic>?,
      images: (json['images'] as List<dynamic>)
          .map((e) => AdvertisementImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String,
      mainCategory:
          Category.fromJson(json['main_category'] as Map<String, dynamic>),
      additionalCategory: json['additional_category'] == null
          ? null
          : Category.fromJson(
              json['additional_category'] as Map<String, dynamic>),
      subCategory: json['sub_category'] == null
          ? null
          : SubCategory.fromJson(json['sub_category'] as Map<String, dynamic>),
      attribute: json['attribute'] == null
          ? null
          : Attribute.fromJson(json['attribute'] as Map<String, dynamic>),
      additionalAttribute: json['additional_attribute'] == null
          ? null
          : AdditionalAttribute.fromJson(
              json['additional_attribute'] as Map<String, dynamic>),
      subAttribute: json['subattribute'] == null
          ? null
          : SubAttribute.fromJson(json['subattribute'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdvertisementModelImplToJson(
        _$AdvertisementModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'author': instance.author,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'ad_type': instance.advertisementType,
      'price': instance.price,
      'videos': instance.videos,
      'images': instance.images,
      'created_at': instance.createdAt,
      'main_category': instance.mainCategory,
      'additional_category': instance.additionalCategory,
      'sub_category': instance.subCategory,
      'attribute': instance.attribute,
      'additional_attribute': instance.additionalAttribute,
      'subattribute': instance.subAttribute,
    };

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      id: (json['id'] as num).toInt(),
      cityName: json['city_name'] as String,
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'city_name': instance.cityName,
    };

_$AdvertisementTypeImpl _$$AdvertisementTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvertisementTypeImpl(
      type: json['type'] as String,
    );

Map<String, dynamic> _$$AdvertisementTypeImplToJson(
        _$AdvertisementTypeImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$AdvertisementImageImpl _$$AdvertisementImageImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvertisementImageImpl(
      id: (json['id'] as num).toInt(),
      ad: (json['ad'] as num).toInt(),
      image: json['image'] as String,
    );

Map<String, dynamic> _$$AdvertisementImageImplToJson(
        _$AdvertisementImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ad': instance.ad,
      'image': instance.image,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$SubCategoryImpl _$$SubCategoryImplFromJson(Map<String, dynamic> json) =>
    _$SubCategoryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      additionalCategory: Category.fromJson(
          json['additional_category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubCategoryImplToJson(_$SubCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'additional_category': instance.additionalCategory,
    };

_$AttributeImpl _$$AttributeImplFromJson(Map<String, dynamic> json) =>
    _$AttributeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      mainCategory:
          Category.fromJson(json['main_category'] as Map<String, dynamic>),
      additionalCategory: Category.fromJson(
          json['additional_category'] as Map<String, dynamic>),
      subCategory:
          SubCategory.fromJson(json['subcategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttributeImplToJson(_$AttributeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'main_category': instance.mainCategory,
      'additional_category': instance.additionalCategory,
      'subcategory': instance.subCategory,
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

_$SubAttributeImpl _$$SubAttributeImplFromJson(Map<String, dynamic> json) =>
    _$SubAttributeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      additionalAttribute: AdditionalAttribute.fromJson(
          json['additional_attribute'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubAttributeImplToJson(_$SubAttributeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'additional_attribute': instance.additionalAttribute,
    };
