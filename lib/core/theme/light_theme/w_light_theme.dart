import 'package:flutter/material.dart';
import 'package:social_network/core/theme/light_theme/text_theme.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Poppins',
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  textTheme: lightTextTheme,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primaryContainer: Colors.black,
    primary: Colors.grey.shade100,
    secondary: Colors.grey.shade400,
  ),
);
