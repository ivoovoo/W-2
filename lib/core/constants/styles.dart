import 'package:flutter/material.dart';
import 'package:social_network/core/constants/colors.dart';

class AppStyles {
  ///   FontWeight.w400
  static TextStyle kBLackColor2W400(double fontSize) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
      fontSize: fontSize,
      color: AppColors.kBlackColor2,
    );
  }

  static TextStyle kGreyColor5W400(double fontSize) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
      fontSize: fontSize,
      color: AppColors.kGreyColor5,
    );
  }

  static TextStyle kWhiteColorW400(double fontSize) {
    return TextStyle(
      color: AppColors.kWhiteColor,
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  ///   FontWeight.w500
  static TextStyle kWhiteColorW500(double fontSize) {
    return TextStyle(
      color: AppColors.kWhiteColor,
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle kWhiteColorW500WithOpacity(
      double fontSize, double withOpacity) {
    return TextStyle(
      color: AppColors.kWhiteColor.withOpacity(withOpacity),
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle kGreyColor4W500(double fontSize) {
    return TextStyle(
      color: AppColors.kGreyColor4,
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle kBLackColor2W600(double fontSize) {
    return TextStyle(
      color: AppColors.kBlackColor2,
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle kPinkColor1W500(double fontSize) {
    return TextStyle(
      color: AppColors.kPinkColor1,
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle kBLackColor2W500(double fontSize) {
    return TextStyle(
      color: AppColors.kBlackColor2,
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle kLightGreyColorW500(double fontSize) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter',
      fontSize: fontSize,
      color: AppColors.kLightGreyColor,
    );
  }

  static TextStyle kRedColor2W500(double fontSize) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter',
      fontSize: fontSize,
      color: AppColors.kRedColor2,
    );
  }

  ///   FontWeight.w600
  static TextStyle kWhiteColorW600(double fontSize) {
    return TextStyle(
      color: AppColors.kWhiteColor,
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle kBlueColor3W600(double fontSize) {
    return TextStyle(
      color: AppColors.kBlueColor3,
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle kPinkColor1W600(double fontSize) {
    return TextStyle(
      color: AppColors.kPinkColor1,
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  ///   FontWeight.w700
  static TextStyle kWhiteColorW700(double fontSize) {
    return TextStyle(
      color: AppColors.kWhiteColor,
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle kGreyColorW700(double fontSize) {
    return TextStyle(
      color: AppColors.kGreyColor,
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle kBlueColor2W700(double fontSize) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
      fontSize: fontSize,
      color: AppColors.kBlueColor2,
    );
  }

  static TextStyle kBLackColor2W700(double fontSize) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
      fontSize: fontSize,
      color: AppColors.kBlackColor2,
    );
  }

  static TextStyle kBlackColor3W700(double fontSize) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
      fontSize: fontSize,
      color: AppColors.kBlackColor3,
    );
  }

  static TextStyle kGreyColor4W700(double fontSize) {
    return TextStyle(
      color: AppColors.kGreyColor4,
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    );
  }

  ///   FontWeight.w900
  static TextStyle kWhiteColorW900(double fontSize) {
    return TextStyle(
      fontWeight: FontWeight.w900,
      fontFamily: 'Inter',
      fontSize: fontSize,
      color: AppColors.kWhiteColor,
    );
  }
}
