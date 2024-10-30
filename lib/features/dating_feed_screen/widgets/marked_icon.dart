import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_network/core/constants/constants.dart';

class MarkedIcon extends StatelessWidget {
  bool isShowed;
  MarkedIcon({
    super.key,
    required this.isShowed,
  });

  @override
  Widget build(BuildContext context) {
    return isShowed
        ? Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: SvgPicture.asset(Assets.icons.mark),
          )
        : const SizedBox.shrink();
  }
}
