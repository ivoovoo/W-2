import 'package:social_network/src/features/chats/model/content_model.dart';

class CommentModel {
  final bool haveStories;
  final String pathToImage;
  final int id;
  final ContentType contentType;
  final String content;
  final bool isSender;

  CommentModel({
    required this.pathToImage,
    required this.id,
    required this.contentType,
    required this.content,
    required this.isSender,
    required this.haveStories,
  });
}
