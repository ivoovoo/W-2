import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../screens/home_screen.dart';

class TasksDialog extends StatefulWidget {
  const TasksDialog({super.key});

  @override
  State<TasksDialog> createState() => _TasksDialogState();
}

class _TasksDialogState extends State<TasksDialog> {
  @override
  Widget build(BuildContext context) {
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
                    'Tasks',
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
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 45),
                child: Column(
                  children: [
                    SizedBox(
                      height: 49,
                      width: 191,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, -1),
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
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 6,
                                  left: 8,
                                ),
                                child: Text(
                                  'World Progress',
                                  style: TextStyle(
                                    color: Color.fromRGBO(48, 79, 0, 1),
                                    fontFamily: 'GROBOLD',
                                    fontSize: 14,
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
                            Stack(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                    top: 20,
                                  ),
                                  child: ProgressIndicatorExample(
                                    currentStep: 5,
                                    totalSteps: 10,
                                    indicatorWidth: 175,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 140,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/images/svg/mini_chest.svg',
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SvgPicture.asset(
                      'assets/images/svg/line.svg',
                      width: 194,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 49,
                      width: 191,
                      child: Container(
                        decoration: BoxDecoration(boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, -1),
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
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 90,
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/svg/lamp.svg',
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      'Lamp',
                                      style: TextStyle(
                                        color: Color.fromRGBO(48, 79, 0, 1),
                                        fontFamily: 'GROBOLD',
                                        fontSize: 14,
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
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/svg/do_it_button_bg.svg'),
                                    Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 13),
                                        child: Row(
                                          children: [
                                            const Text(
                                              'Do it',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    48, 79, 0, 1),
                                                fontFamily: 'GROBOLD',
                                                fontSize: 12,
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
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 1),
                                              child: SvgPicture.asset(
                                                  'assets/images/svg/mini_key.svg'),
                                            ),
                                            const Text(
                                              '1',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    48, 79, 0, 1),
                                                fontFamily: 'GROBOLD',
                                                fontSize: 12,
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
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 49,
                      width: 191,
                      child: Container(
                        decoration: BoxDecoration(boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, -1),
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
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 90,
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/svg/well.svg',
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      'Well',
                                      style: TextStyle(
                                        color: Color.fromRGBO(48, 79, 0, 1),
                                        fontFamily: 'GROBOLD',
                                        fontSize: 14,
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
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/svg/do_it_button_bg.svg'),
                                    Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 13),
                                        child: Row(
                                          children: [
                                            const Text(
                                              'Do it',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    48, 79, 0, 1),
                                                fontFamily: 'GROBOLD',
                                                fontSize: 12,
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
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 1),
                                              child: SvgPicture.asset(
                                                  'assets/images/svg/mini_key.svg'),
                                            ),
                                            const Text(
                                              '1',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    48, 79, 0, 1),
                                                fontFamily: 'GROBOLD',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                shadows: <Shadow>[
                                                  Shadow(
                                                    offset: Offset(-1, 1),
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.81),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
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
