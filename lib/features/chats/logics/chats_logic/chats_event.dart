part of 'chats_bloc.dart';

@freezed
class ChatsEvent with _$ChatsEvent {
  const factory ChatsEvent.init() = ChatsEventInit;
  const factory ChatsEvent.deleteChat(int chatId) = ChatsEventDeleteChat;
}
