import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_model.dart';

class NightAlbumScreen extends StatelessWidget {
  const NightAlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(240),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(3, 23, 76, 1),
          flexibleSpace: Stack(
            children: [
              Center(
                child: Image(
                  image: AssetImage('assets/images/png/appbar_playoption.png'),
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
                            // SizedBox(
                            //   width: getWidth(context, 55),
                            //   height: getHeight(context, 55),
                            //   child: InkWell(
                            //     onTap: () {},
                            //     highlightColor: Colors.transparent,
                            //     splashColor: Colors.transparent,
                            //     child: Container(
                            //       // or ClipRRect if you need to clip the content
                            //       decoration: const BoxDecoration(
                            //         shape: BoxShape.circle,
                            //         color: Color.fromRGBO(
                            //             3, 23, 76, 0.8), // inner circle color
                            //       ),
                            //       child: const Icon(
                            //         Icons.favorite_border,
                            //         color: Color.fromRGBO(255, 255, 255, 1),
                            //       ), // inner content
                            //     ),
                            //   ),
                            // ),
                            SizedBox(
                              width: getWidth(context, 15),
                            ),
                            // SizedBox(
                            //   width: getWidth(context, 55),
                            //   height: getHeight(context, 55),
                            //   child: InkWell(
                            //     onTap: () {},
                            //     highlightColor: Colors.transparent,
                            //     splashColor: Colors.transparent,
                            //     child: Container(
                            //       // or ClipRRect if you need to clip the content
                            //       decoration: const BoxDecoration(
                            //         shape: BoxShape.circle,
                            //         color: Color.fromRGBO(
                            //             3, 23, 76, 0.8), // inner circle color
                            //       ),
                            //       child: const Icon(
                            //         Icons.save_alt,
                            //         color: Color.fromRGBO(255, 255, 255, 1),
                            //       ), // inner content
                            //     ),
                            //   ),
                            // ),
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
      backgroundColor: Color.fromRGBO(3, 23, 77, 1),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  const Icon(
                    Icons.favorite,
                    color: Color.fromRGBO(230, 231, 242, 1),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '24.234 Favorits',
                    style: TextStyle(
                      color: Color.fromRGBO(230, 231, 242, 1),
                      fontSize: 14,
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  SvgPicture.asset('assets/images/svg/headphones.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '34.234 Lestening',
                    style: TextStyle(
                      color: Color.fromRGBO(230, 231, 242, 1),
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
                        'Night Island',
                        style: TextStyle(
                          color: Color.fromRGBO(230, 231, 242, 1),
                          fontSize: 34,
                          fontFamily: 'HelveticaNeue',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '45 MIN',
                        style: TextStyle(
                          color: Color.fromRGBO(152, 161, 189, 1),
                          fontSize: 14,
                          fontFamily: 'HelveticaNeue',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'SLEEP MUSIC',
                        style: TextStyle(
                          color: Color.fromRGBO(152, 161, 189, 1),
                          fontSize: 14,
                          fontFamily: 'HelveticaNeue',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  textAlign: TextAlign.left,
                  'Ease the mind into a restful night’s sleep with \nthese deep, amblent tones.',
                  style: TextStyle(
                    color: Color.fromRGBO(152, 161, 189, 1),
                    fontSize: 16,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(height: getHeight(context, 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/nightAlbum');
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 177,
                              height: 122,
                              child: Image(
                                image: AssetImage(
                                    'assets/images/png/icon_moon_clouds.png'),
                              )),
                        ],
                      ),
                      SizedBox(height: getHeight(context, 10)),
                      Row(
                        children: [
                          Text(
                            'Moon Clouds',
                            style: TextStyle(
                              color: Color.fromRGBO(230, 231, 242, 1),
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
                            '45 MIN •',
                            style: TextStyle(
                              color: Color.fromRGBO(152, 161, 189, 1),
                              fontSize: 11,
                              fontFamily: 'HelveticaNeue',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            ' SLEEP MUSIC',
                            style: TextStyle(
                              color: Color.fromRGBO(152, 161, 189, 1),
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
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/nightAlbum');
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 177,
                        height: 122,
                        child: Image(
                          image: AssetImage(
                              'assets/images/png/icon_sweet_sleep.png'),
                        ),
                      ),
                      SizedBox(height: getHeight(context, 10)),
                      Row(
                        children: [
                          Text(
                            'Sweet Sleep',
                            style: TextStyle(
                              color: Color.fromRGBO(230, 231, 242, 1),
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
                            '45 MIN •',
                            style: TextStyle(
                              color: Color.fromRGBO(152, 161, 189, 1),
                              fontSize: 11,
                              fontFamily: 'HelveticaNeue',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            ' SLEEP MUSIC',
                            style: TextStyle(
                              color: Color.fromRGBO(152, 161, 189, 1),
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
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/nightAudioPlayer');
                  },
                  child: Container(
                    width: 370,
                    height: 63,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(142, 151, 253, 1),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        'PLAY',
                        style: TextStyle(
                          color: Color.fromRGBO(246, 241, 251, 1),
                          fontSize: 14,
                          fontFamily: 'HelveticaNeue',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class NightIsland extends StatelessWidget {
//   const NightIsland({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
