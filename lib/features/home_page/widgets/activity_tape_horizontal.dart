import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_network/core/constants/constants.dart';
import 'package:social_network/features/interests/widget/page/interests_page.dart';
import 'likes_widget.dart';
import 'views_widget.dart';
import 'messages_widget.dart';

class ActivityTapeHorizontal extends StatelessWidget {
  final int likesCount;
  final int viewsCount;
  final void Function() onPressMessagesFunc;
  final VoidCallback onTap;

  // final bool isVisible;

  const ActivityTapeHorizontal({
    super.key,
    required this.likesCount,
    required this.viewsCount,
    required this.onPressMessagesFunc,
    required this.onTap,
    // this.isVisible = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // LikesWidget(text: likesCount),
        ViewsWidget(text: "$viewsCount"),
        const SizedBox(width: 8),
        MessagesWidget(onPress: onPressMessagesFunc),
        const SizedBox(width: 8),
        InkWell(
          onTap: onTap,
          child: SvgPicture.asset(Assets.icons.menu),
        ),
      ],
    );
  }
}
