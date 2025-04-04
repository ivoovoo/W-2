import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/features/chats/models/chats_model/chat_response_model.dart';
import 'package:social_network/features/chats/repositories/chats_repository/chats_repository.dart';

part 'chats_event.dart';
part 'chats_state.dart';
part 'chats_bloc.freezed.dart';

class ChatsBloc extends Bloc<ChatsEvent, ChatsState> {
  final ChatsRepository chatsRepository;
  ChatsBloc(this.chatsRepository) : super(const ChatsState.initial()) {
    on<ChatsEvent>(
      (event, emit) => event.map(
        init: (event) => _onInit(emit),
        deleteChat: (event) => _onDeleteChat(event, emit),
      ),
    );
  }

  Future<void> _onInit(Emitter<ChatsState> emit) async {
    emit(const ChatsState.loadInProgress());
    try {
      final responseModel = await chatsRepository.getChats();
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(ChatsState.loadSuccess(responseModel));
    } catch (e) {
      emit(
        ChatsState.loadFailure(e.toString()),
      );
    }
  }

  Future<void> _onDeleteChat(
      ChatsEventDeleteChat event, Emitter<ChatsState> emit) async {
    emit(const ChatsState.loadInProgress());
    try {
      await chatsRepository.deleteChat(event.chatId);
      final responseModel = await chatsRepository.getChats();
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(ChatsState.loadSuccess(responseModel));
    } catch (e) {
      emit(
        ChatsState.loadFailure(e.toString()),
      );
    }
  }
}
