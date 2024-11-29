import 'dart:convert';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/features/comments/model/comment_model.dart';
import 'package:social_network/features/comments/model/comments_model.dart';
import 'package:social_network/features/comments/repository/comments_repository.dart';

import '../../../../core/utils/token_funcs.dart';
import '../../../chats/model/content_model.dart';
import '../../../chats/model/message_model.dart';
import '../../../chats/widget/widget.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({super.key});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  final audioPlayer = AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool isPlaying = false;
  List<CommentModel> comments = [];
  CommentsModel commentsModel = CommentsRepository.commentsModel;
  late WebSocket socket;
  late int userId;

  @override
  void initState() {
    comments = commentsModel.listOfComments;
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
    super.initState();
  }

  // void _connectToSocket() async {
  //   try {
  //     var token = await getToken();
  //     var user = await getUserData();
  //     userId = user['user_id'];
  //     print('Токен: $token');
  //
  //     socket = await WebSocket.connect(
  //       'ws://45.153.191.237:8000/ws/',
  //       headers: {
  //         'Cookie': 'access_token=$token',
  //       },
  //     );
  //     print('Подключено к серверу WebSocket');
  //
  //     socket.listen((data) {
  //       print('Получено сообщение: $data');
  //       final parsedData = json.decode(data);
  //
  //       // Если это история чата
  //       if (parsedData['history'] != null) {
  //         final history = (parsedData['history'] as List)
  //             .map((e) => Message.fromJson(e))
  //             .toList();
  //
  //         // Добавляем историю только один раз
  //         setState(() {
  //           if (messages.isEmpty) {
  //             messages.addAll(history);
  //           } else {
  //             messages.add(history.last);
  //           }
  //         });
  //       }
  //       if (parsedData['chat_partner'] != null) {
  //         final chatPartnerr = ChatPartner.fromJson(parsedData['chat_partner']);
  //         setState(() {
  //           chatPartner = chatPartnerr;
  //         });
  //       }
  //       // Если это отдельное сообщение
  //       if (parsedData['message'] != null) {
  //         final newMessage = Message(
  //           room: widget.chatId,
  //           sender: parsedData['sender_id'], // ID отправителя (или получателя)
  //           messageText: parsedData['message'],
  //           createdAt:
  //           TimeOfDay.now().format(context), // или переданный createdAt
  //         );
  //
  //         setState(() {
  //           messages.add(newMessage);
  //         });
  //       }
  //     }, onError: (error) {
  //       print('Ошибка: $error');
  //     });
  //
  //     socket.done.then((_) {
  //       print('Соединение закрыто');
  //     });
  //   } catch (e) {
  //     print('Ошибка при подключении: $e');
  //   }
  // }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10,
        ),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 22,
                  ),
                  onPressed: () {
                    context.pop();
                  },
                ),
                Text(
                  'Комментарии ${commentsModel.listOfComments.length}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                    fontSize: 20,
                    fontFamily: 'Inter',
                  ),
                ),
                CircleAvatar(
                  radius: 21,
                  backgroundImage: NetworkImage(
                    commentsModel.pathToImage,
                  ),
                ),
              ],
            ),
            Expanded(
              child: comments.isEmpty
                  ? Center(
                      child: Image.asset(
                        'assets/images/empty_chat.gif',
                        width: 200,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    )
                  : ListView.separated(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      itemCount: comments.length,
                      itemBuilder: (context, index) {
                        final message = comments[index];

                        if (message.contentType == ContentType.Text) {
                          return Align(
                            alignment: message.isSender
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: TextContent(
                              text: message.content,
                              isSender: message.isSender,
                              isCommentsPage: true,
                              haveStories: message.haveStories,
                              pathToImage: message.pathToImage,
                            ),
                          );
                        } else if (message.contentType == ContentType.Audio) {
                          return Align(
                            alignment: message.isSender
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: AudioContent(
                              isSender: message.isSender,
                              url: message.content,
                              isCommentsPage: true,
                              haveStories: message.haveStories,
                              pathToImage:
                                  'https://media.gettyimages.com/id/171165631/photo/new-york-ny-actor-andrew-garfield-enters-the-the-amazing-spiderman-2-movie-set-in-madison.jpg?s=612x612&w=gi&k=20&c=-_Bka-ZL0g3aI6Zz4TaU1EPDlGgNUEx_3HGOCmcy2-U=',
                            ),
                          );
                        } else if (message.contentType == ContentType.Image) {
                          return Align(
                            alignment: message.isSender
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: ImageContent(
                              url: message.content,
                              isCommentsPage: true,
                              pathToImage: message.pathToImage,
                              isSender: message.isSender,
                              haveStories: message.haveStories,
                            ),
                          );
                        } else if (message.contentType == ContentType.Video) {
                          return Align(
                            alignment: message.isSender
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: VideoContent(
                              videoPath: message.content,
                              isCommentsPage: true,
                              isSender: message.isSender,
                              haveStories: message.haveStories,
                              pathToImage: message.pathToImage,
                            ),
                          );
                        } else if (message.contentType == ContentType.Sticker) {
                          return Align(
                            alignment: message.isSender
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: StickerContent(
                              url: message.content,
                              // Предполагается, что это URL наклейки
                              isCommentsPage: true,
                              pathToImage: message.pathToImage,
                              isSender: message.isSender,
                              haveStories: message.haveStories,
                            ),
                          );
                        } else {
                          return SizedBox.shrink(); // Если тип не известен
                        }
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 10);
                      },
                    ),
            ),
            MessageInputWidget(
              onSend: (String content, ContentType contentType) {
                setState(() {
                  comments.add(
                    CommentModel(
                      id: DateTime.now().millisecondsSinceEpoch,
                      contentType: contentType,
                      content: content,
                      pathToImage:
                          'https://media.gettyimages.com/id/171165631/photo/new-york-ny-actor-andrew-garfield-enters-the-the-amazing-spiderman-2-movie-set-in-madison.jpg?s=612x612&w=gi&k=20&c=-_Bka-ZL0g3aI6Zz4TaU1EPDlGgNUEx_3HGOCmcy2-U=',
                      isSender: true,
                      haveStories: true,
                    ),
                  );
                });
                return;
              },
            ),
          ],
        ),
      ),
    );
  }
}
