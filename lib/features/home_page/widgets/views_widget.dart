import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_network/data.dart';

class ViewsWidget extends StatefulWidget {
  final String text;

  const ViewsWidget({super.key, required this.text});

  @override
  State<ViewsWidget> createState() => _ViewsWidgetState();
}

class _ViewsWidgetState extends State<ViewsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(Assets.icons.eye),
        SizedBox(width: 8.w),
        Text(
          widget.text,
          style: AppStyles.kWhiteColorW500(12.0),
        ),
      ],
    );
  }
}
