import 'package:flutter/material.dart';
import 'package:social_network/src/features/chats/widget/page/chat_page.dart';

import '../../comments/widget/avatar_in_comments_page.dart';
import '../repository/chats_repository.dart';

class StickerContent extends StatelessWidget {
  final String url;
  final bool isCommentsPage;
  final bool isSender;
  final bool haveStories;
  final String? pathToImage;

  const StickerContent({
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
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  url,
                  width: 103,
                  height: 103,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 7,
                top: 7,
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.close,
                    color: Color(0xff478cf0),
                    size: 19,
                  ),
                ),
              ),
            ],
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
