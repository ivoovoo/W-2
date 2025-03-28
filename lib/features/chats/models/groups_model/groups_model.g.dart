// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupsModelImpl _$$GroupsModelImplFromJson(Map<String, dynamic> json) =>
    _$GroupsModelImpl(
      userGroups: (json['user_groups'] as List<dynamic>)
          .map((e) => UserGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GroupsModelImplToJson(_$GroupsModelImpl instance) =>
    <String, dynamic>{
      'user_groups': instance.userGroups,
    };

_$UserGroupImpl _$$UserGroupImplFromJson(Map<String, dynamic> json) =>
    _$UserGroupImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      groupImage: json['group_image'] as String?,
      creator: UserModel.fromJson(json['creator'] as Map<String, dynamic>),
      members: (json['members'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$UserGroupImplToJson(_$UserGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'group_image': instance.groupImage,
      'creator': instance.creator,
      'members': instance.members,
    };
