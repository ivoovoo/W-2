import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/features/chats/repositories/chat_with_ai_repository/chat_with_ai_repository.dart';

part 'chat_with_ai_event.dart';

part 'chat_with_ai_state.dart';

part 'chat_with_ai_bloc.freezed.dart';

class ChatWithAiBloc extends Bloc<ChatWithAiEvent, ChatWithAiState> {
  final ChatWithAiRepository chatWithAiRepository;

  ChatWithAiBloc(this.chatWithAiRepository)
      : super(const ChatWithAiState.initial()) {
    on<ChatWithAiEvent>(
      (event, emit) => event.map(
        sendMessage: (event) => _onSendMessage(event, emit),
      ),
    );
  }

  Future<void> _onSendMessage(
      SendMessageChatWithAiEvent event, Emitter<ChatWithAiState> emit) async {
    emit(const ChatWithAiState.loadInProgress());
    try {
      var response = await chatWithAiRepository.sendMessage(event.message);
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(ChatWithAiState.loadSuccess(response.toString()));
    } catch (e) {
      emit(
        ChatWithAiState.loadFailure(e.toString()),
      );
    }
  }
}
