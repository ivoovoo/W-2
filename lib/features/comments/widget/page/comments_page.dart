import 'dart:convert';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/core/router/app_router_names.dart';
import 'package:social_network/features/comments/model/comment_model.dart';

import '../../../../generated/l10n.dart';
import '../../../chats/models/chats_model/content_model.dart';
import '../../../chats/widget/widget.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({
    super.key,
    required this.videoId,
  });

  final int videoId;

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  final audioPlayer = AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool isPlaying = false;
  List<Comment> comments = [];
  late WebSocket socket;
  late int userId;
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    _connectToSocket();
    _scrollToEnd();
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

  void _connectToSocket() async {
    try {
      String token = context
          .read<SharedPreferences>()
          .getString(LocalStorageKeys.authToken)!;
      userId =
          context.read<SharedPreferences>().getInt(LocalStorageKeys.userId)!;
      print('Токен: $token');

      socket = await WebSocket.connect(
        'ws://45.153.191.237/ws/video/${widget.videoId}/',
        headers: {
          'Cookie': 'access_token=$token',
          "Content-Type": "application/json",
        },
      );
      print('Подключено к серверу WebSocket');

      socket.listen((data) {
        print('Получено сообщение: $data');
        final parsedData = json.decode(data);

        // Если это история чата
        if (parsedData['history'] != null) {
          final history = (parsedData['history'] as List)
              .map((e) => Comment.fromJson(e))
              .toList();

          // Добавляем историю только один раз
          setState(() {
            if (comments.isEmpty) {
              comments.addAll(history);
            }
          });
        }
        if (parsedData['comment_type'] != null) {
          final newComment = Comment(
            commentType: parsedData['comment_type'],
            content: parsedData['content'],
            createdAt:
                parsedData['created_at'] ?? DateTime.now().toIso8601String(),
            author: parsedData['author_id'],
          );

          setState(() {
            comments.add(newComment);
            _scrollToEnd();
          });
        }
      }, onError: (error) {
        print('Ошибка: $error');
      });

      socket.done.then((_) {
        print('Соединение закрыто');
      });
    } catch (e) {
      print('Ошибка при подключении: $e');
    }
  }

  void _sendMessage(dynamic content, ContentType contentType) {
    if (contentType == ContentType.Text) {
      if (content.isNotEmpty) {
        final jsonMessage = json.encode({'comment_text': content});
        socket.add(jsonMessage); // Отправляем JSON сообщение
        print('Отправлено сообщение: $jsonMessage');
      }
    } else if (contentType == ContentType.Video) {
      if (content != null) {
        final jsonMessage = json.encode({'comment_video': content});
        socket.add(jsonMessage); // Отправляем JSON сообщение
        print('Отправлено сообщение: $jsonMessage');
      }
    } else if (contentType == ContentType.Image) {
      if (content != null) {
        final jsonMessage = json.encode({'comment_image': content});
        socket.add(jsonMessage); // Отправляем JSON сообщение
        print('Отправлено сообщение: $jsonMessage');
      }
    } else if (contentType == ContentType.Audio) {
      if (content != null) {
        final jsonMessage = json.encode({'comment_voice': content});
        socket.add(jsonMessage); // Отправляем JSON сообщение
        print('Отправлено сообщение: $jsonMessage');
      }
    }
  }

  void _scrollToEnd() {
    if (scrollController.hasClients) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  void dispose() {
    socket.close(); // Закрытие соединения при уничтожении виджета
    audioPlayer.dispose();
    scrollController.dispose();
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
                  '${S.of(context).comments} ${comments.length}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                    fontSize: 20,
                    fontFamily: 'Inter',
                  ),
                ),
                Lottie.asset(
                  'assets/json/avatar.json',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                // CircleAvatar(
                //   radius: 21,
                //   backgroundImage: NetworkImage(
                //     'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
                //   ),
                // ),
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
                      controller: scrollController,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      itemCount: comments.length,
                      itemBuilder: (context, index) {
                        final message = comments[index];

                        if (message.commentType == 'text' ||
                            message.commentType == 'comment_text') {
                          return Align(
                            alignment: message.author == userId
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: TextContent(
                              onTap: () {
                                context.pushNamed(
                                  AppRouterNames.otherProfile,
                                  extra: message.author,
                                );
                              },
                              text: message.content,
                              isSender: message.author == userId,
                              isCommentsPage: true,
                              haveStories: true,
                              pathToImage:
                                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
                            ),
                          );
                        } else if (message.commentType == 'voice' ||
                            message.commentType == 'comment_voice') {
                          return Align(
                            alignment: message.author == userId
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: AudioContent(
                              onTap: () {
                                context.pushNamed(
                                  AppRouterNames.otherProfile,
                                  extra: message.author,
                                );
                              },
                              isSender: message.author == userId,
                              url: message.content,
                              isCommentsPage: true,
                              haveStories: true,
                              pathToImage:
                                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
                            ),
                          );
                        } else if (message.commentType == 'image' ||
                            message.commentType == 'comment_image') {
                          return Align(
                            alignment: message.author == userId
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: ImageContent(
                              onTap: () {
                                context.pushNamed(
                                  AppRouterNames.otherProfile,
                                  extra: message.author,
                                );
                              },
                              url: message.content,
                              isCommentsPage: true,
                              pathToImage:
                                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
                              isSender: message.author == userId,
                              haveStories: true,
                            ),
                          );
                        } else if (message.commentType == 'video' ||
                            message.commentType == 'comment_video') {
                          return Align(
                            alignment: message.author == userId
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: VideoContent(
                              videoPath: message.content,
                              isCommentsPage: true,
                              isSender: message.author == userId,
                              haveStories: true,
                              onTap: () {
                                context.pushNamed(
                                  AppRouterNames.otherProfile,
                                  extra: message.author,
                                );
                              },
                              pathToImage:
                                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
                            ),
                          );
                        } else if (message.commentType == 'sticker' ||
                            message.commentType == 'comment_sticker') {
                          return Align(
                            alignment: message.author == userId
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: StickerContent(
                              url: message.content,
                              onTap: () {
                                context.pushNamed(
                                  AppRouterNames.otherProfile,
                                  extra: message.author,
                                );
                              },
                              isCommentsPage: true,
                              pathToImage:
                                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
                              isSender: message.author == userId,
                              haveStories: true,
                            ),
                          );
                        } else {
                          return const SizedBox
                              .shrink(); // Если тип не известен
                        }
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 10);
                      },
                    ),
            ),
            MessageInputWidget(
              onSend: (dynamic content, ContentType contentType) {
                _sendMessage(content, contentType);
              },
            ),
          ],
        ),
      ),
    );
  }
}
