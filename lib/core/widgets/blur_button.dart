import 'package:blur/blur.dart';
import 'package:social_network/core/constants/constants.dart';
import 'package:flutter/material.dart';

class BlurButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final bool isVisible;
  final bool isChosen;

  const BlurButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.isVisible = true,
    this.isChosen = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(isChosen);
    return isVisible
        ? Container(
            decoration: BoxDecoration(
              color: isChosen ? null : Colors.transparent,
              gradient: isChosen
                  ? const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                          AppColors.kPurpleColor,
                          AppColors.kLightPurple,
                        ])
                  : null,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(30.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 19.0, vertical: 10.0),
                  child: Center(
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: AppStyles.kWhiteColorW500(16.0),
                    ),
                  ),
                ),
              ),
            ),
          ).frosted(
            blur: 3,
            frostColor: AppColors.kGreyColor3,
            frostOpacity: 0.01,
            borderRadius: BorderRadius.circular(30),
          )
        : const SizedBox.shrink();
  }
}
