import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'edit_profile_dialog.dart';

class SettingsDialog extends StatefulWidget {
  const SettingsDialog({super.key});

  @override
  State<SettingsDialog> createState() => _SettingsDialogState();
}

class _SettingsDialogState extends State<SettingsDialog> {
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
                    'Settings',
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 110,
                    left: 75,
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {

                        },
                        child: SvgPicture.asset('assets/images/svg/sound.svg'),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        'Sound',
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
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 110,
                    right: 75,
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {

                        },
                        child: SvgPicture.asset('assets/images/svg/music.svg'),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        'Music',
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
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: SvgPicture.asset(
                    'assets/images/svg/line.svg',
                    width: 194,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 225),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                            barrierColor: Colors.transparent.withOpacity(0),
                            context: context,
                            builder: (context) => const EditProfileDialog(),
                          );
                        },
                        child: SvgPicture.asset(
                            'assets/images/svg/edit_profile.svg'),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        'Edit Profile',
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
