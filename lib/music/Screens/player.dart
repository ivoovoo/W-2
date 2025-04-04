import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> with SingleTickerProviderStateMixin {
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
    return Scaffold(

      body: AnimatedBuilder(
        animation: _animation,
        builder: (context,child) {
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
              children: [
SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 60,),
                      Text(
                        "Playing Now",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SvgPicture.asset('assets/p1.svg'),
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/Album Cover.png',
                    // height: 350,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                // const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Baby Boy',style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                            color: Colors.white,
                          ),),
                          SizedBox(height: 10,),
                          Text('Childish Gambino',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.white.withOpacity(0.5),
                          ),),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/p2.svg'),
                          SizedBox(width: 10,),
                          SvgPicture.asset('assets/p3.svg'),
                        ],
                      ),
                    ],
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
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: ProgressBar(
                                progress: duration,
                                total: player.duration ?? const Duration(seconds: 0),
                                buffered: bufferedDuration,
                                timeLabelPadding: -1,
                                timeLabelTextStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                                progressBarColor: Color.fromRGBO(54, 196, 245, 1),
                                baseBarColor: Color.fromRGBO(33, 63, 99, 1.0),
                                bufferedBarColor: Color.fromRGBO(20, 38, 60, 1),
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
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10),
                    SvgPicture.asset('assets/p4.svg'),
                    IconButton(
                      onPressed:
                          loaded
                              ? () async {
                                if (player.position.inSeconds >= 10) {
                                  await player.seek(
                                    Duration(seconds: player.position.inSeconds - 10),
                                  );
                                } else {
                                  await player.seek(const Duration(seconds: 0));
                                }
                              }
                              : null,
                      icon: const Icon(Icons.fast_rewind_rounded,color: Colors.white,),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(0, 149, 233, 1),
                      ),
                      child: IconButton(
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
                          color: Colors.black,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed:
                          loaded
                              ? () async {
                                if (player.position.inSeconds + 10 <=
                                    player.duration!.inSeconds) {
                                  await player.seek(
                                    Duration(seconds: player.position.inSeconds + 10),
                                  );
                                } else {
                                  await player.seek(const Duration(seconds: 0));
                                }
                              }
                              : null,
                      icon: const Icon(Icons.fast_forward_rounded,color: Colors.white,),
                    ),
                    SvgPicture.asset('assets/p5.svg'),
                    const SizedBox(width: 10),
                  ],
                ),
                const Spacer(flex: 2),
              ],
            ),
          );
        }
      ),
    );
  }
}
