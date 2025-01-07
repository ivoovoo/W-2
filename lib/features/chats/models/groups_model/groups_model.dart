import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/features/profile/model/user_model.dart';

part 'groups_model.freezed.dart';
part 'groups_model.g.dart';

@freezed
class GroupsModel with _$GroupsModel {
  const factory GroupsModel({
    @JsonKey(name: 'user_groups') required List<UserGroup> userGroups,
  }) = _GroupsModel;

  factory GroupsModel.fromJson(Map<String, dynamic> json) =>
      _$GroupsModelFromJson(json);
}

@freezed
class UserGroup with _$UserGroup {
  const factory UserGroup({
    required int id,
    required String name,
    @JsonKey(name: "group_image") required String? groupImage,
    required UserModel creator,
    required List<int> members,
  }) = _UserGroup;

  factory UserGroup.fromJson(Map<String, dynamic> json) =>
      _$UserGroupFromJson(json);
}
