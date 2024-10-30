import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_network/data.dart';

class ProfileButton extends StatelessWidget {
  final void Function()? onTap;
  final String name;
  // final bool isVisible;

  const ProfileButton(
      {required this.onTap,
      required this.name,
      // this.isVisible = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
            // 'assets/icons/mark.svg'
            Assets.icons.mark),
        const SizedBox(width: 11.0),
        InkWell(
          onTap: onTap,
          child: Text(
            name,
            style: AppStyles.kWhiteColorW700(18.0),
          ),
        ),
      ],
    );
  }
}
