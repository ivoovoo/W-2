// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatResponseImpl _$$ChatResponseImplFromJson(Map<String, dynamic> json) =>
    _$ChatResponseImpl(
      currentUserChats: (json['current_user_chats'] as List<dynamic>)
          .map((e) => Chat.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: (json['user_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ChatResponseImplToJson(_$ChatResponseImpl instance) =>
    <String, dynamic>{
      'current_user_chats': instance.currentUserChats,
      'user_id': instance.userId,
    };

_$ChatImpl _$$ChatImplFromJson(Map<String, dynamic> json) => _$ChatImpl(
      id: (json['id'] as num).toInt(),
      sender: User.fromJson(json['sender'] as Map<String, dynamic>),
      receiver: User.fromJson(json['receiver'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      lastMessageText: json['last_message_text'] as String?,
      lastMessageTime: json['last_message_time'] as String?,
    );

Map<String, dynamic> _$$ChatImplToJson(_$ChatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'created_at': instance.createdAt.toIso8601String(),
      'last_message_text': instance.lastMessageText,
      'last_message_time': instance.lastMessageTime,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      email: json['email'] as String,
      last_online: json['last_online'] as String?,
      is_online: json['is_online'] as bool?,
      subscribers_count: (json['subscribers_count'] as num).toInt(),
      subscriptions_count: (json['subscriptions_count'] as num).toInt(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'last_online': instance.last_online,
      'is_online': instance.is_online,
      'subscribers_count': instance.subscribers_count,
      'subscriptions_count': instance.subscriptions_count,
    };
