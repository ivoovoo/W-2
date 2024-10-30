import 'package:flutter/material.dart';
import 'package:social_network/core/constants/constants.dart';
import 'package:social_network/core/widgets/custom_gradient_button.dart';

class TextFieldAndButton extends StatelessWidget {
  const TextFieldAndButton({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.buttonOnTap,
    required this.onChanged,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final void Function()? buttonOnTap;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = const LinearGradient(
      colors: [
        AppColors.kBlueColor2,
        AppColors.kGreenColor2,
      ],
    ).createShader(
      const Rect.fromLTWH(0.0, 0.0, 100.0, 70.0),
    );

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
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 17.0, right: 17.0),
              child: TextField(
                onChanged: onChanged,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 14.0,
                  color: Colors.black,
                  // foreground: Paint()..shader = linearGradient,
                ),
                controller: controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: AppStyles.kGreyColorW700(14.0),
                ),
              ),
            ),
          ),
          CustomGradientButton(
            onTap: buttonOnTap,
            text: t.strings.auth.further,
            horizontalPadding: 34.0,
            verticalPadding: 15.0,
            listColors: const [AppColors.kBlueColor1, AppColors.kGreenColor1],
            fontSize: 14.0,
          ),
        ],
      ),
    );
  }
}
