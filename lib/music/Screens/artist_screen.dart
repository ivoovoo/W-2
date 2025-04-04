import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
    )..repeat(reverse: true); // Repeat the animation in reverse

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
        Color interpolatedColor1 = Color.lerp(Color.fromRGBO(34, 77, 129, 1.0), Color.fromRGBO(4, 31, 66, 1.0), _animation.value)!;
        Color interpolatedColor2 = Color.lerp(Color.fromRGBO(4, 31, 66, 1.0), Color.fromRGBO(34, 77, 129, 1.0), _animation.value)!;

        return Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(21, 49, 83, 1),
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
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 160),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10,
                ),
                child: Text(
                  'Childish Gambino',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Donald McKinley Glover Jr. (born September 25, 1983),\nalso known by the stage name Childish Gambino, is an Ame...',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
              Container(
                height: 208,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  children: [
                    AlbumElement(
                      imgPath: 'assets/Album 1.png',
                      name: 'Awaken, My Love',
                      description: 'Album • 2016 ',
                      color1: Colors.blueAccent,
                      color2: Colors.greenAccent,
                    ),
                    AlbumElement(
                      imgPath: 'assets/Album 2.png',
                      name: 'Awaken, My Love',
                      description: 'Album • 2016  ',
                      color2: Colors.pink,
                      color1: Colors.purple,
                    ),
                    AlbumElement(
                      imgPath: 'assets/Album 3.png',
                      name: 'Feels Like Summer',
                      description: 'Album • 2016 ',
                      color1: Colors.yellow,
                      color2: Colors.yellowAccent,
                    ),
                  ],
                ),
              ),
              Container(
                height: 198,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [ColumElement(), ColumElement(), ColumElement()],
                ),
              ),
              Container(
                height: 65,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16,
                  ),
                  child: Row(
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
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Redbone',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
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
                            onPressed:
                                loaded
                                    ? () async {
                                      if (player.position.inSeconds >= 10) {
                                        await player.seek(
                                          Duration(
                                            seconds:
                                                player.position.inSeconds - 10,
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
                            onPressed:
                                loaded
                                    ? () {
                                      if (playing) {
                                        pauseMusic();
                                      } else {
                                        playMusic();
                                      }
                                    }
                                    : null,
                            icon: Icon(
                              playing ? Icons.pause : Icons.play_arrow,
                              color:
                                  playing
                                      ? Color.fromRGBO(0, 149, 233, 1)
                                      : Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed:
                                loaded
                                    ? () async {
                                      if (player.position.inSeconds + 10 <=
                                          player.duration!.inSeconds) {
                                        await player.seek(
                                          Duration(
                                            seconds:
                                                player.position.inSeconds + 10,
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: StreamBuilder(
                  stream: player.positionStream,
                  builder: (context, snapshot1) {
                    final Duration duration =
                        loaded
                            ? snapshot1.data as Duration
                            : const Duration(seconds: 0);
                    return StreamBuilder(
                      stream: player.bufferedPositionStream,
                      builder: (context, snapshot2) {
                        final Duration bufferedDuration =
                            loaded
                                ? snapshot2.data as Duration
                                : const Duration(seconds: 0);
                        return SizedBox(
                          height: 10,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: ProgressBar(
                              progress: duration,
                              total:
                                  player.duration ?? const Duration(seconds: 0),
                              buffered: bufferedDuration,
                              timeLabelPadding: 0,
                              barHeight: 4,
                              thumbRadius: 2,
                              timeLabelTextStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.transparent,
                              ),
                              progressBarColor: Color.fromRGBO(54, 196, 245, 1),
                              baseBarColor: Color.fromRGBO(54, 196, 245, 1),
                              bufferedBarColor: Color.fromRGBO(54, 196, 245, 1),
                              thumbColor: Color.fromRGBO(54, 196, 245, 1),
                              onSeek:
                                  loaded
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
              ),
            ],
          ),
        );
      },
    );
  }
}
