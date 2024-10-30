import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_network/features/home_page/widgets/likes_widget.dart';
import 'package:social_network/features/home_page/widgets/messages_widget.dart';
import 'package:social_network/features/home_page/widgets/views_widget.dart';
/*export 'likes_widget.dart';
export 'views_widget.dart';
export 'messages_widget.dart';*/

class ActivityTapeVertical extends StatelessWidget {
  final String likesCount;
  final String viewsCount;
  final void Function() onPressMessagesFunc;
  final bool isVisible;

  const ActivityTapeVertical({
    super.key,
    required this.likesCount,
    required this.viewsCount,
    required this.onPressMessagesFunc,
    this.isVisible = true,
  });

  @override
  Widget build(BuildContext context) {
    return isVisible
        ? Column(
            children: <Widget>[
              // LikesWidget(text: likesCount),
              // SizedBox(height: 10.h),
              ViewsWidget(text: viewsCount),
              SizedBox(height: 11.h),
              MessagesWidget(onPress: onPressMessagesFunc)
            ],
          )
        : const SizedBox.shrink();
  }
}
