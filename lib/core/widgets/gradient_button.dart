import 'package:flutter/material.dart';
import 'package:social_network/constants.dart';

class GradientButton extends StatelessWidget {
  Widget widget;
  void Function()? function;
  List<Color> colors;

  GradientButton(
      {super.key,
      required this.widget,
      required this.function,
      required this.colors});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      customBorder:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      splashColor: Colors.grey.withOpacity(0.2),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 16 * rw(context), vertical: 8 * rw(context)),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: colors),
            borderRadius: BorderRadius.circular(100)),
        child: Center(
          child: widget,
        ),
      ),
    );
  }
}
