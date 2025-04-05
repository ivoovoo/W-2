import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_model.dart';

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          getHeight(context, 282),
        ),
        child: AppBar(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          flexibleSpace: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(context, 81),
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Meditate',
                          style: TextStyle(
                            color: Color.fromRGBO(63, 65, 78, 1),
                            fontSize: 28,
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getHeight(context, 10),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'we can learn how to recognize when our minds\nare doing their normal everyday acrobatics.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(160, 163, 177, 1),
                            fontSize: 16,
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getWidth(context, 20),
                    ),
                    child: Row(
                      children: [
                        const DayButtonAppbar(
                          isChosen: true,
                          screen: '/all',
                          text: 'All',
                          assetName: 'assets/images/svg/all_icon.svg',
                        ),
                        SizedBox(
                          width: getWidth(context, 20),
                        ),
                        const DayButtonAppbar(
                          isChosen: false,
                          screen: '/my',
                          text: 'My',
                          assetName: 'assets/images/svg/my_icon.svg',
                        ),
                        SizedBox(
                          width: getWidth(context, 20),
                        ),
                        const DayButtonAppbar(
                          isChosen: false,
                          screen: '/anxious',
                          text: 'Anxious',
                          assetName: 'assets/images/svg/anxious_icon.svg',
                        ),
                        SizedBox(
                          width: getWidth(context, 20),
                        ),
                        const DayButtonAppbar(
                          isChosen: false,
                          screen: '/sleep',
                          text: 'Sleep',
                          assetName: 'assets/images/svg/sleep_icon.svg',
                        ),
                        SizedBox(
                          width: getWidth(context, 20),
                        ),
                        const DayButtonAppbar(
                          isChosen: false,
                          screen: '/kids',
                          text: 'Kids',
                          assetName: 'assets/images/svg/kids_icon.svg',
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
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: EdgeInsets.only(
          left: getWidth(context, 20),
          right: getWidth(context, 20),
          top: getHeight(context, 10),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: getHeight(context, 10),
            ),
            InkWell(
              onTap: () {Navigator.pushNamed(context, '/dayAlbum');},
              child: Column(
                children: [
                  Container(
                    width: getWidth(context, 374),
                    height: getHeight(context, 95),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/images/png/daily_calm_bg.png'),
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
                              'Daily Calm',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(63, 65, 78, 1),
                                fontSize: 18,
                                fontFamily: 'HelveticaNeue',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'APR 30 • PAUSE PRACTICE',
                              style: TextStyle(
                                color: Color.fromRGBO(90, 97, 117, 1),
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
                                backgroundColor: WidgetStateProperty.all(
                                  const Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                              onPressed: () {},
                              icon: const Icon(Icons.play_arrow_rounded)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getHeight(context, 20),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {Navigator.pushNamed(context, '/dayAlbum');},
                      child: Column(
                        children: [
                          Container(
                            width: getWidth(context, 175),
                            height: getHeight(context, 210),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/png/7days_of_calm_bg.png'),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.center,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(103, 84, 139, 1),
                                  Color.fromRGBO(237, 197, 159, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: getHeight(context, 12),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '7 Days of Calm',
                                    style: TextStyle(
                                      color: Color.fromRGBO(63, 65, 78, 1),
                                      fontSize: 18,
                                      fontFamily: 'HelveticaNeue',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getHeight(context, 20),
                    ),
                    InkWell(
                      onTap: () {Navigator.pushNamed(context, '/dayAlbum');},
                      child: Column(
                        children: [
                          Container(
                            width: getWidth(context, 175),
                            height: getHeight(context, 167),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/png/beach_bg.png'),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.center,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(255, 124, 107, 1),
                                  Color.fromRGBO(250, 201, 120, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: getHeight(context, 12),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '',
                                    style: TextStyle(
                                      color: Color.fromRGBO(63, 65, 78, 1),
                                      fontSize: 18,
                                      fontFamily: 'HelveticaNeue',
                                      fontWeight: FontWeight.w700,
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
                SizedBox(
                  width: getWidth(context, 20),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {Navigator.pushNamed(context, '/dayAlbum');},
                      child: Column(
                        children: [
                          Container(
                            width: getWidth(context, 175),
                            height: getHeight(context, 167),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/png/anxiet_release_bg.png'),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.center,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(255, 124, 107, 1),
                                  Color.fromRGBO(250, 201, 120, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: getHeight(context, 12),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Anxiet Release',
                                    style: TextStyle(
                                      color: Color.fromRGBO(63, 65, 78, 1),
                                      fontSize: 18,
                                      fontFamily: 'HelveticaNeue',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getHeight(context, 20),
                    ),
                    InkWell(
                      onTap: () {Navigator.pushNamed(context, '/dayAlbum');},
                      child: Column(
                        children: [
                          Container(
                            width: getWidth(context, 175),
                            height: getHeight(context, 210),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/png/forest_bg.png'),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.center,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(103, 84, 139, 1),
                                  Color.fromRGBO(237, 197, 159, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: getHeight(context, 12),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '',
                                    style: TextStyle(
                                      color: Color.fromRGBO(63, 65, 78, 1),
                                      fontSize: 18,
                                      fontFamily: 'HelveticaNeue',
                                      fontWeight: FontWeight.w700,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DayButtonAppbar extends StatelessWidget {
  final String text;
  final String assetName;
  final String screen;
  final bool isChosen;

  const DayButtonAppbar(
      {super.key,
      required this.text,
      required this.assetName,
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
                  ? const BoxDecoration(
                      color: Color.fromRGBO(142, 151, 253, 1),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    )
                  : const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
              child: Center(
                child: SvgPicture.asset(assetName),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                text,
                style: const TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
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
