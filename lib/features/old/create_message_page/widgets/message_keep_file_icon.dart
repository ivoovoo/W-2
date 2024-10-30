import 'package:flutter/material.dart';
import 'package:social_network/constants.dart';

class MessageKeepFileIcon extends StatelessWidget {
  const MessageKeepFileIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40 * rw(context),
      width: 46 * rw(context),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.white),
      margin: EdgeInsets.only(left: 9 * rw(context)),
      child: Image.asset('assets/keep_file_icon.png'),
    );
  }
}
