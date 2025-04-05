import 'package:flutter/material.dart';

import '../size_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   image:
      //       DecorationImage(image: AssetImage('assets/images/png/Union.png')),
      // ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(17.5),
          child: Column(
            children: [
              SizedBox(height: 40,),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Meditate',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 24,
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                Navigator.pushNamed(context, '/chooseTopic');
                              },
                              child: Container(
                                width: getWidth(context, 177),
                                height: getHeight(context, 210),
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(142, 151, 253, 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: getWidth(context, 80)),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/png/basics_course.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: getHeight(context, 20),
                                      left: getWidth(context, 20),
                                      child: Text(
                                        '3-10 MIN',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 236, 204, 1),
                                          // Цвет текста
                                          fontSize: 11,
                                          fontFamily: 'HelveticaNeue',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: getHeight(context, 70),
                                      left: getWidth(context, 20),
                                      child: Text(
                                        'Basics \ncourse',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 236, 204, 1),
                                          // Цвет текста
                                          fontSize: 18,
                                          fontFamily: 'HelveticaNeue',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: getHeight(context, 5),
                                      right: getWidth(context, 5),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Container(
                                          width: getWidth(context, 70),
                                          height: getHeight(context, 35),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                            child: Text(
                                              'START',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'HelveticaNeue',
                                                fontWeight: FontWeight.w400,
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
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                Navigator.pushNamed(context, '/chooseTopic');
                              },
                              child: Container(
                                width: getWidth(context, 177),
                                height: getHeight(context, 210),
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(255, 201, 126, 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: getWidth(context, 10)),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/png/relaxation_music.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: getHeight(context, 20),
                                      left: getWidth(context, 20),
                                      child: Text(
                                        '3-10 MIN',
                                        style: TextStyle(
                                          color: Color.fromRGBO(63, 65, 78, 1),
                                          fontSize: 11,
                                          fontFamily: 'HelveticaNeue',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: getHeight(context, 95),
                                      left: getWidth(context, 15),
                                      child: Text(
                                        'Relaxation',
                                        style: TextStyle(
                                          color: Color.fromRGBO(63, 65, 78, 1),
                                          fontSize: 18,
                                          fontFamily: 'HelveticaNeue',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: getHeight(context, 70),
                                      left: getWidth(context, 15),
                                      child: Text(
                                        'MUSIC',
                                        style: TextStyle(
                                          color: Color.fromRGBO(63, 65, 78, 1),
                                          fontSize: 12,
                                          fontFamily: 'HelveticaNeue',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: getHeight(context, 5),
                                      right: getWidth(context, 5),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Container(
                                          width: getWidth(context, 70),
                                          height: getHeight(context, 35),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color:
                                                Color.fromRGBO(63, 65, 78, 1),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'START',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    254, 255, 254, 1),
                                                fontSize: 12,
                                                fontFamily: 'HelveticaNeue',
                                                fontWeight: FontWeight.w400,
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
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: getHeight(context, 20)),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        Navigator.pushNamed(context, '/chooseTopic');
                      },
                      child: Column(
                        children: [
                          Container(
                            width: getWidth(context, 374),
                            height: getHeight(context, 95),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/png/daily_thought.png'),
                              ),
                              color: Color.fromRGBO(241, 221, 207, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: getWidth(context, 30),
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Daily Thought',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontSize: 18,
                                        fontFamily: 'HelveticaNeue',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'MEDITATION • 3-10 MIN',
                                      style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontSize: 11,
                                        fontFamily: 'HelveticaNeue',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: getWidth(context, 30),
                                  ),
                                  child: IconButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                          const Color.fromRGBO(
                                              255, 255, 255, 1),
                                        ),
                                      ),
                                      onPressed: () {},
                                      icon:
                                          const Icon(Icons.play_arrow_rounded)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getHeight(context, 20),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.only(left: getWidth(context, 5)),
                        child: Row(
                          children: [
                            Container(
                              child: InkWell(
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                onTap: () {
                                  Navigator.pushNamed(context, '/chooseTopic');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: getWidth(context, 167),
                                      height: getHeight(context, 113),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/png/focus.png'),
                                        fit: BoxFit.fill,
                                      ),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(252, 245, 235, 1)),
                                    ),
                                    SizedBox(height: getHeight(context, 10)),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: getWidth(context, 30)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Focus',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      63, 65, 78, 1),
                                                  fontSize: 18,
                                                  fontFamily: 'HelveticaNeue',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'MEDATATION • 3-10 MIN',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      161, 164, 178, 1),
                                                  fontSize: 11,
                                                  fontFamily: 'HelveticaNeue',
                                                  fontWeight: FontWeight.w400,
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
                            ),
                            SizedBox(
                              width: getWidth(context, 20),
                            ),
                            Container(
                              child: InkWell(
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                onTap: () {
                                  Navigator.pushNamed(context, '/chooseTopic');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: getWidth(context, 162),
                                      height: getHeight(context, 113),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/png/happiness.png'),
                                        fit: BoxFit.fill,
                                      ),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(252, 245, 235, 1)),
                                    ),
                                    SizedBox(height: getHeight(context, 10)),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: getWidth(context, 30)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Happiness',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      63, 65, 78, 1),
                                                  fontSize: 18,
                                                  fontFamily: 'HelveticaNeue',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'MEDATATION • 3-10 MIN',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      161, 164, 178, 1),
                                                  fontSize: 11,
                                                  fontFamily: 'HelveticaNeue',
                                                  fontWeight: FontWeight.w400,
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
                            ),
                            SizedBox(
                              width: getWidth(context, 20),
                            ),
                            Container(
                              child: InkWell(
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                onTap: () {
                                  Navigator.pushNamed(context, '/chooseTopic');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 162,
                                      height: 113,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/png/focus.png'),
                                        fit: BoxFit.fill,
                                      ),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(252, 245, 235, 1)),
                                    ),
                                    SizedBox(height: getHeight(context, 10)),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: getWidth(context, 30)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Focus',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      63, 65, 78, 1),
                                                  fontSize: 18,
                                                  fontFamily: 'HelveticaNeue',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'MEDATATION • 3-10 MIN',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      161, 164, 178, 1),
                                                  fontSize: 11,
                                                  fontFamily: 'HelveticaNeue',
                                                  fontWeight: FontWeight.w400,
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
    );
  }
}
