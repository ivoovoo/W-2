import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_network/core/constants/constants.dart';

class GradientTelegramButton extends StatelessWidget {
  final void Function() onPressed;

  const GradientTelegramButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(colors: [
          AppColors.kDeepPinkColor1,
          AppColors.kOrangeColor1,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          splashColor: AppColors.kDeepPinkColor1.withOpacity(0.4),
          borderRadius: BorderRadius.circular(32.r),
          child: Padding(
            padding: EdgeInsets.all(16.r),
            child: Center(
              child: SvgPicture.asset(Assets.icons.telegram),
            ),
          ),
        ),
      ),
    );
  }
}
