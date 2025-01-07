import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_network/core/constants/constants.dart';
import 'package:social_network/features/interests/widget/page/interests_page.dart';
import 'likes_widget.dart';
import 'views_widget.dart';
import 'messages_widget.dart';

class ActivityTapeHorizontal extends StatefulWidget {
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
  State<ActivityTapeHorizontal> createState() => _ActivityTapeHorizontalState();
}

class _ActivityTapeHorizontalState extends State<ActivityTapeHorizontal> {
  int _viewsCount = 0;

  @override
  void initState() {
    _viewsCount = widget.viewsCount;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ActivityTapeHorizontal oldWidget) {
    print('ZASHELLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
    print(oldWidget.viewsCount);
    print(widget.viewsCount);
    super.didUpdateWidget(oldWidget);
    if (oldWidget.viewsCount != widget.viewsCount) {
      setState(() {
        _viewsCount = widget.viewsCount;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // LikesWidget(text: likesCount),
        ViewsWidget(text: "$_viewsCount"),
        const SizedBox(width: 8),
        MessagesWidget(onPress: widget.onPressMessagesFunc),
        const SizedBox(width: 8),
        InkWell(
          onTap: widget.onTap,
          child: SvgPicture.asset(Assets.icons.menu),
        ),
      ],
    );
  }
}
