// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_app_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryAppModelImpl _$$CategoryAppModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryAppModelImpl(
      siteCategories: (json['site_categories'] as List<dynamic>)
          .map((e) => AppCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryAppModelImplToJson(
        _$CategoryAppModelImpl instance) =>
    <String, dynamic>{
      'site_categories': instance.siteCategories,
    };

_$AppCategoryImpl _$$AppCategoryImplFromJson(Map<String, dynamic> json) =>
    _$AppCategoryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$AppCategoryImplToJson(_$AppCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
