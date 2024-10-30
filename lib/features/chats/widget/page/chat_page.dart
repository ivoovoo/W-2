import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:social_network/features/chats/model/chat_model.dart';
import 'package:social_network/features/chats/model/content_model.dart';
import 'package:social_network/features/chats/widget/video_content.dart';

import '../widget.dart';

class ChatScreen extends StatefulWidget {
  final ChatModel chatModel;

  const ChatScreen({
    super.key,
    required this.chatModel,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final audioPlayer = AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool isPlaying = false;
  List<ContentModel> messages = [];

  @override
  void initState() {
    messages = widget.chatModel.messages;
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
                    Navigator.pop(context);
                  },
                ),
                Column(
                  children: [
                    Text(
                      widget.chatModel.nameOfChat,
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
                    widget.chatModel.pathToImage,
                  ),
                ),
              ],
            ),
            Expanded(
              child: widget.chatModel.messages.isEmpty
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

                        if (message.contentType == ContentType.Text) {
                          return Align(
                            alignment: message.isSender
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: TextContent(
                              text: message.content,
                              isSender: message.isSender,
                              isCommentsPage: false,
                              pathToImage: '',
                              haveStories: false,
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
                              isCommentsPage: false,
                              haveStories: false,
                              pathToImage: '',
                            ),
                          );
                        } else if (message.contentType == ContentType.Image) {
                          return Align(
                            alignment: message.isSender
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: ImageContent(
                              url: message.content,
                              isCommentsPage: false,
                              isSender: message.isSender,
                              haveStories: false,
                              pathToImage: '',
                            ),
                          );
                        } else if (message.contentType == ContentType.Video) {
                          return Align(
                            alignment: message.isSender
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: VideoContent(
                              videoPath: message.content,
                              isCommentsPage: false,
                              pathToImage: '',
                              isSender: message.isSender,
                              haveStories: false,
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
                              isCommentsPage: false,
                              isSender: message.isSender,
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
              onSend: (String content, ContentType contentType) {
                setState(() {
                  messages.add(
                    ContentModel(
                      id: DateTime.now().millisecondsSinceEpoch,
                      contentType: contentType,
                      content: content,
                      isSender: true,
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
