import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EditProfileDialog extends StatefulWidget {
  const EditProfileDialog({super.key});

  @override
  State<EditProfileDialog> createState() => _EditProfileDialogState();
}

class _EditProfileDialogState extends State<EditProfileDialog> {
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
                    'Edit Profile',
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
                padding: const EdgeInsets.only(top: 90, left: 48),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 85),
                      child: Text(
                        'Change name',
                        style: TextStyle(
                          color: Color.fromRGBO(142, 64, 24, 1),
                          fontFamily: 'GROBOLD',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(-1.27, 1.27),
                              color: Color.fromRGBO(255, 255, 255, 0.81),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    SizedBox(
                      width: 186,
                      height: 38,
                      child: TextField(
                        style: const TextStyle(
                          color: Color.fromRGBO(142, 64, 24, 1),
                          fontFamily: 'GROBOLD',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        cursorColor: const Color.fromRGBO(142, 64, 24, 1),
                        decoration: InputDecoration(
                          fillColor: const Color.fromRGBO(255, 255, 255, 1),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(255, 146, 0, 1),
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(255, 146, 0, 1),
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                          ),
                          filled: true,
                          contentPadding: const EdgeInsets.all(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        'Change profile picture',
                        style: TextStyle(
                          color: Color.fromRGBO(142, 64, 24, 1),
                          fontFamily: 'GROBOLD',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(-1.27, 1.27),
                              color: Color.fromRGBO(255, 255, 255, 0.81),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    SizedBox(
                      height: 114,
                      width: 186,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(
                            width: 2,
                            color: const Color.fromRGBO(255, 146, 0, 1),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ListView(),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Stack(
                        children: [
                          SvgPicture.asset(
                              'assets/images/svg/accept_button.svg', fit: BoxFit.cover,),
                          const Padding(
                            padding: EdgeInsets.only(top: 15, left: 20),
                            child: Text(
                              'Accept',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
