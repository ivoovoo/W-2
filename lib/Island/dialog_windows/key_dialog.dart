import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class KeyDialog extends StatefulWidget {
  const KeyDialog({super.key});

  @override
  State<KeyDialog> createState() => _KeyDialogState();
}

class _KeyDialogState extends State<KeyDialog> {
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
                    'Golden key',
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
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 110, left: 40),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/images/svg/gems.svg'),
                        const SizedBox(
                          width: 10,
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 30,
                              ),
                              child: SvgPicture.asset(
                                  'assets/images/svg/right_arrow.svg'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/svg/key_bg.svg'),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 30),
                                    child: SvgPicture.asset(
                                        'assets/images/svg/key.svg'),
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
                    height: 16,
                  ),
                  const Text(
                    'Beat more levels to earn \n         golden key!',
                    style: TextStyle(
                      color: Color.fromRGBO(142, 64, 24, 1),
                      fontFamily: 'GROBOLD',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(-1.27, 1.27),
                          color: Color.fromRGBO(255, 255, 255, 0.81),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/images/svg/continue_button.svg',
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 15,
                            left: 20,
                          ),
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              color: Color.fromRGBO(48, 79, 0, 1),
                              fontFamily: 'GROBOLD',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(-1, 1),
                                  color: Color.fromRGBO(255, 255, 255, 0.81),
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
            ],
          ),
        ),
      ),
    );
  }
}
