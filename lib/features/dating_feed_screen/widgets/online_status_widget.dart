import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_network/core/constants/constants.dart';

class OnlineStatusWidget extends StatelessWidget {
  bool isOnline;

  OnlineStatusWidget({
    super.key,
    required this.isOnline,
  });

  @override
  Widget build(BuildContext context) {
    return isOnline
        ? Padding(
            padding: EdgeInsets.fromLTRB(6.w, 2.h, 6.w, 6.h),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24.r),
              child: AnimateGradient(
                primaryColors: const [
                  AppColors.kGreenColor,
                  AppColors.kLightBlueColor
                ],
                secondaryColors: const [
                  AppColors.kLightBlueColor,
                  AppColors.kGreenColor
                ],
                duration: const Duration(milliseconds: 1500),
                child: Container(
                  width: 12.w,
                  height: 12.w,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: AppColors.kWhiteColor, width: 2.w),
                      shape: BoxShape.circle),
                ),
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
