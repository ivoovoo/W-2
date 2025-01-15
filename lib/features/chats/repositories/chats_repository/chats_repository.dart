import 'package:social_network/core/core.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/features/chats/data_providers/chats_data_provider/chats_data_provider.dart';

import '../../models/chats_model/chat_response_model.dart';

class ChatsRepository {
  final IChatsDataProvider chatsDataProvider;
  final ILocalStorageDataProvider localStorageDataProvider;

  ChatsRepository({
    required this.chatsDataProvider,
    required this.localStorageDataProvider,
  });

  Future<ChatResponse> getChats() {
    return chatsDataProvider.getChats(
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
    );
  }

  Future deleteChat(int chatId) {
    return chatsDataProvider.deleteChat(
      chatId,
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
      localStorageDataProvider.getString(LocalStorageKeys.csrfToken)!,
    );
  }
}
