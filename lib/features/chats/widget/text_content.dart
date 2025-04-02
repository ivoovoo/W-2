import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_network/features/comments/widget/avatar_in_comments_page.dart';
import 'package:social_network/generated/l10n.dart';


class TextContent extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool isCommentsPage;
  final bool haveStories;
  final String? pathToImage;
  final VoidCallback onTap;

  const TextContent({
    super.key,
    required this.text,
    required this.isSender,
    required this.isCommentsPage,
    required this.haveStories,
    this.pathToImage,
    required this.onTap,
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
          onTap: onTap,
        ),
        GestureDetector(
          key: key,
          onLongPress: () {
          _showMessageActions(context, text); // Показываем меню действий

          },
          child: Container(
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
        ),
        AvatarInCommentsPage(
          haveStories: haveStories,
          isSender: isSender,
          isCommentsPage: isCommentsPage,
          pathToImage: pathToImage,
          isLeft: false,
          onTap: () {},
        ),
      ],
    );
  }
  void _showMessageActions(BuildContext context, String messageText) {
    final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
    final RenderBox box = context.findRenderObject() as RenderBox;
    final Offset position = box.localToGlobal(Offset.zero, ancestor: overlay);

    showMenu(
      color: Colors.white,
      context: context,
      shadowColor: Colors.grey.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 0.5,color: Colors.grey.withOpacity(0.1)),
        borderRadius: BorderRadius.circular(24.0), // Основной параметр
      ),
      
      position: RelativeRect.fromLTRB(
        position.dx,
        position.dy + box.size.height,
        position.dx + box.size.width,
        position.dy + box.size.height + 48,
      ),
      items: [
        // PopupMenuItem(
        //   child: Row(
        //     children: [
        //       const Icon(Icons.question_answer),
        //       const SizedBox(width: 10,),
        //       Text(S.of(context).answer,),
        //     ],
        //   ),
        //   onTap: () {
        //     // Реализация для ответа
        //     // _forwardMessage(messageText);
        //   },
        // ),
        PopupMenuItem(
          child: Row(
            children: [
              const Icon(Icons.copy),
              const SizedBox(width: 10,),
              Text(S.of(context).copy,),
            ],
          ),
          onTap: () {
            Clipboard.setData(ClipboardData(text: messageText));
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Текст скопирован')),
            );
          },
        ),
        PopupMenuItem(
          child: Row(
            children: [
              const Icon(Icons.edit),
              const SizedBox(width: 10,),
              Text(S.of(context).change,),
            ],
          ),
          onTap: () {
            // Реализация редактирования сообщения
            // _editMessage(messageText);
          },
        ),
        PopupMenuItem(
          child: Row(
            children: [
              const Icon(Icons.arrow_circle_right_outlined),
              const SizedBox(width: 10,),
              Text(S.of(context).forward,),
            ],
          ),
          onTap: () {
            // Реализация пересылки сообщения
            // _forwardMessage(messageText);
          },
        ),
      ],
    );
  }
}
