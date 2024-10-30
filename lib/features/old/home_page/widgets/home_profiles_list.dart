import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';
import 'package:social_network/core/widgets/add_icon.dart';

class HomeProfileList extends StatelessWidget {
  const HomeProfileList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74 * rw(context),
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 20 * rw(context)),
          itemBuilder: (context, index) => Stack(
                children: [
                  Container(
                      height: 74 * rw(context),
                      width: 74 * rw(context),
                      margin: EdgeInsets.only(
                          left: index == 0 ? 0 : 16 * rw(context)),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: index == 1
                              ? LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                      HexColor('#FF0000').withOpacity(0.25),
                                      HexColor('#B4BBF5').withOpacity(0.25)
                                    ])
                              : null),
                      child: Align(
                        child: Container(
                            padding: EdgeInsets.all(6 * rw(context)),
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: Align(
                              child:
                                  Image.asset('assets/photo${index + 1}.png'),
                            )),
                      )),
                  if (index == 0)
                    const Positioned(bottom: 0, right: 3, child: AddIcon())
                ],
              )),
    );
  }
}
