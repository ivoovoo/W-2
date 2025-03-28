// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoResponseImpl _$$VideoResponseImplFromJson(Map<String, dynamic> json) =>
    _$VideoResponseImpl(
      allVideos: (json['all_videos'] as List<dynamic>)
          .map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscribedVideos: (json['subscribed_videos'] as List<dynamic>?)
          ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VideoResponseImplToJson(_$VideoResponseImpl instance) =>
    <String, dynamic>{
      'all_videos': instance.allVideos,
      'subscribed_videos': instance.subscribedVideos,
    };

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      id: (json['id'] as num).toInt(),
      categoryVideo: json['category_video'] == null
          ? null
          : CategoryVideo.fromJson(
              json['category_video'] as Map<String, dynamic>),
      videoFile: json['video_file'] as String,
      author: json['author'] as String,
      authorId: (json['author_id'] as num).toInt(),
      viewsCount: (json['views_count'] as num).toInt(),
      createdAt: json['created_at'] as String,
      videoPreview: json['video_preview'] as String?,
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_video': instance.categoryVideo,
      'video_file': instance.videoFile,
      'author': instance.author,
      'author_id': instance.authorId,
      'views_count': instance.viewsCount,
      'created_at': instance.createdAt,
      'video_preview': instance.videoPreview,
    };

_$CategoryVideoImpl _$$CategoryVideoImplFromJson(Map<String, dynamic> json) =>
    _$CategoryVideoImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CategoryVideoImplToJson(_$CategoryVideoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
