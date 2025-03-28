// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apps_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppsModelImpl _$$AppsModelImplFromJson(Map<String, dynamic> json) =>
    _$AppsModelImpl(
      sites: (json['sites'] as List<dynamic>)
          .map((e) => AppModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AppsModelImplToJson(_$AppsModelImpl instance) =>
    <String, dynamic>{
      'sites': instance.sites,
    };

_$AppModelImpl _$$AppModelImplFromJson(Map<String, dynamic> json) =>
    _$AppModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String,
      siteImage: json['site_image'] as String?,
      user: (json['user'] as num).toInt(),
      categorySite: (json['category_site'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$AppModelImplToJson(_$AppModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'url': instance.url,
      'site_image': instance.siteImage,
      'user': instance.user,
      'category_site': instance.categorySite,
    };
