import 'package:flutter/material.dart';

class BottomBlur extends StatelessWidget {
  const BottomBlur({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Colors.white,
          Colors.white,
          Colors.white,
          Colors.white,
          Colors.white.withOpacity(0),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      )),
      height: MediaQuery.of(context).size.height * (1 / 2.1),
    );
  }
}
