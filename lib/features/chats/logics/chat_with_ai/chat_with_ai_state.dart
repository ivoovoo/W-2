part of 'chat_with_ai_bloc.dart';

@freezed
class ChatWithAiState with _$ChatWithAiState {
  const factory ChatWithAiState.initial() = ChatWithAiInitialState;

  const factory ChatWithAiState.loadInProgress() =
      ChatWithAiLoadInProgressState;

  const factory ChatWithAiState.loadSuccess(String response) =
      ChatWithAiLoadSuccessState;

  const factory ChatWithAiState.loadFailure(String error) =
      ChatWithAiLoadFailureState;
}
