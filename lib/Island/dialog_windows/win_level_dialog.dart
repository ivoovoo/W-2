import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/level_map_screen.dart';
import '../style/text_style.dart';

class WinLevelDialog extends StatefulWidget {
  const WinLevelDialog({super.key});

  @override
  State<WinLevelDialog> createState() => _WinLevelDialogState();
}

class _WinLevelDialogState extends State<WinLevelDialog> {
  @override
  Widget build(BuildContext context) {
    int levelIndex = 1;
    int gameScore = 45623;
    int targetCount = 42;

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
              const Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'You Win',
                    style: TextStyle(
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
                            'assets/images/svg/3stars.svg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 200,
                              height: 20,
                              child: Row(
                                children: [
                                  const Text(
                                    'Target:',
                                    style: TextStyle(
                                      color: Color.fromRGBO(142, 64, 24, 1),
                                      fontFamily: 'GROBOLD',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      shadows: <Shadow>[
                                        Shadow(
                                          offset: Offset(-1.27, 1.27),
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.81),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  GradientTextStyle(
                                    '$targetCount',
                                    gradient: const LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Color.fromRGBO(238, 136, 1, 1),
                                          Color.fromRGBO(255, 189, 20, 1)
                                        ]),
                                    style: const TextStyle(
                                      fontFamily: 'GROBOLD',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      shadows: <Shadow>[
                                        Shadow(
                                          offset: Offset(-1.27, 1.27),
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.81),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              width: 200,
                              height: 20,
                              child: Row(
                                children: [
                                  const Text(
                                    'Your Score:',
                                    style: TextStyle(
                                      color: Color.fromRGBO(142, 64, 24, 1),
                                      fontFamily: 'GROBOLD',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      shadows: <Shadow>[
                                        Shadow(
                                          offset: Offset(-1.27, 1.27),
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.81),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  GradientTextStyle(
                                    '$gameScore',
                                    gradient: const LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Color.fromRGBO(238, 136, 1, 1),
                                          Color.fromRGBO(255, 189, 20, 1)
                                        ]),
                                    style: const TextStyle(
                                      fontFamily: 'GROBOLD',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      shadows: <Shadow>[
                                        Shadow(
                                          offset: Offset(-1.27, 1.27),
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.81),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 123,
                            height: 42,
                            child: SvgPicture.asset(
                              'assets/images/svg/coin_bg.svg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25, top: 3),
                            child: SizedBox(
                              width: 28,
                              height: 34,
                              child: SvgPicture.asset(
                                'assets/images/svg/coin.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 60,
                            top: 8,
                            child: Text(
                              '50+',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'GROBOLD',
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const LevelMapScreen()),
                          );
                        },
                        child: SizedBox(
                          width: 44,
                          height: 44,
                          child: SvgPicture.asset(
                              'assets/images/svg/level_list_button.svg'),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                          width: 44,
                          height: 44,
                          child: SvgPicture.asset(
                              'assets/images/svg/play_button.svg'),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: 44,
                          height: 44,
                          child: SvgPicture.asset(
                              'assets/images/svg/replay_button.svg'),
                        ),
                      ),
                    ],
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

/*
                      Text('Target:'),
                      SizedBox(
                        width: 5,
                      ),
                      Text('data'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Your Score:'),
                      SizedBox(
                        width: 5,
                      ),
                      Text('data'),
                    ],
                  ), */
