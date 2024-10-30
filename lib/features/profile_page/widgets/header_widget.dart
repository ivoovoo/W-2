import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_network/constants.dart';
import 'package:social_network/features/profile_page/widgets/header_button.dart';
import 'package:social_network/data.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 8 * rw(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Text(
                '@kkotovaa',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 8 * rw(context),
              ),
              SvgPicture.asset('assets/icons/verified.svg')
            ],
          ),
          Row(
            children: [
              HeaderButton(widget: const Text('⚡️'), function: () {}),
              SizedBox(
                width: 8 * rw(context),
              ),
              HeaderButton(
                  widget: const GradientText(
                    '4.91',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.kLightBlueColor,
                          AppColors.kLightGreenColor
                        ]),
                  ),
                  function: () {})
            ],
          )
        ],
      ),
    );
  }
}
