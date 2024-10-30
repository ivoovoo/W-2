import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_network/core/constants/constants.dart';

class PersonProfileButtonText extends StatelessWidget {
  String profileName;
  void Function() onTap;

  PersonProfileButtonText({
    super.key,
    required this.profileName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        profileName,
        style: AppStyles.kWhiteColorW700(18.sp),
      ),
    );
  }
}
