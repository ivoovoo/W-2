// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserListResponseImpl _$$UserListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserListResponseImpl(
      listUser: (json['list_user'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserListResponseImplToJson(
        _$UserListResponseImpl instance) =>
    <String, dynamic>{
      'list_user': instance.listUser,
    };
