import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_network/data.dart';

class LikesWidget extends StatelessWidget {
  final String text;

  const LikesWidget({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SvgPicture.asset(Assets.icons.heart),
        SizedBox(height: 5.h),
        Text(
          text,
          style: AppStyles.kWhiteColorW500(12.0),
        ),
      ],
    );
  }
}
