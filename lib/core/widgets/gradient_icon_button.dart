import 'package:flutter/services.dart';
import 'package:social_network/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../router/app_router.dart';

class GradientIconButton extends StatelessWidget {
  const GradientIconButton(
      {super.key,
      required this.onTap,
      required this.firstGradientColor,
      required this.secondGradientColor,
      required this.icon,
      this.onLongPress,
      this.shadow = false,
      this.isLoading = false,
      this.onDoubleTap,
      this.isCenterPage = false});

  final void Function()? onTap;
  final Color firstGradientColor;
  final Color secondGradientColor;
  final String icon;
  final bool shadow;
  final VoidCallback? onLongPress;
  final bool isLoading;
  final VoidCallback? onDoubleTap;
  final bool isCenterPage;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: appNotifier.isMarketPage ? 48 : 40,
      width: appNotifier.isMarketPage ? 48 : 46,
      alignment: Alignment.center,
      duration: const Duration(milliseconds: 500),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          gradient: onLongPress != null
              ? appNotifier.isMarketPage
                  ? const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(160, 218, 251, 1),
                        Color.fromRGBO(10, 147, 217, 1),
                      ],
                    )
                  : LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        firstGradientColor,
                        secondGradientColor,
                      ],
                    )
              : LinearGradient(
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
          onDoubleTap: onDoubleTap,
          onLongPress: onLongPress,
          onTap: onTap,
          borderRadius: BorderRadius.circular(16.0),
          highlightColor: AppColors.kBlueColor1.withOpacity(0.3),
          splashColor: AppColors.kGreenColor1.withOpacity(0.4),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
            child: isLoading
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : isCenterPage
                    ? appNotifier.isMarketPage
                        ? SvgPicture.asset(
                            'assets/images_of_market/filter_icon.svg')
                        : SvgPicture.asset(icon)
                    : SvgPicture.asset(icon),
          ),
        ),
      ),
    );
  }
}
