class ContentModel {
  final int id;
  final ContentType contentType;
  final dynamic content;
  final bool isSender;

  ContentModel({
    required this.id,
    required this.contentType,
    required this.content,
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
