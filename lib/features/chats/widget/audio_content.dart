import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:social_network/features/comments/widget/avatar_in_comments_page.dart';

class AudioContent extends StatefulWidget {
  final bool isSender; //если сендер я то true а если другой то false
  final String url;
  final bool isCommentsPage;
  final bool haveStories;
  final String? pathToImage;
  final VoidCallback onTap;

  const AudioContent({
    super.key,
    required this.isSender,
    required this.url,
    required this.isCommentsPage,
    required this.haveStories,
    this.pathToImage,
    required this.onTap,
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
    audioPlayer.setSourceUrl('http://45.153.191.237${widget.url}');
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
          onTap: widget.onTap,
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
            borderRadius: BorderRadius.circular(16),
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
                      isPlaying ? Icons.pause : Icons.play_arrow_rounded,
                      size: 35,
                      color: widget.isSender ? Colors.white : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 9),
                  Text(
                    formatTime(position),
                    style: TextStyle(
                      fontSize: 12,
                      color: widget.isSender ? Colors.white : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 9),
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 8),
                      ),
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor:
                              widget.isSender ? Colors.white : Colors.black,
                          // Цвет "кружка"
                          activeTrackColor:
                              widget.isSender ? Colors.white : Colors.black,
                          // Цвет активного трека (слева от "кружка")
                          inactiveTrackColor: widget.isSender
                              ? Colors.white.withOpacity(0.375)
                              : Colors.black.withOpacity(0.375),
                          // Цвет неактивного трека (справа от "кружка")
                          overlayColor: Colors.blue.withOpacity(0.2),
                          // Цвет "всплывающего" эффекта при касании
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 9),
                          // Размер "кружка"
                          trackHeight: 7.0, // Толщина трека
                        ),
                        child: Slider(
                          min: 0,
                          max: duration.inMilliseconds.toDouble(),
                          value: position.inMilliseconds.toDouble(),
                          onChanged: (value) async {
                            final position = Duration(seconds: value.toInt());
                            await audioPlayer.seek(position);
                            await audioPlayer.resume();
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         const SizedBox(width: 50),
              //         Text(
              //           formatTime(position),
              //           style: TextStyle(
              //             fontSize: 12,
              //             color: widget.isSender ? Colors.white : Colors.black,
              //           ),
              //         ),
              //       ],
              //     ),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.end,
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         Text(
              //           formatTime(duration),
              //           style: TextStyle(
              //             fontSize: 12,
              //             color: widget.isSender ? Colors.white : Colors.black,
              //           ),
              //         ),
              //         const SizedBox(width: 25),
              //       ],
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
        AvatarInCommentsPage(
          haveStories: widget.haveStories,
          isSender: widget.isSender,
          isCommentsPage: widget.isCommentsPage,
          pathToImage: widget.pathToImage,
          isLeft: false,
          onTap: () {},
        ),
      ],
    );
  }
}
