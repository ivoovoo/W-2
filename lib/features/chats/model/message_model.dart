import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required int room,
    required int sender,
    @JsonKey(name: 'message_text') required String messageText,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
class ChatPartner with _$ChatPartner {
  const factory ChatPartner({
    required int id,
    required String username,
  }) = _ChatPartner;

  factory ChatPartner.fromJson(Map<String, dynamic> json) =>
      _$ChatPartnerFromJson(json);
}

@freezed
class ChatResponse with _$ChatResponse {
  const factory ChatResponse({
    List<Message>? history,
    @JsonKey(name: 'chat_partner') ChatPartner? chatPartner,
  }) = _ChatResponse;

  factory ChatResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseFromJson(json);
}
