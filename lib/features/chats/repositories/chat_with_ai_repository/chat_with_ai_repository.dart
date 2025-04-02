import 'package:social_network/core/core.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/features/chats/data_providers/chat_with_ai_data_provider/chat_with_ai_data_provider.dart';

class ChatWithAiRepository {
  final IChatWithAiDataProvider chatWithAiDataProvider;
  final ILocalStorageDataProvider localStorageDataProvider;

  ChatWithAiRepository({
    required this.localStorageDataProvider,
    required this.chatWithAiDataProvider,
  });

  Future sendMessage(String message) {
    return chatWithAiDataProvider.sendMessage(
      message: message,
      aitoken: localStorageDataProvider.getString(LocalStorageKeys.aiToken)!,
      // csrfToken:
      //     localStorageDataProvider.getString(LocalStorageKeys.csrfToken)!,
    );
  }
}
