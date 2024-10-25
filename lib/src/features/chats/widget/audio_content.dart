import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:social_network/src/features/chats/widget/page/chat_page.dart';
import 'package:social_network/src/features/comments/widget/avatar_in_comments_page.dart';

import '../repository/chats_repository.dart';

class AudioContent extends StatefulWidget {
  final bool isSender;
  final String url;
  final bool isCommentsPage;
  final bool haveStories;
  final String? pathToImage;

  const AudioContent({
    super.key,
    required this.isSender,
    required this.url,
    required this.isCommentsPage,
    required this.haveStories,
    this.pathToImage,
  });

  @override
  State<AudioContent> createState() => _AudioContentState();
}

class _AudioContentState extends State<AudioContent> {
  final audioPlayer = AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool isPlaying = false;

  @override
  void initState() {
    setAudio();

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

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.stop);
    audioPlayer.setSourceUrl(widget.url);
    // audioPlayer.setSourceUrl(
    //     'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(":");
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment:
          widget.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        AvatarInCommentsPage(
          haveStories: widget.haveStories,
          isSender: widget.isSender,
          isCommentsPage: widget.isCommentsPage,
          pathToImage: widget.pathToImage,
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
          constraints: BoxConstraints(
            maxWidth: width * 0.7,
            minWidth: width * 0.7,
          ),
          padding: const EdgeInsets.only(
            top: 5,
            bottom: 5,
            right: 14,
            left: 14,
          ),
          decoration: BoxDecoration(
            gradient: widget.isSender
                ? const LinearGradient(
                    colors: [
                      Color(0xff478cf0),
                      Color(0xffa9f5bb),
                    ],
                  )
                : null,
            color: widget.isSender ? null : Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: widget.isSender
                ? null
                : [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      offset: const Offset(0, 0),
                      blurRadius: 15,
                    ),
                  ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () async {
                      if (isPlaying) {
                        await audioPlayer.pause();
                      } else {
                        await audioPlayer.resume();
                      }
                    },
                    child: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                      size: 35,
                      color: widget.isSender ? Colors.white : Colors.black,
                    ),
                  ),
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 8),
                      ),
                      child: Slider(
                        min: 0,
                        max: duration.inSeconds.toDouble(),
                        value: position.inSeconds.toDouble(),
                        onChanged: (value) async {
                          final position = Duration(seconds: value.toInt());
                          await audioPlayer.seek(position);
                          await audioPlayer.resume();
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: 50),
                      Text(
                        formatTime(position),
                        style: TextStyle(
                          fontSize: 12,
                          color: widget.isSender ? Colors.white : Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        formatTime(duration),
                        style: TextStyle(
                          fontSize: 12,
                          color: widget.isSender ? Colors.white : Colors.black,
                        ),
                      ),
                      const SizedBox(width: 25),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        AvatarInCommentsPage(
          haveStories: widget.haveStories,
          isSender: widget.isSender,
          isCommentsPage: widget.isCommentsPage,
          pathToImage: widget.pathToImage,
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
