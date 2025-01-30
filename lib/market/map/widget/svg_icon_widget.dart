import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIconWidget extends StatelessWidget {
  const SvgIconWidget({
    super.key,
    required this.pathToIcon,
  });

  final String pathToIcon;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      pathToIcon,
      height: 36,
      width: 36,
      fit: BoxFit.cover,
    );
  }
}
