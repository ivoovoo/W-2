// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiteCategoriesResponseImpl _$$SiteCategoriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SiteCategoriesResponseImpl(
      siteCategories: (json['site_categories'] as List<dynamic>)
          .map((e) => SiteCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SiteCategoriesResponseImplToJson(
        _$SiteCategoriesResponseImpl instance) =>
    <String, dynamic>{
      'site_categories': instance.siteCategories,
    };

_$SiteCategoryImpl _$$SiteCategoryImplFromJson(Map<String, dynamic> json) =>
    _$SiteCategoryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$SiteCategoryImplToJson(_$SiteCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
