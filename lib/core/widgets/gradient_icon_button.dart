import 'package:social_network/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GradientIconButton extends StatelessWidget {
  const GradientIconButton({
    Key? key,
    required this.onTap,
    required this.firstGradientColor,
    required this.secondGradientColor,
    required this.icon,
    this.shadow = false,
  }) : super(key: key);

  final void Function()? onTap;
  final Color firstGradientColor;
  final Color secondGradientColor;
  final String icon;
  final bool shadow;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              firstGradientColor,
              secondGradientColor,
            ],
          ),
          boxShadow: shadow
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    spreadRadius: 0,
                    blurRadius: 15,
                    offset: const Offset(0, 0),
                  ),
                ]
              : null),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16.0),
          highlightColor: AppColors.kBlueColor1.withOpacity(0.3),
          splashColor: AppColors.kGreenColor1.withOpacity(0.4),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
            child: SvgPicture.asset(icon),
          ),
        ),
      ),
    );
  }
}
