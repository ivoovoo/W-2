part of 'chats_bloc.dart';

@freezed
class ChatsState with _$ChatsState {
  const factory ChatsState.initial() = ChatsInitialState;

  const factory ChatsState.loadInProgress() = ChatsLoadInProgressState;

  const factory ChatsState.loadSuccess(ChatResponse chats) =
      ChatsLoadSuccessState;

  const factory ChatsState.loadFailure(String error) = ChatsLoadFailureState;
}
