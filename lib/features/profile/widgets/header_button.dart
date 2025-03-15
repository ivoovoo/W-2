import 'package:flutter/material.dart';
import 'package:social_network/constants.dart';

class HeaderButton extends StatelessWidget {
  final Widget widget;
  final Function()? function;
  final bool isEnabledChatGpt;

  const HeaderButton({
    super.key,
    required this.widget,
    required this.function,
    this.isEnabledChatGpt = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
              horizontal: 28 * rw(context), vertical: 4 * rw(context)),
          backgroundColor:
              isEnabledChatGpt ? Colors.grey.shade100 : Colors.white,
          minimumSize: Size.zero,
          shadowColor: Colors.black.withOpacity(0.1)),
      child: widget,
    );
  }
}
