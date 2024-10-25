import 'package:flutter/material.dart';
import 'package:social_network/src/features/chats/widget/page/chat_page.dart';
import 'package:social_network/src/features/comments/widget/avatar_in_comments_page.dart';

import '../repository/chats_repository.dart';

class ImageContent extends StatelessWidget {
  final String url;
  final bool isCommentsPage;
  final bool isSender;
  final bool haveStories;
  final String? pathToImage;

  const ImageContent({
    super.key,
    required this.url,
    required this.isCommentsPage,
    required this.isSender,
    required this.haveStories,
    this.pathToImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment:
          isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        AvatarInCommentsPage(
          haveStories: haveStories,
          isSender: isSender,
          isCommentsPage: isCommentsPage,
          pathToImage: pathToImage,
          isLeft: true,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ChatScreen(chatModel: ChatsRepository.chats.first),
              ),
            );
          },
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            url,
            width: 171,
            height: 130,
            fit: BoxFit.cover,
          ),
        ),
        AvatarInCommentsPage(
          haveStories: haveStories,
          isSender: isSender,
          isCommentsPage: isCommentsPage,
          pathToImage: pathToImage,
          isLeft: false,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ChatScreen(chatModel: ChatsRepository.chats.first),
              ),
            );
          },
        ),
      ],
    );
  }
}
