import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../screens/level_screen.dart';

class StartLevelDialog extends StatefulWidget {
  const StartLevelDialog({super.key});

  @override
  State<StartLevelDialog> createState() => _StartLevelDialogState();
}

class _StartLevelDialogState extends State<StartLevelDialog> {
  @override
  Widget build(BuildContext context) {
    int levelIndex = 1;

    return AlertDialog(
      backgroundColor: Colors.transparent,
      content: Center(
        child: SizedBox(
          width: 333,
          height: 367.32,
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/images/svg/settingsdialog_bg.svg',
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Level $levelIndex',
                    style: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'GROBOLD',
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(-1.27, 1.27),
                          color: Color.fromRGBO(0, 0, 0, 0.81),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    right: 25,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.cancel_outlined,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(-1.0, 1.0),
                          color: Color.fromRGBO(0, 0, 0, 0.81),
                        ),
                      ],
                    ),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    iconSize: 28,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 70,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 77,
                          width: 135,
                          child: SvgPicture.asset(
                            'assets/images/svg/0stars.svg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Select boosts:',
                        style: TextStyle(
                          color: Color.fromRGBO(142, 64, 24, 1),
                          fontFamily: 'GROBOLD',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(-1, 1),
                              color: Color.fromRGBO(255, 255, 255, 0.81),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: SizedBox(
                              width: 48,
                              height: 48,
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 4, // Blur radius
                                    ),
                                  ],
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
                                        width: 26,
                                        height: 36,
                                        child: SvgPicture.asset(
                                            'assets/images/svg/bomb_boost.svg'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 28,
                            top: 28,
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  border: const GradientBoxBorder(
                                    width: 1.5,
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color.fromRGBO(255, 168, 0, 1),
                                          Color.fromRGBO(181, 87, 0, 1),
                                        ]),
                                  ),
                                  borderRadius: BorderRadius.circular(11),
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
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.81),
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
                      const SizedBox(
                        width: 20,
                      ),
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: SizedBox(
                              width: 48,
                              height: 48,
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 4, // Blur radius
                                    ),
                                  ],
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
                                        width: 26,
                                        height: 36,
                                        child: SvgPicture.asset(
                                            'assets/images/svg/potion_boost.svg'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 28,
                            top: 28,
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  border: const GradientBoxBorder(
                                    width: 1.5,
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color.fromRGBO(255, 168, 0, 1),
                                          Color.fromRGBO(181, 87, 0, 1),
                                        ]),
                                  ),
                                  borderRadius: BorderRadius.circular(11),
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
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.81),
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
                      const SizedBox(
                        width: 20,
                      ),
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: SizedBox(
                              width: 48,
                              height: 48,
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 4, // Blur radius
                                    ),
                                  ],
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
                                        width: 26,
                                        height: 36,
                                        child: SvgPicture.asset(
                                            'assets/images/svg/diamond_boost.svg'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 28,
                            top: 28,
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  border: const GradientBoxBorder(
                                    width: 1.5,
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color.fromRGBO(255, 168, 0, 1),
                                          Color.fromRGBO(181, 87, 0, 1),
                                        ]),
                                  ),
                                  borderRadius: BorderRadius.circular(11),
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
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.81),
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
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LevelScreen()),
                      );
                    },
                    child: SvgPicture.asset(
                      'assets/images/svg/play_button.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
