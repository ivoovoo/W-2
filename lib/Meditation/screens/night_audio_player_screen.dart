import 'dart:ui' as ui;

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:just_audio/just_audio.dart';

import '../painter.dart';
import '../size_model.dart';

class NightAudioPlayerScreen extends StatefulWidget {
  const NightAudioPlayerScreen({
    super.key,
  });

  @override
  State<NightAudioPlayerScreen> createState() => _NightAudioPlayerScreenState();
}

class _NightAudioPlayerScreenState extends State<NightAudioPlayerScreen>
    with TickerProviderStateMixin {
  ui.Image? image;
  ui.Image? image2;
  ui.Image? image3;

  late AnimationController _controller;

  @override
  void initState() {
    _load([
      'assets/images/png/blob.png',
      'assets/images/png/vector1.png',
      'assets/images/png/vector2.png',
    ]);
    loadMusic();
    _controller = AnimationController(
      duration: const Duration(seconds: 4), // Duration for the animation
      vsync: this,
    )..repeat(reverse: true); // Repeat the animation in reverse

    super.initState();
  }

  void _load(List<String> path) async {
    var bytes1 = await rootBundle.load(path[0]);
    var bytes2 = await rootBundle.load(path[1]);
    var bytes3 = await rootBundle.load(path[2]);
    image = await decodeImageFromList(bytes1.buffer.asUint8List());
    image2 = await decodeImageFromList(bytes2.buffer.asUint8List());
    image3 = await decodeImageFromList(bytes3.buffer.asUint8List());
    setState(() {});
  }

  @override
  void dispose() {
    player.dispose();
    _controller.dispose();
    super.dispose();
  }

  String musicUrl =
      "https://codeskulptor-demos.commondatastorage.googleapis.com/pang/paza-moduless.mp3"; // Insert your music URL
  // String thumbnailImgUrl = ""; // Insert your thumbnail URL
  var player = AudioPlayer();
  bool loaded = false;
  bool playing = false;

  void loadMusic() async {
    await player.setUrl(musicUrl);
    setState(() {
      loaded = true;
    });
  }

  void playMusic() async {
    setState(() {
      playing = true;
    });
    await player.play();
  }

  void pauseMusic() async {
    setState(() {
      playing = false;
    });
    await player.pause();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(250, 247, 242, 1),
      ),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(3, 23, 76, 1),
        body: CustomPaint(
          painter: ImageInsideNightPlayer(
            context: context,
            image: image,
            image2: image2,
            image3: image3,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: getHeight(context, 105),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: getWidth(context, 20),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: getWidth(context, 55),
                          height: getHeight(context, 55),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(235, 234, 236, 1),
                                // border color
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                // border width
                                child: Container(
                                  // or ClipRRect if you need to clip the content
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(
                                        230, 231, 242, 1), // inner circle color
                                  ),
                                  child: const Icon(
                                    Icons.close,
                                    color: Color.fromRGBO(63, 65, 78, 1),
                                  ), // inner content
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: getWidth(context, 20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: getWidth(context, 55),
                              height: getHeight(context, 55),
                              child: InkWell(
                                onTap: () {},
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                child: Container(
                                  // or ClipRRect if you need to clip the content
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(
                                        3, 23, 76, 0.8), // inner circle color
                                  ),
                                  child: const Icon(
                                    Icons.favorite_border,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ), // inner content
                                ),
                              ),
                            ),
                            SizedBox(
                              width: getWidth(context, 15),
                            ),
                            SizedBox(
                              width: getWidth(context, 55),
                              height: getHeight(context, 55),
                              child: InkWell(
                                onTap: () {},
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                child: Container(
                                  // or ClipRRect if you need to clip the content
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(
                                        3, 23, 76, 0.8), // inner circle color
                                  ),
                                  child: const Icon(
                                    Icons.save_alt,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ), // inner content
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: getWidth(context, 300),
                height: getHeight(context, 780),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: getHeight(context, 160),
                    ),
                    SizedBox(
                      height: getHeight(context, 100),
                      width: getWidth(context, 280),
                      child: const Column(
                        children: [
                          Text(
                            'Night Island',
                            style: TextStyle(
                                color: Color.fromRGBO(230, 231, 242, 1),
                                fontFamily: 'HelveticaNeue',
                                fontSize: 34,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'SLEEP MUSIC',
                            style: TextStyle(
                                color: Color.fromRGBO(152, 161, 189, 1),
                                fontFamily: 'HelveticaNeue',
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getHeight(context, 40),
                    ),
                    SizedBox(
                      height: getHeight(context, 220),
                      width: getWidth(context, 400),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: getWidth(context, 0),
                              ),
                              InkWell(
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                onTap: loaded
                                    ? () async {
                                        if (player.position.inSeconds >= 15) {
                                          await player.seek(
                                            Duration(
                                                seconds:
                                                    player.position.inSeconds -
                                                        15),
                                          );
                                        } else {
                                          await player.seek(
                                            const Duration(seconds: 0),
                                          );
                                        }
                                      }
                                    : null,
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: SvgPicture.asset(
                                      'assets/images/svg/night_replay_15.svg'),
                                ),
                              ),
                              InkWell(
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                onTap: loaded
                                    ? () {
                                        if (playing) {
                                          pauseMusic();
                                        } else {
                                          playMusic();
                                        }
                                      }
                                    : null,
                                child: Container(
                                  height: 110,
                                  width: 110,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(230, 231, 242, 0.3),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Container(
                                      height: 88,
                                      width: 88,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(230, 231, 242, 1),
                                      ),
                                      child: Icon(
                                        playing
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        color: const Color.fromRGBO(63, 65, 78, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                onTap: loaded
                                    ? () async {
                                        if (player.position.inSeconds + 15 <=
                                            player.duration!.inSeconds) {
                                          await player.seek(
                                            Duration(
                                                seconds:
                                                    player.position.inSeconds +
                                                        15),
                                          );
                                        } else {
                                          await player.seek(
                                            const Duration(seconds: 0),
                                          );
                                        }
                                      }
                                    : null,
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: SvgPicture.asset(
                                      'assets/images/svg/night_forward_15.svg'),
                                ),
                              ),
                              SizedBox(
                                width: getWidth(context, 0),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: getHeight(context, 40),
                            ),
                            child: StreamBuilder(
                              stream: player.positionStream,
                              builder: (context, snapshot1) {
                                final Duration duration = loaded
                                    ? snapshot1.data as Duration
                                    : const Duration(seconds: 0);
                                return StreamBuilder(
                                  stream: player.bufferedPositionStream,
                                  builder: (context, snapshot2) {
                                    final Duration bufferedDuration = loaded
                                        ? snapshot2.data as Duration
                                        : const Duration(seconds: 0);
                                    return SizedBox(
                                      height: 30,
                                      child: ProgressBar(
                                        progress: duration,
                                        thumbGlowRadius: 15,
                                        barHeight: 4,
                                        total: player.duration ??
                                            const Duration(seconds: 0),
                                        buffered: bufferedDuration,
                                        timeLabelPadding: (6.0),
                                        timeLabelTextStyle: const TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(230, 231, 242, 1),
                                        ),
                                        progressBarColor: const Color.fromRGBO(
                                            230, 231, 242, 1),
                                        baseBarColor: const Color.fromRGBO(
                                            71, 85, 126, 1),
                                        thumbColor: const Color.fromRGBO(
                                            142, 151, 253, 1),
                                        onSeek: loaded
                                            ? (duration) async {
                                                await player.seek(duration);
                                              }
                                            : null,
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*




 */
