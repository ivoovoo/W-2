import 'package:flutter/material.dart';

import '../builder.dart';
import '../size_model.dart';

class SleepAlbumScreen extends StatelessWidget {
  const SleepAlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(3, 23, 77, 1),
        flexibleSpace: Stack(
          children: [
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
                  Padding(
                    padding:  EdgeInsets.only(top: getHeight(context, 50)),
                    child: Center(
                      child: Text(
                        'Sleep  Music',
                        style: TextStyle(
                          color: Color.fromRGBO(230, 231, 242, 1),
                          fontSize: 24,
                          fontFamily: 'HelveticaNeue',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(3, 23, 77, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: new MyGridView(),
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
