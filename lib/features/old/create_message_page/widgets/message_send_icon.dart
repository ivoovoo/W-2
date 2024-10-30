import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';

class MessageSendIcon extends StatelessWidget {
  const MessageSendIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 40 * rw(context),
          width: 46 * rw(context),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [HexColor('#478CF0'), HexColor('#A9F5BB')])),
          margin: EdgeInsets.only(right: 9 * rw(context)),
          child: Image.asset('assets/send_file_icon.png'),
        ),
        Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 18 * rw(context),
              width: 18 * rw(context),
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: Center(
                  child: Text(
                '2',
                style: getStyle(
                    fontSize: 10,
                    height: 16 / 10,
                    fontWeight: FontWeight.w400,
                    color: HexColor('#000000')),
              )),
            ))
      ],
    );
  }
}
