import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../Elements/album_element.dart';
import '../Elements/col_home.dart';

class ArtistScreen extends StatefulWidget {
  const ArtistScreen({super.key});

  @override
  State<ArtistScreen> createState() => _ArtistScreenState();
}

class _ArtistScreenState extends State<ArtistScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    loadMusic();
    _controller = AnimationController(
      duration: const Duration(seconds: 4), // Duration for the animation
      vsync: this,
    )
      ..repeat(reverse: true); // Repeat the animation in reverse

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    player.dispose();
    _controller.dispose();
    super.dispose();
  }

  String musicUrl =
      "http://codeskulptor-demos.commondatastorage.googleapis.com/pang/paza-moduless.mp3"; // Insert your music URL
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
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        Color interpolatedColor1 = Color.lerp(
            const Color.fromRGBO(34, 77, 129, 1.0),
            const Color.fromRGBO(4, 31, 66, 1.0),
            _animation.value)!;
        Color interpolatedColor2 = Color.lerp(
            const Color.fromRGBO(4, 31, 66, 1.0),
            const Color.fromRGBO(34, 77, 129, 1.0),
            _animation.value)!;

        return Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(21, 49, 83, 1),
            gradient: LinearGradient(
              colors: [
                interpolatedColor1,
                interpolatedColor2,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: Row(
              //     children: [
              //       // InkWell(
              //       //   onTap: () {},
              //       //   child: const Icon(
              //       //     Icons.arrow_back_ios_new,
              //       //     color: Colors.white,
              //       //   ),
              //       // ),
              //     ],
              //   ),
              // ),
              // const SizedBox(height: 120),
              // const Padding(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 20.0,
              //     vertical: 10,
              //   ),
              //   child: Text(
              //     'Childish Gambino',
              //     style: TextStyle(
              //       fontWeight: FontWeight.w800,
              //       fontSize: 26,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
              //   child: Text(
              //     'Donald McKinley Glover Jr. (born September 25, 1983),\nalso known by the stage name Childish Gambino, is an Ame...',
              //     style: TextStyle(
              //       fontWeight: FontWeight.w400,
              //       fontSize: 13,
              //       color: Colors.white.withOpacity(0.5),
              //     ),
              //   ),
              // ),
              Container(
                height: 220,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  children: [
                    const AlbumElement(
                      imgPath: 'assets/music/Album 1.png',
                      name: 'Awaken, My Love',
                      description: 'Song • 2016 ',
                      color1: Colors.blueAccent,
                      color2: Colors.greenAccent,
                    ),
                    const AlbumElement(
                      imgPath: 'assets/music/Album 2.png',
                      name: 'Awaken, My Love',
                      description: 'Song • 2016  ',
                      color2: Colors.pink,
                      color1: Colors.purple,
                    ),
                    const AlbumElement(
                      imgPath: 'assets/music/Album 3.png',
                      name: 'Feels Like Summer',
                      description: 'Song • 2016 ',
                      color1: Colors.yellow,
                      color2: Colors.yellowAccent,
                    ),
                  ],
                ),
              ),
              Container(
                height: 215,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const ColumElement(),
                    const ColumElement(),
                    const ColumElement()
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                height:180,
                child: Padding(
                  padding: const EdgeInsets.symmetric(

                    horizontal: 16,
                    vertical: 8,

                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 43,
                                width: 43,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Redbone',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Childish Gambino',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: loaded
                                    ? () async {
                                  if (player.position.inSeconds >= 10) {
                                    await player.seek(
                                      Duration(
                                        seconds:
                                        player.position.inSeconds -
                                            10,
                                      ),
                                    );
                                  } else {
                                    await player.seek(
                                      const Duration(seconds: 0),
                                    );
                                  }
                                }
                                    : null,
                                icon: const Icon(
                                  Icons.fast_rewind_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: loaded
                                    ? () {
                                  if (playing) {
                                    pauseMusic();
                                  } else {
                                    playMusic();
                                  }
                                }
                                    : null,
                                icon: Icon(
                                  playing ? Icons.pause_circle_outline : Icons.play_arrow_rounded,
                                  color: playing
                                      ? const Color.fromRGBO(0, 149, 233, 1)
                                      : Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: loaded
                                    ? () async {
                                  if (player.position.inSeconds + 10 <=
                                      player.duration!.inSeconds) {
                                    await player.seek(
                                      Duration(
                                        seconds:
                                        player.position.inSeconds +
                                            10,
                                      ),
                                    );
                                  } else {
                                    await player.seek(
                                      const Duration(seconds: 0),
                                    );
                                  }
                                }
                                    : null,
                                icon: const Icon(
                                  Icons.fast_forward_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      StreamBuilder(
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
                                height: 10,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                                  child: ProgressBar(
                                    progress: duration,
                                    total: player.duration ??
                                        const Duration(seconds: 0),
                                    buffered: bufferedDuration,
                                    timeLabelPadding: 0,
                                    barHeight: 4,
                                    thumbRadius: 0.5,
                                    thumbGlowRadius: 8,
                                    thumbGlowColor: Color.fromRGBO(54, 196, 245, 0.8),
                                    timeLabelTextStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.transparent,
                                    ),
                                    progressBarColor:
                                    const Color.fromRGBO(54, 196, 245, 1),
                                    baseBarColor:
                                    const Color.fromRGBO(2, 16, 21, 1.0),
                                    bufferedBarColor:
                                    const Color.fromRGBO(197, 208, 213, 1.0),
                                    thumbColor:
                                    const Color.fromRGBO(37, 98, 119, 1.0),
                                    onSeek: loaded
                                        ? (duration) async {
                                      await player.seek(duration);
                                    }
                                        : null,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
