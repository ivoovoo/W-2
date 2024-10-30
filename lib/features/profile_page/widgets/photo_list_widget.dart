import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_network/constants.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:social_network/data.dart';
import 'package:social_network/data.dart';

class PhotoListWidget extends StatelessWidget {
  const PhotoListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62 * rw(context),
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16 * rw(context)),
        itemBuilder: (context, index) =>
            /*Container(
                height: 62 * rw(context),
                width: 62 * rw(context),
                margin: const EdgeInsets.only(left: 16),
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.asset('assets/photo${index + 1}.png'),
              )*/
            /*IconButton(onPressed: () {},
                style: IconButton.styleFrom(
                  shape: const CircleBorder()
                ),
                padding: EdgeInsets.zero,
                icon: Image.asset('assets/photo${index + 1}.png',
                fit: BoxFit.fill,))*/
            Padding(
          padding: EdgeInsets.only(right: 12 * rw(context)),
          child: InkWell(
            onTap: () {},
            customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            splashColor: Colors.grey,
            child: Container(
              decoration: BoxDecoration(
                border: index == 1
                    ? const GradientBoxBorder(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppColors.kLightGreenColor,
                              AppColors.kLightBlueColor
                            ]),
                        width: 3)
                    : null,
                borderRadius: BorderRadius.circular(100),
              ),
              child:
                  // Image.asset('assets/photo${index + 1}.png',
                  Image.asset(
                // 'assets/photo1.png',
                Assets.images.photo1.path,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
