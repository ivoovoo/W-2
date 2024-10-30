import 'package:flutter/material.dart';
import 'package:social_network/constants.dart';

class HeaderButton extends StatelessWidget {
  Widget widget;
  void Function()? function;

  HeaderButton({super.key, required this.widget, required this.function});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
              horizontal: 28 * rw(context), vertical: 4 * rw(context)),
          backgroundColor: Colors.white,
          minimumSize: Size.zero,
          shadowColor: Colors.black.withOpacity(0.1)),
      child: widget,
    );
  }
}
