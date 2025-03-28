// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      room: (json['room'] as num?)?.toInt(),
      roomGroup: (json['room_group'] as num?)?.toInt(),
      sender: (json['sender'] as num).toInt(),
      createdAt: json['created_at'] as String,
      messageRead: json['message_read'] as String?,
      messageType: json['message_type'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'room': instance.room,
      'room_group': instance.roomGroup,
      'sender': instance.sender,
      'created_at': instance.createdAt,
      'message_read': instance.messageRead,
      'message_type': instance.messageType,
      'content': instance.content,
    };

_$ChatPartnerImpl _$$ChatPartnerImplFromJson(Map<String, dynamic> json) =>
    _$ChatPartnerImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
    );

Map<String, dynamic> _$$ChatPartnerImplToJson(_$ChatPartnerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };

_$ChatResponseImpl _$$ChatResponseImplFromJson(Map<String, dynamic> json) =>
    _$ChatResponseImpl(
      history: (json['history'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      chatPartner: json['chat_partner'] == null
          ? null
          : ChatPartner.fromJson(json['chat_partner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatResponseImplToJson(_$ChatResponseImpl instance) =>
    <String, dynamic>{
      'history': instance.history,
      'chat_partner': instance.chatPartner,
    };
