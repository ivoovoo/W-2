import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../size_model.dart';

class LevelScreen extends StatefulWidget {
  @override
  _LevelScreenState createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: getHeight(context, 100),
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            SvgPicture.asset(
              'assets/images/svg/navigation_bar.svg',
              alignment: Alignment.center,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding:  EdgeInsets.only(top: getHeight(context, 20), left: getWidth(context, 25), right: getWidth(context, 25)),
              child: Row(
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: getWidth(context, 65),
                          height: getHeight(context, 65),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 231, 146, 1),
                              border: const GradientBoxBorder(
                                width: 4,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(255, 168, 0, 1),
                                      Color.fromRGBO(181, 87, 0, 1),
                                    ]),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    child: SvgPicture.asset(
                                        'assets/images/svg/Hammer.svg'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: getWidth(context, 40),
                        top: getHeight(context, 40),
                        child: SizedBox(
                          width: getWidth(context, 20),
                          height: getHeight(context, 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              border: const GradientBoxBorder(
                                width: 2,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(255, 168, 0, 1),
                                      Color.fromRGBO(181, 87, 0, 1),
                                    ]),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Color.fromRGBO(142, 64, 24, 1),
                                  fontFamily: 'GROBOLD',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(-1, 1),
                                      color:
                                          Color.fromRGBO(255, 255, 255, 0.81),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: getWidth(context, 65),
                          height: getHeight(context, 65),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 231, 146, 1),
                              border: const GradientBoxBorder(
                                width: 4,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(255, 168, 0, 1),
                                      Color.fromRGBO(181, 87, 0, 1),
                                    ]),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    child: SvgPicture.asset(
                                        'assets/images/svg/Arrow.svg'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: getWidth(context, 40),
                        top: getHeight(context, 40),
                        child: SizedBox(
                          width: getWidth(context, 20),
                          height: getHeight(context, 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              border: const GradientBoxBorder(
                                width: 2,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(255, 168, 0, 1),
                                      Color.fromRGBO(181, 87, 0, 1),
                                    ]),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Color.fromRGBO(142, 64, 24, 1),
                                  fontFamily: 'GROBOLD',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(-1, 1),
                                      color:
                                          Color.fromRGBO(255, 255, 255, 0.81),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: getWidth(context, 65),
                          height: getHeight(context, 65),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 231, 146, 1),
                              border: const GradientBoxBorder(
                                width: 4,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(255, 168, 0, 1),
                                      Color.fromRGBO(181, 87, 0, 1),
                                    ]),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    child: SvgPicture.asset(
                                        'assets/images/svg/Bomb.svg'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: getWidth(context, 40),
                        top: getHeight(context, 40),
                        child: SizedBox(
                          width: getWidth(context, 20),
                          height: getHeight(context, 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              border: const GradientBoxBorder(
                                width: 2,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(255, 168, 0, 1),
                                      Color.fromRGBO(181, 87, 0, 1),
                                    ]),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Color.fromRGBO(142, 64, 24, 1),
                                  fontFamily: 'GROBOLD',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(-1, 1),
                                      color:
                                          Color.fromRGBO(255, 255, 255, 0.81),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: getWidth(context, 65),
                          height: getHeight(context, 65),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 231, 146, 1),
                              border: const GradientBoxBorder(
                                width: 4,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(255, 168, 0, 1),
                                      Color.fromRGBO(181, 87, 0, 1),
                                    ]),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    child: SvgPicture.asset(
                                        'assets/images/svg/Dice.svg'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: getWidth(context, 40),
                        top: getHeight(context, 40),
                        child: SizedBox(
                          width: getWidth(context, 20),
                          height: getHeight(context, 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              border: const GradientBoxBorder(
                                width: 2,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(255, 168, 0, 1),
                                      Color.fromRGBO(181, 87, 0, 1),
                                    ]),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Color.fromRGBO(142, 64, 24, 1),
                                  fontFamily: 'GROBOLD',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(-1, 1),
                                      color:
                                          Color.fromRGBO(255, 255, 255, 0.81),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: getHeight(context, 100),
        automaticallyImplyLeading: false,
        flexibleSpace: SizedBox(
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/png/levelappbar.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: getWidth(context, 15), right: getHeight(context, 5), left: getHeight(context, 5)),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Score',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'GROBOLD',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: getWidth(context, 88),
                          height: getHeight(context, 48),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 231, 146, 1),
                                border: const GradientBoxBorder(
                                  width: 4,
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(255, 168, 0, 1),
                                        Color.fromRGBO(181, 87, 0, 1),
                                      ]),
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                '25000',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(149, 75, 37, 1),
                                  fontFamily: 'GROBOLD',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        const Text(
                          'Target',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'GROBOLD',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: getWidth(context, 142),
                          height: getHeight(context, 48),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 231, 146, 1),
                                border: const GradientBoxBorder(
                                  width: 4,
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(255, 168, 0, 1),
                                        Color.fromRGBO(181, 87, 0, 1),
                                      ]),
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/svg/Blueball.svg',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 22),
                                    child: SizedBox(
                                      height: getHeight(context, 20),
                                      width: getWidth(context, 21),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                          border: const GradientBoxBorder(
                                            width: 2,
                                            gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color.fromRGBO(
                                                      255, 168, 0, 1),
                                                  Color.fromRGBO(181, 87, 0, 1),
                                                ]),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(11),
                                        ),
                                        child: const Padding(
                                          padding:
                                              EdgeInsets.only(top: 3, left: 5),
                                          child: Text(
                                            '2',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromRGBO(
                                                  149, 75, 37, 1),
                                              fontFamily: 'GROBOLD',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        const Text(
                          'Moves',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'GROBOLD',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: getWidth(context, 73),
                          height: getHeight(context, 48),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 231, 146, 1),
                                border: const GradientBoxBorder(
                                  width: 4,
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(255, 168, 0, 1),
                                        Color.fromRGBO(181, 87, 0, 1),
                                      ]),
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                '13',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(149, 75, 37, 1),
                                  fontFamily: 'GROBOLD',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: EdgeInsets.only(top: getHeight(context, 50)),
          child: const ProgressIndicatorExample(
            progress: 45,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/svg/Startlevel.svg',
            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.center,
            child: Stack(
              children: [
                SizedBox(
                  width: 385,
                  height: 385,
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(26, 33, 45, 0.95),
                        border: Border.all(
                          width: 4,
                          color: const Color.fromRGBO(208, 217, 226, 1),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: SizedBox(
                    width: 375,
                    height: 375,
                    child: SvgPicture.asset(
                      'assets/images/svg/gameplay.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProgressIndicatorExample extends StatelessWidget {
  final double progress;

  const ProgressIndicatorExample({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(

        width: getWidth(context, 500),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width:  getWidth(context, 336),
              child: LinearProgressIndicator(
                value: progress / 100,
                borderRadius: BorderRadius.circular(3),
                minHeight: getHeight(context, 12),
                valueColor: const AlwaysStoppedAnimation<Color>(
                  Color.fromRGBO(255, 184, 2, 1),
                ),
                backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: getWidth(context, 150), bottom: 5),
              child: SvgPicture.asset(
                width: getWidth(context, 35),
                height: getHeight(context, 35),
                'assets/images/svg/Starfill.svg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: getWidth(context, 150), bottom: 5),
              child: SvgPicture.asset(
                width: getWidth(context, 35),
                height: getHeight(context, 35),
                'assets/images/svg/Star.svg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: getWidth(context, 321), bottom: 5),
              child: SvgPicture.asset(
                width: getWidth(context, 35),
                height: getHeight(context, 35),
                'assets/images/svg/Star.svg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
