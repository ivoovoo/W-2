import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/features/profile/model/user_model.dart';

part 'users_model.freezed.dart';
part 'users_model.g.dart';

@freezed
class UserListResponse with _$UserListResponse {
  const factory UserListResponse({
    @JsonKey(name: 'list_user') required List<UserModel> listUser,
  }) = _UserListResponse;

  factory UserListResponse.fromJson(Map<String, dynamic> json) =>
      _$UserListResponseFromJson(json);
}
