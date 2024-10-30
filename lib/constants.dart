library contants;

import 'package:flutter/material.dart';

const double defaultWidth = 390;
const String defaultFontFamily = 'Inter';

double rw(BuildContext context) =>
    MediaQuery.of(context).size.width / defaultWidth;

TextStyle getStyle(
        {double? fontSize,
        FontWeight? fontWeight,
        double? height,
        Color? color}) =>
    TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: height,
        color: color,
        fontFamily: defaultFontFamily);
