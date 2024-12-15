import 'dart:convert';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/core/utils/token_funcs.dart';
import 'package:social_network/features/chats/model/content_model.dart';
import 'package:social_network/features/chats/model/message_model.dart';

import '../widget.dart';

class ChatScreen extends StatefulWidget {
  final int chatId;
  final String typeOfChat;
  final String userName;

  const ChatScreen({
    super.key,
    required this.chatId,
    required this.typeOfChat,
    required this.userName,
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
  ChatPartner chatPartner = const ChatPartner(id: -1, username: '');
  late int userId;
  ScrollController scrollController = ScrollController();

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToEnd();
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
        'ws://45.153.191.237/ws/${widget.typeOfChat}/${widget.chatId}/',
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
              .map((e) => Message.fromJson(e))
              .toList();

          // Добавляем историю только один раз
          setState(() {
            if (messages.isEmpty) {
              messages.addAll(history);
            }
            _scrollToEnd();
          });
        }
        if (parsedData['chat_partner'] != null) {
          final chatPartnerr = ChatPartner.fromJson(parsedData['chat_partner']);
          setState(() {
            chatPartner = chatPartnerr;
            _scrollToEnd();
          });
        }
        // Если это отдельное сообщение
        if (parsedData['message_type'] != null) {
          final newMessage = Message(
            room: widget.chatId,
            sender: parsedData['sender_id'],
            // ID отправителя (или получателя)
            createdAt: TimeOfDay.now().format(context),
            messageRead: parsedData['message_read'],
            messageType: parsedData['message_type'],
            content: parsedData['content'], // или переданный createdAt
          );

          setState(() {
            messages.add(newMessage);
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
        final jsonMessage = json.encode({'message': content});
        socket.add(jsonMessage); // Отправляем JSON сообщение
        print('Отправлено сообщение: $jsonMessage');
      }
    } else if (contentType == ContentType.Video) {
      if (content != null) {
        final jsonMessage = json.encode({'video': content});
        socket.add(jsonMessage); // Отправляем JSON сообщение
        print('Отправлено сообщение: $jsonMessage');
      }
    } else if (contentType == ContentType.Image) {
      if (content != null) {
        final jsonMessage = json.encode({'image': content});
        socket.add(jsonMessage); // Отправляем JSON сообщение
        print('Отправлено сообщение: $jsonMessage');
      }
    } else if (contentType == ContentType.Audio) {
      if (content != null) {
        final jsonMessage = json.encode({'voice_message': content});
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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
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
            SizedBox(height: padding.top),
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
                Column(
                  children: [
                    Text(
                      '@${widget.userName == 'unknown' ? chatPartner.username : widget.userName}',
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
                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
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
                      controller: scrollController,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        final message = messages[index];
                        if (message.messageType == "text") {
                          return Align(
                            alignment: message.sender == userId
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: TextContent(
                              text: message.content,
                              isSender: message.sender == userId,
                              isCommentsPage: false,
                              pathToImage: '',
                              haveStories: false,
                            ),
                          );
                        } else if (message.messageType == "voice") {
                          return Align(
                            alignment: message.sender == userId
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: AudioContent(
                              isSender: message.sender == userId,
                              url: message.content,
                              isCommentsPage: false,
                              haveStories: false,
                              pathToImage: '',
                            ),
                          );
                        } else if (message.messageType == "image") {
                          return Align(
                            alignment: message.sender == userId
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: ImageContent(
                              url: message.content,
                              isCommentsPage: false,
                              isSender: message.sender == userId,
                              haveStories: false,
                              pathToImage: '',
                            ),
                          );
                        } else if (message.messageType == "video") {
                          return Align(
                            alignment: message.sender == userId
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: VideoContent(
                              videoPath: message.content,
                              isCommentsPage: false,
                              pathToImage: '',
                              isSender: message.sender == userId,
                              haveStories: false,
                            ),
                          );
                        } else if (message.messageType == "sticker") {
                          return Align(
                            alignment: message.sender == userId
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: StickerContent(
                              url: message.content,
                              // Предполагается, что это URL наклейки
                              isCommentsPage: false,
                              isSender: message.sender == userId,
                              haveStories: false,
                              pathToImage: '',
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
              onSend: (dynamic content, ContentType contentType) {
                _sendMessage(content, contentType);
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
