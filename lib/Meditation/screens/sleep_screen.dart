import 'package:flutter/material.dart';

import '../builder.dart';
import '../size_model.dart';

class SleepScreen extends StatelessWidget {
  const SleepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(225),
          child: AppBar(
            backgroundColor: Color.fromRGBO(3, 23, 76, 1),
            flexibleSpace: Stack(
              children: [
                Image(
                  image: AssetImage(
                      'assets/images/png/decoration_sleep_screen.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 65),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        const Text(
                          'Sleep Stories',
                          style: TextStyle(
                            color: Color.fromRGBO(230, 231, 242, 1),
                            fontSize: 28,
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Soothing bedtime stories to help you fall \ninto a deep and natural sleep',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(230, 231, 242, 1),
                            fontSize: 16,
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          ButtonAppbar(
                            isChosen: true,
                            screen: '/all',
                            text: 'All',
                            image:
                                AssetImage('assets/images/png/all_button.png'),
                          ),
                          SizedBox(width: 20),
                          ButtonAppbar(
                            isChosen: false,
                            screen: '/my',
                            text: 'My',
                            image:
                                AssetImage('assets/images/png/my_button.png'),
                          ),
                          SizedBox(width: 20),
                          ButtonAppbar(
                            isChosen: false,
                            screen: '/anxious',
                            text: 'Anxious',
                            image: AssetImage(
                                'assets/images/png/anxious_button.png'),
                          ),
                          SizedBox(width: 20),
                          ButtonAppbar(
                            isChosen: false,
                            screen: '/sleepAlbums',
                            text: 'Sleep',
                            image: AssetImage(
                                'assets/images/png/sleep_button.png'),
                          ),
                          SizedBox(width: 20),
                          ButtonAppbar(
                            isChosen: false,
                            screen: '/meditate',
                            text: 'Kids',
                            image:
                                AssetImage('assets/images/png/kids_button.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Color.fromRGBO(3, 23, 77, 1),
        body: Padding(
          padding: EdgeInsets.only(
              top: getHeight(context, 17.5),
              left: getWidth(context, 17.5),
              right: getWidth(context, 17.5),
              bottom: getHeight(context, 17.5)),
          child: ListView(
            children: [
              SizedBox(height: getHeight(context, 10)),
      SizedBox(
        width: 373,
        height: 233,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/png/moons.png'),
                  fit: BoxFit.cover,
                ),
                color: Color.fromRGBO(142, 151, 253, 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.lock,
                      color: Color.fromRGBO(230, 231, 242, 1),
                    ),
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'The Ocean Moon',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 231, 191, 1),
                        fontSize: 36,
                        fontFamily: 'EBGaramond',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Non-stop 8- hour mixes of our \nmost popular sleep audio',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Color.fromRGBO(249, 249, 255, 1),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {Navigator.pushNamed(context, '/nightAlbum');},
                      child: Container(
                        width: 70,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
              SizedBox(height: getHeight(context, 10)),
              SizedBox(
                  height: MediaQuery.of(context).size.height - getHeight(context, 40),
                  child: MyGridView()),
            ],
          ),
        )
        // body: CustomContainer(height: 120),
        );
  }
}

class ButtonAppbar extends StatelessWidget {
  final String text;
  final AssetImage image;
  final String screen;
  final bool isChosen;

  const ButtonAppbar(
      {required this.text,
      required this.image,
      required this.screen,
      required this.isChosen});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.pushNamed(context, screen);
      },
      child: SizedBox(
        width: 65,
        height: 95,
        child: Stack(
          children: [
            Container(
              width: 65,
              height: 65,
              decoration: isChosen
                  ? BoxDecoration(
                      color: Color.fromRGBO(142, 151, 253, 1),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    )
                  : BoxDecoration(
                      color: Color.fromRGBO(88, 104, 148, 1),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
              child: Center(child: Image(image: image)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                text,
                style: TextStyle(
                  color: Color.fromRGBO(255, 236, 204, 1),
                  fontSize: 16,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
