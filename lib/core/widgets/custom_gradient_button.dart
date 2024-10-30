import 'package:flutter/material.dart';
import 'package:social_network/core/constants/constants.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({
    Key? key,
    required this.onTap,
    required this.text,
    required this.horizontalPadding,
    required this.verticalPadding,
    required this.listColors,
    required this.fontSize,
    this.shadowColor = Colors.transparent,
    this.textColor = AppColors.kWhiteColor,
  }) : super(key: key);

  final void Function()? onTap;
  final String text;
  final double horizontalPadding;
  final double verticalPadding;
  final List<Color> listColors;
  final double fontSize;
  final Color shadowColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.0),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: listColors,
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.12),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          highlightColor: AppColors.kBlueColor1.withOpacity(0.3),
          splashColor: AppColors.kGreenColor1.withOpacity(0.4),
          borderRadius: BorderRadius.circular(32.0),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: verticalPadding),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
