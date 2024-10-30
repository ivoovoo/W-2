/*
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';
import 'package:social_network/core/widgets/bottom_left_dots.dart';
import 'package:social_network/features/home_page/models/post_model.dart';

class PostMessage extends StatelessWidget {
  const PostMessage({required this.postModel, super.key});

  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    final title = postModel.postTitle;

    if (title != null) {
      return Container(
        padding: EdgeInsets.all(10 * rw(context)),
        decoration: BoxDecoration(
            color: HexColor('#DADADA').withOpacity(0.25),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: getStyle(
                  fontSize: 10,
                  height: 16 / 10,
                  fontWeight: FontWeight.w400,
                  color: HexColor('#171717')),
            ),
            Text(
              postModel.postText ?? '',
              style: getStyle(
                  fontSize: 10,
                  height: 16 / 10,
                  fontWeight: FontWeight.w400,
                  color: HexColor('#7C7C7C')),
            ),
          ],
        ),
      );
    }

    if (postModel.postImage != null) {
      return SizedBox(
        height: 210 * rw(context),
        width: double.infinity,
        child: Stack(children: [
          Positioned.fill(
              child: Image.asset(
            'assets/post1.png',
            fit: BoxFit.fill,
          )),
          BottomLeftDots()
        ]),
      );
    }

    return const SizedBox();
  }
}
*/
