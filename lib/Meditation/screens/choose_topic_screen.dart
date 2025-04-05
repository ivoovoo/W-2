import 'package:flutter/material.dart';

import '../size_model.dart';

class ChooseTopicScreen extends StatelessWidget {
  const ChooseTopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/png/Union.png'),
        ),
      ),
      child: Scaffold(
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          body: Padding(
            padding: EdgeInsets.only(
              left: getWidth(context, 20.5),
              right: getWidth(context, 20.5),
              top: getHeight(context, 20.5),
            ),
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Home',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 24,
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/chooseTopic/reminderScreen');
                          },
                          child: Container(
                            width: getWidth(context, 176),
                            height: getHeight(context, 210),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(142, 151, 253, 1),
                              // Цвет коробки
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Stack(
                              children: [
                                Center(
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/png/button_reduce_stress.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Positioned(
                                  bottom: 15,
                                  left: 20,
                                  child: Text(
                                    'Reduce Stress',
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 236, 204, 1),
                                      // Цвет текста
                                      fontSize: 18,
                                      fontFamily: 'HelveticaNeue',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: getHeight(context, 20)),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/chooseTopic/reminderScreen');
                          },
                          child: Container(
                            width: getWidth(context, 176),
                            height: getHeight(context, 167),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(254, 177, 143, 1),
                              // Цвет коробки
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Stack(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 65),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/png/increase_happiness.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 15,
                                  left: 20,
                                  child: Text(
                                    'Increase \nHappiness',
                                    style: TextStyle(
                                      color: Color.fromRGBO(63, 65, 78, 1),
                                      // Цвет текста
                                      fontSize: 18,
                                      fontFamily: 'HelveticaNeue',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: getHeight(context, 20)),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/chooseTopic/reminderScreen');
                          },
                          child: Container(
                            width: getWidth(context, 176),
                            height: getHeight(context, 220),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(108, 178, 142, 1),
                              // Цвет коробки
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/png/personal_growth.png')),
                                ),
                                Positioned(
                                  bottom: 15,
                                  left: 20,
                                  child: Text(
                                    'Personal \nGrowth',
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 236, 204, 1),
                                      // Цвет текста
                                      fontSize: 18,
                                      fontFamily: 'HelveticaNeue',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: getHeight(context, 20)),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/chooseTopic/reminderScreen');
                          },
                          child: Container(
                            width: getWidth(context, 176),
                            height: getHeight(context, 167),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(142, 151, 253, 1),
                              // Цвет коробки
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Stack(
                              children: [
                                Center(
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/png/button_reduce_stress.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Positioned(
                                  bottom: 15,
                                  left: 20,
                                  child: Text(
                                    'Reduce Stress',
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 236, 204, 1),
                                      // Цвет текста
                                      fontSize: 18,
                                      fontFamily: 'HelveticaNeue',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: getHeight(context, 100)),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/chooseTopic/reminderScreen');
                          },
                          child: Container(
                            width: getWidth(context, 176),
                            height: getHeight(context, 167),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(250, 110, 90, 1),
                              // Цвет коробки
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 55),
                                  child: Center(
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/png/improve_performance.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 15,
                                  left: 20,
                                  child: Text(
                                    'Improve \nPerformance',
                                    style: TextStyle(
                                      color: Color.fromRGBO(254, 249, 243, 1),
                                      // Цвет текста
                                      fontSize: 18,
                                      fontFamily: 'HelveticaNeue',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: getHeight(context, 20)),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/chooseTopic/reminderScreen');
                          },
                          child: Container(
                            width: getWidth(context, 176),
                            height: getHeight(context, 220),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 207, 134, 1),
                              // Цвет коробки
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Stack(
                              children: [
                                Image(
                                    image: AssetImage(
                                        'assets/images/png/reduce_anxiety.png')),
                                Positioned(
                                  bottom: 15,
                                  left: 20,
                                  child: Text(
                                    'Reduce Anxiety',
                                    style: TextStyle(
                                      color: Color.fromRGBO(63, 65, 78, 1),
                                      // Цвет текста
                                      fontSize: 18,
                                      fontFamily: 'HelveticaNeue',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: getHeight(context, 20)),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/chooseTopic/reminderScreen');
                          },
                          child: Container(
                            width: getWidth(context, 176),
                            height: getHeight(context, 167),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(63, 65, 78, 1),
                              // Цвет коробки
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Stack(
                              children: [
                                Center(
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/png/better_sleep.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Positioned(
                                  bottom: 15,
                                  left: 20,
                                  child: Text(
                                    'Better Sleep',
                                    style: TextStyle(
                                      color: Color.fromRGBO(235, 234, 236, 1),
                                      // Цвет текста
                                      fontSize: 18,
                                      fontFamily: 'HelveticaNeue',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: getHeight(context, 20)),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/chooseTopic/reminderScreen');
                          },
                          child: Container(
                            width: getWidth(context, 176),
                            height: getHeight(context, 210),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(217, 165, 181, 1),
                              // Цвет коробки
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Stack(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 40),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/png/bottom_home_button.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 15,
                                  left: 20,
                                  child: Text(
                                    'Reduce Stress',
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 236, 204, 1),
                                      // Цвет текста
                                      fontSize: 18,
                                      fontFamily: 'HelveticaNeue',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: getHeight(context, 100)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
          // body: CustomContainer(height: 120),
          ),
    );
  }
}
