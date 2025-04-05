import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/call_image.png'),
                // Замените на путь к вашему изображению
                fit: BoxFit.cover,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
            child: Container(
              color: Colors.black.withOpacity(
                0,
              ), // Прозрачный контейнер для размытия
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 70),
                child: Container(
                  width: double.infinity,
                  height: 142,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,                  children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/call_image2.png'),
                            SizedBox(width: 25),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Calvin Flores ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'call you',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/take.svg'),
                                  Text(
                                    '  Reply',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Color.fromRGBO(64, 216, 26, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/not_take.svg'),
                                  Text(
                                    '  Decline',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Color.fromRGBO(255, 0, 0, 1),
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
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.asset(
                  'assets/call_image.png',
                  width: 160,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 12,),
              Text('Mother ❤',style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),),
              Text('03:12',style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset('assets/Chat.svg'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 0, 0, 1),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(child: SvgPicture.asset('assets/center.svg'))),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset('assets/right.svg'),
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
}
