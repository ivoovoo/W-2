import 'package:flutter/material.dart';

TextTheme lightTextTheme = TextTheme(
  headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
  headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.black),
  headlineSmall: const TextStyle().copyWith(
      fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
  titleLarge: const TextStyle().copyWith(
      fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.black),
  titleMedium: const TextStyle().copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    color: Color(0xff828282),
  ),
  bodyLarge: const TextStyle().copyWith(
      fontSize: 13.0, fontWeight: FontWeight.w400, color: Colors.black),
  bodyMedium: const TextStyle().copyWith(
      fontSize: 13.0, fontWeight: FontWeight.w400, color: Color(0xff828282)),
  labelLarge: const TextStyle().copyWith(
      fontSize: 10.0, fontWeight: FontWeight.normal, color: Colors.black),
  labelMedium: const TextStyle().copyWith(
      fontSize: 10.0, fontWeight: FontWeight.normal, color: Color(0xff828282)),
);
