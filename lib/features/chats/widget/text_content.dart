import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:social_network/features/comments/widget/avatar_in_comments_page.dart';
import 'package:social_network/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
            child: Linkify(
              onOpen: (link) => _showLinkPreview(context, link.url),
              text: text,
              options: LinkifyOptions(humanize: true),
              // Отключает преобразование ссылок в "человеческий" вид
              style: TextStyle(
                color: isSender ? Colors.white : Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
              ),
              linkStyle: TextStyle(
                  color: isSender ? Colors.white : Colors.blue,
                  decoration: TextDecoration.none, // Отключаем подчеркивание
                  fontWeight: FontWeight.w600),
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
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
    final RenderBox box = context.findRenderObject() as RenderBox;
    final Offset position = box.localToGlobal(Offset.zero, ancestor: overlay);

    showMenu(
      color: Colors.white,
      context: context,
      shadowColor: Colors.grey.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 0.5, color: Colors.grey.withOpacity(0.1)),
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
              const SizedBox(
                width: 10,
              ),
              Text(
                S.of(context).copy,
              ),
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
              const SizedBox(
                width: 10,
              ),
              Text(
                S.of(context).change,
              ),
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
              const SizedBox(
                width: 10,
              ),
              Text(
                S.of(context).forward,
              ),
            ],
          ),
          onTap: () {
            // Реализация пересылки сообщения
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.9,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    child: Column(
                      children: [
                        // Шапка с заголовком и кнопкой закрытия
                        Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(
                                  color: Colors.grey.shade300, width: 1),
                            )),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                   Text(S.of(context).forward,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  // IconButton(
                                  //     icon: const Icon(Icons.close),
                                  //     onPressed: () => Navigator.pop(context)),
                                ])),

                        // Список контактов
                        // Expanded(
                        //   child: ListView.builder(
                        //     itemCount: contacts.length, // Ваш список контактов
                        //     itemBuilder: (context, index) {
                        //       final contact = contacts[index];
                        //       return ListTile(
                        //         leading: CircleAvatar(
                        //             backgroundImage:
                        //                 NetworkImage(contact.avatarUrl)),
                        //         title: Text(contact.name),
                        //         subtitle: Text(contact.lastMessage),
                        //         onTap: () {
                        //           // _forwardMessage(messageText, contact.id); // Пересылка
                        //           Navigator.pop(
                        //               context); // Закрыть bottom sheet
                        //         },
                        //       );
                        //     },
                        //   ),
                        // ),
                      ],
                    ),
                  );
                });
          },
        ),
      ],
    );
  }

  void _showLinkPreview(BuildContext context, String url) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: LinkPreviewScreen(url: url),
      ),
    );
  }
}

class LinkPreviewScreen extends StatefulWidget {
  final String url;

  const LinkPreviewScreen({Key? key, required this.url}) : super(key: key);

  @override
  _LinkPreviewScreenState createState() => _LinkPreviewScreenState();
}

class _LinkPreviewScreenState extends State<LinkPreviewScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Блюр-эффект для верхней части
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).padding.top + 60,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(color: Colors.black.withOpacity(0.1)),
            ),
          ),

          // Основное содержимое
          Column(
            children: [
              // Хедер с кнопкой закрытия
              Container(
                height: 80 + MediaQuery.of(context).padding.top,
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 40,
                      right: 16,
                      child: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    // Center(
                    //   child: Text(
                    //     widget.url,
                    //     maxLines: 1,
                    //     overflow: TextOverflow.ellipsis,
                    //     style: const TextStyle(fontSize: 16),
                    //   ),
                    // ),
                  ],
                ),
              ),

              Expanded(
                child: WebViewWidget(controller: _controller),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
