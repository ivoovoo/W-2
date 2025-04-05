import 'package:flutter/material.dart';

import 'constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.textAlign = TextAlign.start,
    this.minLines = 1,
    this.maxLines = 1,
    this.showLimit = false,
    required this.controller,
    this.maxLength, this.focusNode, required this.isFocused,
  });

  final String hintText;
  final TextAlign textAlign;
  final int minLines;
  final int maxLines;
  final bool showLimit;
  final TextEditingController controller;
  final int? maxLength;
  final FocusNode? focusNode;
  final bool isFocused;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextField(
        focusNode: focusNode,
        maxLength: maxLength,
        controller: controller,
        minLines: minLines,
        maxLines: maxLines,
        style: TextStyle(
          fontFamily: 'font',
          fontSize: 16,
          color: isFocused ? blackColor : greyColor2,
          fontVariations: const [
            FontVariation.opticalSize(56),
            FontVariation.width(128),
            FontVariation.weight(500),
          ],
        ),
        textAlign: textAlign,
        decoration: InputDecoration(
          // counterStyle: getTextTheme(context).labelLarge?.copyWith(color: getColor(context).onPrimary),
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'font',
            fontSize: 16,
            color: isFocused ? blackColor : greyColor2,
            fontVariations: const [
              FontVariation.opticalSize(56),
              FontVariation.width(128),
              FontVariation.weight(500),
            ],
          ),
          isDense: true,
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
