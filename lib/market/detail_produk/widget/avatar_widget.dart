import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/json/avatar.json',
      height: 40,
      width: 40,
      fit: BoxFit.cover,
    );
  }
}
