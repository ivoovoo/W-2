import 'package:flutter/material.dart';
import 'package:social_network/core/constants/constants.dart';

class UserAgreement extends StatelessWidget {
  const UserAgreement({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.thirdText,
  }) : super(key: key);

  final String firstText;
  final String secondText;
  final String thirdText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(32.0),
        boxShadow: [
          BoxShadow(
            color: AppColors.kBlackColor.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 15,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 11.0),
        child: RichText(
          textDirection: TextDirection.ltr,
          text: TextSpan(
            children: [
              TextSpan(
                text: firstText,
                style: AppStyles.kGreyColorW700(14.0),
              ),
              TextSpan(
                text: secondText,
                style: AppStyles.kBlueColor2W700(14.0),
              ),
              TextSpan(
                text: thirdText,
                style: AppStyles.kGreyColorW700(14.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
