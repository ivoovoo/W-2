part of 'chat_with_ai_bloc.dart';

@freezed
class ChatWithAiEvent with _$ChatWithAiEvent {
  const factory ChatWithAiEvent.sendMessage(String message) =
      SendMessageChatWithAiEvent;
}
