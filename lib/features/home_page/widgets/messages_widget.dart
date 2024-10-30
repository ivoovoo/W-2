import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_network/data.dart';

class MessagesWidget extends StatelessWidget {
  final void Function() onPress;

  const MessagesWidget({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: SvgPicture.asset(Assets.icons.chatSquare),
    );
    // return BouncingAnimation(
    //   onPress: onPress,
    //   child: SvgPicture.asset(Assets.icons.chatSquare),
    // );
  }
}
