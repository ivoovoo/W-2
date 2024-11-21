import 'dart:convert';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:social_network/core/utils/token_funcs.dart';
import 'package:social_network/features/chats/model/content_model.dart';
import 'package:social_network/features/chats/model/message_model.dart';

import '../widget.dart';

class ChatScreen extends StatefulWidget {
  final int chatId;

  const ChatScreen({
    super.key,
    required this.chatId,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final audioPlayer = AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool isPlaying = false;
  List<Message> messages = [];
  late WebSocket socket;
  ChatPartner chatPartner = const ChatPartner(id: -1, username: 'Null');
  late int userId;

  @override
  void initState() {
    _connectToSocket();
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
      var token = await getToken();
      var user = await getUserData();
      userId = user['user_id'];
      print('Токен: $token');

      socket = await WebSocket.connect(
        'ws://45.153.191.237:8000/ws/chat/${widget.chatId}/',
        headers: {
          'Cookie': 'access_token=$token',
        },
      );
      print('Подключено к серверу WebSocket');

      socket.listen((data) {
        print('Получено сообщение: $data');
        final parsedData = json.decode(data);

        // Если это история чата
        if (parsedData['history'] != null) {
          final history = (parsedData['history'] as List)
              .map((e) => Message.fromJson(e))
              .toList();

          // Добавляем историю только один раз
          setState(() {
            if (messages.isEmpty) {
              messages.addAll(history);
            } else {
              messages.add(history.last);
            }
          });
        }
        if (parsedData['chat_partner'] != null) {
          final chatPartnerr = ChatPartner.fromJson(parsedData['chat_partner']);
          setState(() {
            chatPartner = chatPartnerr;
          });
        }
        // // Если это отдельное сообщение
        // if (parsedData['message'] != null) {
        //   final newMessage = Message(
        //     room: widget.chatId,
        //     sender: chatPartner.id, // ID отправителя (или получателя)
        //     messageText: parsedData['message'],
        //     createdAt:
        //         TimeOfDay.now().format(context), // или переданный createdAt
        //   );
        //
        //   setState(() {
        //     messages.add(newMessage);
        //   });
        // }
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

  void _sendMessage(String message) {
    if (message.isNotEmpty) {
      // Создаем JSON объект с сообщением
      final jsonMessage = json.encode({
        'message': message,
        'image': '',
      });
      socket.add(jsonMessage); // Отправляем JSON сообщение
      print('Отправлено сообщение: $jsonMessage');
    }
  }

  @override
  void dispose() {
    socket.close(); // Закрытие соединения при уничтожении виджета
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.paddingOf(context);
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
                    Navigator.pop(context);
                  },
                ),
                Column(
                  children: [
                    Text(
                      '@${chatPartner.username}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000),
                        fontSize: 20,
                        fontFamily: 'Inter',
                      ),
                    ),
                    const Text(
                      'Онлайн',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff00ffd1),
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 21,
                  backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/smiley-man-relaxing-outdoors_23-2148739334.jpg',
                  ),
                ),
              ],
            ),
            Expanded(
              child: messages.isEmpty
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
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        final message = messages[index];
                        return Align(
                          alignment: message.sender == userId
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          child: TextContent(
                            text: message.messageText,
                            isSender: message.sender == userId,
                            isCommentsPage: false,
                            pathToImage: '',
                            haveStories: false,
                          ),
                        );
                        // if (message.contentType == ContentType.Text) {
                        //   return Align(
                        //     alignment: message.isSender
                        //         ? Alignment.centerRight
                        //         : Alignment.centerLeft,
                        //     child: TextContent(
                        //       text: message.content,
                        //       isSender: message.isSender,
                        //       isCommentsPage: false,
                        //       pathToImage: '',
                        //       haveStories: false,
                        //     ),
                        //   );
                        // } else if (message.contentType == ContentType.Audio) {
                        //   return Align(
                        //     alignment: message.isSender
                        //         ? Alignment.centerRight
                        //         : Alignment.centerLeft,
                        //     child: AudioContent(
                        //       isSender: message.isSender,
                        //       url: message.content,
                        //       isCommentsPage: false,
                        //       haveStories: false,
                        //       pathToImage: '',
                        //     ),
                        //   );
                        // } else if (message.contentType == ContentType.Image) {
                        //   return Align(
                        //     alignment: message.isSender
                        //         ? Alignment.centerRight
                        //         : Alignment.centerLeft,
                        //     child: ImageContent(
                        //       url: message.content,
                        //       isCommentsPage: false,
                        //       isSender: message.isSender,
                        //       haveStories: false,
                        //       pathToImage: '',
                        //     ),
                        //   );
                        // } else if (message.contentType == ContentType.Video) {
                        //   return Align(
                        //     alignment: message.isSender
                        //         ? Alignment.centerRight
                        //         : Alignment.centerLeft,
                        //     child: VideoContent(
                        //       videoPath: message.content,
                        //       isCommentsPage: false,
                        //       pathToImage: '',
                        //       isSender: message.isSender,
                        //       haveStories: false,
                        //     ),
                        //   );
                        // } else if (message.contentType == ContentType.Sticker) {
                        //   return Align(
                        //     alignment: message.isSender
                        //         ? Alignment.centerRight
                        //         : Alignment.centerLeft,
                        //     child: StickerContent(
                        //       url: message.content,
                        //       // Предполагается, что это URL наклейки
                        //       isCommentsPage: false,
                        //       isSender: message.isSender,
                        //       haveStories: false,
                        //       pathToImage: '',
                        //     ),
                        //   );
                        // } else {
                        //   return SizedBox.shrink(); // Если тип не известен
                        // }
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 10);
                      },
                    ),
            ),
            MessageInputWidget(
              onSend: (String content, ContentType contentType) {
                _sendMessage(content);
                // setState(() {
                //   messages.add(
                //     ContentModel(
                //       id: DateTime.now().millisecondsSinceEpoch,
                //       contentType: contentType,
                //       content: content,
                //       isSender: true,
                //     ),
                //   );
                // });
              },
            ),
            SizedBox(height: padding.bottom),
          ],
        ),
      ),
    );
  }
}
