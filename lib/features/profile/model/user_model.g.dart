// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      email: json['email'] as String?,
      city: json['city'] as String?,
      lastOnline: json['last_online'] == null
          ? null
          : DateTime.parse(json['last_online'] as String),
      isOnline: json['is_online'] as bool?,
      followYou: json['follow_you'] as bool,
      followHim: json['follow_him'] as bool,
      subscribersCount: (json['subscribers_count'] as num).toInt(),
      subscriptionsCount: (json['subscriptions_count'] as num).toInt(),
      userVideos: (json['user_videos'] as List<dynamic>)
          .map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
      profilePictures: (json['profile_pictures'] as List<dynamic>?)
          ?.map((e) => AvatarImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      averageRating: (json['average_rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'city': instance.city,
      'last_online': instance.lastOnline?.toIso8601String(),
      'is_online': instance.isOnline,
      'follow_you': instance.followYou,
      'follow_him': instance.followHim,
      'subscribers_count': instance.subscribersCount,
      'subscriptions_count': instance.subscriptionsCount,
      'user_videos': instance.userVideos,
      'profile_pictures': instance.profilePictures,
      'average_rating': instance.averageRating,
    };

_$AvatarImageImpl _$$AvatarImageImplFromJson(Map<String, dynamic> json) =>
    _$AvatarImageImpl(
      image: json['image'] as String,
    );

Map<String, dynamic> _$$AvatarImageImplToJson(_$AvatarImageImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
    };
