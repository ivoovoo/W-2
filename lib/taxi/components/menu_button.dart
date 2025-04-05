import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.transparent, boxShadow: [
        BoxShadow(
          // color: Colors.black,
          color: Color(0x33000000),
          offset: Offset(0, 16),
          blurRadius: 40,
          spreadRadius: -6,
        ),
      ]),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 24,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: SvgPicture.asset(
                'assets/burger_menu.svg',
              ),
            ),
          ),
        ),
      ),
    );
  }
}