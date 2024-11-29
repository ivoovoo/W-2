import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_response_model.freezed.dart';

part 'chat_response_model.g.dart';

@freezed
class ChatResponse with _$ChatResponse {
  const factory ChatResponse({
    @JsonKey(name: 'current_user_chats') required List<Chat> currentUserChats,
    @JsonKey(name: 'user_id') required int userId,
  }) = _ChatResponse;

  factory ChatResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseFromJson(json);
}

@freezed
class Chat with _$Chat {
  const factory Chat({
    required int id,
    required User sender,
    required User receiver,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'last_message_text') required String lastMessageText,
    @JsonKey(name: 'last_message_time') required String lastMessageTime,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String username,
    required String email,
    required String last_online,
    required bool is_online,
    required int subscribers_count,
    required int subscriptions_count,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
