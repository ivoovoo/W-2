/*
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';
import 'package:social_network/features/home_page/models/post_model.dart';
import 'package:social_network/features/home_page/widgets/viewed_row_widget.dart';

class PostAuthorRow extends StatelessWidget {
  const PostAuthorRow({required this.postModel, super.key});

  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        children: [
          Container(
              height: 42 * rw(context),
              width: 42 * rw(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        HexColor('#FF0000').withOpacity(0.25),
                        HexColor('#B4BBF5').withOpacity(0.25)
                      ])),
              child: Align(
                  child: Container(
                      padding: EdgeInsets.all(6 * rw(context)),
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Align(
                        child: Image.asset(postModel.imageUrl),
                      )))),
          SizedBox(width: 10 * rw(context)),
          Text(
            postModel.authorName,
            style: getStyle(
                fontSize: 12,
                height: 18 / 12,
                fontWeight: FontWeight.w500,
                color: HexColor('#171717')),
          )
        ],
      ),
      ViewedRowWidget(count: postModel.viewedCount)
    ]);
  }
}
*/
