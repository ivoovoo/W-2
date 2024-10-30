import 'package:social_network/features/chats/model/content_model.dart';

class ChatModel {
  final String nameOfChat;
  final String pathToImage;
  final int unreadMessages;
  final bool haveStories;
  final List<ContentModel> messages;

  ChatModel({
    required this.nameOfChat,
    required this.pathToImage,
    required this.unreadMessages,
    required this.haveStories,
    required this.messages,
  });
}
