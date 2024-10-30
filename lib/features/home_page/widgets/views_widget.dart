import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_network/data.dart';

class ViewsWidget extends StatelessWidget {
  final String text;

  const ViewsWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(Assets.icons.eye),
        SizedBox(width: 8.w),
        Text(
          text,
          style: AppStyles.kWhiteColorW500(12.0),
        ),
      ],
    );
  }
}
