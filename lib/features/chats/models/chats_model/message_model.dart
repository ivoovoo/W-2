import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required int? room,
    @JsonKey(name: 'room_group') required int? roomGroup,
    required int sender,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'message_read') required String? messageRead,
    @JsonKey(name: 'message_type') required String messageType,
    required String content,
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
