import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/core/router/app_router.dart';
import 'package:social_network/core/router/app_router_names.dart';
import 'package:social_network/features/comments/widget/avatar_in_comments_page.dart';

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
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) =>
            //         ChatScreen(chatModel: ChatsRepository.chats.first),
            //   ),
            // );
          },
        ),
        InkWell(
          onTap: () {
            context.pushNamed(
              AppRouterNames.content,
              extra: 'http://45.153.191.237$url',
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'http://45.153.191.237$url',
              width: 171,
              height: 130,
              fit: BoxFit.cover,
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
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) =>
            //         ChatScreen(chatModel: ChatsRepository.chats.first),
            //   ),
            // );
          },
        ),
      ],
    );
  }
}
