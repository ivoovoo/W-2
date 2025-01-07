import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlusAndArrowForwardIconsWidget extends StatelessWidget {
  const PlusAndArrowForwardIconsWidget({
    super.key,
    required this.onTapPlusIcon,
    required this.onTapArrowForwardIcon,
  });

  final VoidCallback onTapPlusIcon;
  final VoidCallback onTapArrowForwardIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: onTapPlusIcon,
          child: SizedBox(
            height: 29,
            width: 29,
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/plus_icon.svg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: onTapArrowForwardIcon,
          child: const Icon(
            Icons.arrow_forward_ios,
            size: 23,
          ),
        ),
      ],
    );
  }
}
