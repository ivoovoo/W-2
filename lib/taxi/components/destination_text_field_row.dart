import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';
import 'custom_text_field.dart';

class DestinationTextFieldRow extends StatelessWidget {
  const DestinationTextFieldRow({
    super.key,
    required this.controller,
    this.focusNode,
    required this.isFocused,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final bool isFocused;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 16,
          child: SvgPicture.asset(
            'assets/location.svg',
            colorFilter: ColorFilter.mode(isFocused ? blackColor : greyColor2, BlendMode.srcIn),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: CustomTextField(
            isFocused: isFocused,
            focusNode: focusNode,
            hintText: 'New Address',
            controller: controller,
          ),
        ),
      ],
    );
  }
}
