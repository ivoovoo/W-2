class MessageModel {
  MessageModel(
      {required this.imageUrl,
      required this.ownerName,
      required this.lastMessage,
      this.isActive = false,
      this.isTyping = false,
      this.notReadedMessagesCount = 0});

  final String imageUrl;
  final String ownerName;
  final String lastMessage;
  final bool isActive;
  final bool isTyping;
  final int notReadedMessagesCount;
}
