// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interest_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InterestResponseImpl _$$InterestResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InterestResponseImpl(
      interests: (json['interests'] as List<dynamic>)
          .map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InterestResponseImplToJson(
        _$InterestResponseImpl instance) =>
    <String, dynamic>{
      'interests': instance.interests,
    };

_$InterestImpl _$$InterestImplFromJson(Map<String, dynamic> json) =>
    _$InterestImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      imageInterest: json['image_interest'] as String?,
    );

Map<String, dynamic> _$$InterestImplToJson(_$InterestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_interest': instance.imageInterest,
    };
