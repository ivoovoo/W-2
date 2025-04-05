import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_model.dart';


class DayAlbumScreen extends StatelessWidget {
  const DayAlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(240),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          flexibleSpace: Stack(
            children: [
              Center(
                child: Image(
                  image: AssetImage('assets/images/png/happy_morning_screen.png'),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: getHeight(context, 105),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: getWidth(context, 20),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: getWidth(context, 55),
                          height: getHeight(context, 55),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(235, 234, 236, 1),
                                // border color
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                // border width
                                child: Container(
                                  // or ClipRRect if you need to clip the content
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white, // inner circle color
                                  ),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    color: Color.fromRGBO(63, 65, 78, 1),
                                  ), // inner content
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: getWidth(context, 20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: getWidth(context, 55),
                              height: getHeight(context, 55),
                              child: InkWell(
                                onTap: () {},
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                child: Container(
                                  // or ClipRRect if you need to clip the content
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(
                                        3, 23, 76, 0.8), // inner circle color
                                  ),
                                  child: const Icon(
                                    Icons.favorite_border,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ), // inner content
                                ),
                              ),
                            ),
                            SizedBox(
                              width: getWidth(context, 15),
                            ),
                            SizedBox(
                              width: getWidth(context, 55),
                              height: getHeight(context, 55),
                              child: InkWell(
                                onTap: () {},
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                child: Container(
                                  // or ClipRRect if you need to clip the content
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(
                                        3, 23, 76, 0.8), // inner circle color
                                  ),
                                  child: const Icon(
                                    Icons.save_alt,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ), // inner content
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
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  const Icon(
                    Icons.favorite,
                    color: Color.fromRGBO(255, 132, 162, 1),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '24.234 Favorits',
                    style: TextStyle(
                      color: Color.fromRGBO(161, 164, 178, 1),
                      fontSize: 14,
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  SvgPicture.asset(
                    'assets/images/svg/headphones.svg',
                    color: const Color.fromRGBO(127, 210, 242, 1),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '34.234 Lestening',
                    style: TextStyle(
                      color: Color.fromRGBO(161, 164, 178, 1),
                      fontSize: 14,
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Happy Morning',
                        style: TextStyle(
                          color: Color.fromRGBO(63, 65, 78, 1),
                          fontSize: 34,
                          fontFamily: 'HelveticaNeue',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  textAlign: TextAlign.left,
                  'Ease the mind into a restful night’s sleep with \nthese deep, amblent tones.',
                  style: TextStyle(
                    color: Color.fromRGBO(161, 164, 178, 1),
                    fontSize: 16,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(height: getHeight(context, 20)),
            Album(
              isChosen: true,
              nameMusic: 'Focus Attention',
              duration: '10 MIN',
            ),
            SizedBox(height: getHeight(context, 20)),
            Album(
              isChosen: false,
              nameMusic: 'Body Scan',
              duration: '5 MIN',
            ),
            SizedBox(height: getHeight(context, 20)),
            Album(
              isChosen: false,
              nameMusic: 'Making Happiness',
              duration: '3 MIN',
            ),
          ],
        ),
      ),
    );
  }
}

class Album extends StatelessWidget {
  final String nameMusic;
  final String duration;
  final bool isChosen;

  const Album(
      {
      required this.isChosen,
      required this.nameMusic,
      required this.duration});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {},
          child: isChosen ? Container(
            width: getWidth(context, 40),
            height: getHeight(context, 40),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Color.fromRGBO(161, 164, 178, 1),
              ),
              color: Color.fromRGBO(142, 151, 253, 1),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              Icons.play_arrow,
              color: Color.fromRGBO(246, 241, 251, 1),
            ),
          ) : Container(
            width: getWidth(context, 40),
            height: getHeight(context, 40),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Color.fromRGBO(161, 164, 178, 1),
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              Icons.play_arrow,
              color: Color.fromRGBO(161, 164, 178, 1),
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            Navigator.pushNamed(context, '/dayAudioPlayer');
          },
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameMusic,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    duration,
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
