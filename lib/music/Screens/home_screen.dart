import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Elements/album_element.dart';
import '../Elements/big_pic.dart';
import '../Elements/col_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true); // Repeat the animation

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int value = 4;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context,child) {
        Color interpolatedColor1 =
        Color.lerp(
          Color.fromRGBO(34, 77, 129, 1.0),
          Color.fromRGBO(4, 31, 66, 1.0),
          _animation.value,
        )!;
        Color interpolatedColor2 =
        Color.lerp(
          Color.fromRGBO(4, 31, 66, 1.0),
          Color.fromRGBO(34, 77, 129, 1.0),
          _animation.value,
        )!;
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [interpolatedColor2, interpolatedColor1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView(
            children: [
              Column(
                children: [
                  // SizedBox(height: 50,),
                  Container(
                    height: 238,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [BigPicElement(), BigPicElement(), BigPicElement()],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: AnimatedBuilder(
                        animation: _animation,
                        builder: (context,child) {
                          Color color1 = Color.lerp(Colors.white, Color.fromRGBO(66, 0, 152, 1), _animation.value)!;
                          Color color2 = Color.lerp(Color.fromRGBO(66, 0, 152, 1), Color.fromRGBO(18, 41, 71, 1), _animation.value)!;
                        return Container(
                          width: double.infinity,
                          height: 212,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              colors: [
                                color1,
                                color2,
                                // Color.fromRGBO(18, 41, 71, 1),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 15,
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset('assets/music/h11.svg'),
                                SizedBox(height: 10),
                                Text(
                                  'MY VIBE',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 30),
                                CustomSlidingSegmentedControl<int>(
                                  padding: 4,
                                  initialValue: value,
                                  children: {
                                    1: Container(
                                      width: 80,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: Colors.white.withOpacity(0.05),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'SOUL',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 13,
                                            color:
                                                value == 1
                                                    ? Colors.white
                                                    : Colors.white.withOpacity(.5),
                                          ),
                                        ),
                                      ),
                                    ),
                                    2: Container(
                                      width: 80,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: Colors.white.withOpacity(0.05),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'SLOW',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 13,
                                            color:
                                                value == 2
                                                    ? Colors.white
                                                    : Colors.white.withOpacity(.5),
                                          ),
                                        ),
                                      ),
                                    ),
                                    3: Container(
                                      width: 80,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: Colors.white.withOpacity(0.05),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'FAST',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 13,
                                            color:
                                                value == 3
                                                    ? Colors.white
                                                    : Colors.white.withOpacity(.5),
                                          ),
                                        ),
                                      ),
                                    ),
                                    4: Container(
                                      width: 80,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: Colors.white.withOpacity(0.05),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'AI',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 13,
                                            color:
                                                value == 4
                                                    ? Colors.white
                                                    : Colors.white.withOpacity(.5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  },
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  thumbDecoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.00),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  duration: Duration(milliseconds: 100),
                                  curve: Curves.easeInToLinear,
                                  onValueChanged: (v) {
                                    setState(() {
                                      value = v; // Обновляем состояние при изменении значения
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    ),
                  ),
                  Container(
                    height: 220,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ColumElement(),
                        ColumElement(),
                        ColumElement()
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      children: [
                        AlbumElement(
                          imgPath: 'assets/music/Album 1.png',
                          name: 'Awaken, My Love',
                          description: 'Album • 2016 ',
                          color1: Colors.yellow,
                          color2: Colors.yellowAccent,
                        ),
                        AlbumElement(
                          imgPath: 'assets/music/Album 2.png',
                          name: 'Because of The ...',
                          description: 'Album • 2016  ',
                          color2: Colors.pink,
                          color1: Colors.purple,
                        ),
                        AlbumElement(
                          imgPath: 'assets/music/Album 3.png',
                          name: 'Feels Like Summer',
                          description: 'Album • 2016 ',
                          color1: Colors.blueAccent,
                          color2: Colors.greenAccent,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }
    );
  }
}


