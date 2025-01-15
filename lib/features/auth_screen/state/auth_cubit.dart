import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:social_network/data.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthhState> {
  AuthCubit() : super(AuthInitial());

  String buttonText = t.strings.auth.user_name;

  String buttonTextAuth = t.strings.auth.user_name;

  void definitionTextButton(int pageIndex) {
    if (pageIndex == 0) {
      buttonText = t.strings.auth.user_name;
      buttonTextAuth = t.strings.auth.user_name;
    } else if (pageIndex == 1) {
      buttonText = t.strings.auth.email_address;
      buttonTextAuth = t.strings.auth.password;
    } else {
      buttonText = t.strings.auth.password;
    }
    emit(AuthInitial());
  }

  String buttonTextCreateGroup = 'nickname';

  void definitionTextButtonOfCreateGroup(int pageIndex) {
    if (pageIndex == 0) {
      buttonTextCreateGroup = 'nickname';
    } else if (pageIndex == 1) {
      buttonTextCreateGroup = 'description';
    } else {}
    emit(AuthInitial());
  }

  String buttonTextCreateApp = 'nickname';

  void definitionTextButtonOfCreateApp(int pageIndex) {
    if (pageIndex == 0) {
      buttonTextCreateApp = 'nickname';
    } else if (pageIndex == 1) {
      buttonTextCreateApp = 'description';
    } else {
      buttonTextCreateApp = 'url';
    }
    emit(AuthInitial());
  }

  Color firstGradientColorForGradientIconButton = AppColors.kGreyColor1;
  Color secondGradientColorForGradientIconButton = AppColors.kGreyColor2;

  void definitionColorsGradientIconButton(String value) {
    if (value != '') {
      firstGradientColorForGradientIconButton = AppColors.kBlueColor1;
      secondGradientColorForGradientIconButton = AppColors.kGreenColor1;
    } else {
      firstGradientColorForGradientIconButton = AppColors.kGreyColor1;
      secondGradientColorForGradientIconButton = AppColors.kGreyColor2;
    }
    emit(AuthInitial());
  }

  String firstText = t.strings.auth.first_text_one;
  String secondText = t.strings.auth.second_text_one;
  String thirdText = t.strings.auth.third_text_one;

  void definitionUserAgreementText(int pageIndex) {
    if (pageIndex == 0) {
      firstText = t.strings.auth.first_text_one;
      secondText = t.strings.auth.second_text_one;
      thirdText = t.strings.auth.third_text_one;
    } else if (pageIndex == 1) {
      firstText = t.strings.auth.first_text_two;
      secondText = t.strings.auth.second_text_two;
      thirdText = t.strings.auth.third_text_two;
    } else if (pageIndex == 2) {
      firstText = t.strings.auth.first_text_three;
      secondText = t.strings.auth.second_text_three;
      thirdText = t.strings.auth.third_text_three;
    }
    emit(AuthInitial());
  }
}
