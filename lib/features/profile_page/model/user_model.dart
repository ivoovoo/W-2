import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/core/models/video_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String username,
    required String? email,
    @JsonKey(name: 'last_online') DateTime? lastOnline,
    @JsonKey(name: 'is_online') required bool? isOnline,
    @JsonKey(name: 'follow_you') required bool followYou,
    @JsonKey(name: 'follow_him') required bool followHim,
    @JsonKey(name: 'subscribers_count') required int subscribersCount,
    @JsonKey(name: 'subscriptions_count') required int subscriptionsCount,
    @JsonKey(name: 'user_videos') required List<Video> userVideos,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
