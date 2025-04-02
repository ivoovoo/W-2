class ContentModel {
  final int id;
  final ContentType contentType;
  final DateTime dateTime;
  final dynamic content;
  final bool isSender;

  ContentModel({
    required this.id,
    required this.contentType,
    required this.content,
    required this.dateTime,
    required this.isSender,
  });
}

enum ContentType {
  Text,
  Audio,
  Image,
  Sticker,
  Video,
}
