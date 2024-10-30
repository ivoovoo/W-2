import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  final void Function()? onTap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10.0),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: SizedBox(
            height: 20.0,
            child: SvgPicture.asset(icon),
          ),
        ),
      ),
    );
  }
}