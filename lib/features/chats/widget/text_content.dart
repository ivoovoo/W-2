import 'package:flutter/material.dart';
import 'package:social_network/features/chats/widget/page/chat_page.dart';
import 'package:social_network/features/comments/widget/avatar_in_comments_page.dart';

import '../repository/chats_repository.dart';

class TextContent extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool isCommentsPage;
  final bool haveStories;
  final String? pathToImage;

  const TextContent({
    super.key,
    required this.text,
    required this.isSender,
    required this.isCommentsPage,
    required this.haveStories,
    this.pathToImage,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
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
        Container(
          constraints: BoxConstraints(maxWidth: width * 0.7),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          decoration: BoxDecoration(
            color: isSender ? null : Colors.white,
            borderRadius: BorderRadius.circular(16),
            gradient: isSender
                ? const LinearGradient(
                    colors: [
                      Color(0xff478cf0),
                      Color(0xffa9f5bb),
                    ],
                  )
                : null,
            boxShadow: isSender
                ? null
                : [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      offset: const Offset(0, 0),
                      blurRadius: 15,
                    ),
                  ],
          ),
          child: Text(
            text,
            style: TextStyle(
              color: isSender ? Colors.white : Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
            ),
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
