import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/core/router/app_router_names.dart';
import 'package:social_network/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:social_network/features/profile/logic/profile_bloc.dart';

import '../../../../generated/l10n.dart';
import '../../state/auth_cubit.dart';
import '../text_field_and_button.dart';
import '../user_agreement.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  PageController pageController = PageController();

  int pageIndex = 0;
  String? hintTextForTextField;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    hintTextForTextField =
        S.of(context).nickname; // Здесь можно использовать context
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passController.dispose();
    pageController.dispose();
    super.dispose();
  }

  TextEditingController definitionTextController() {
    TextEditingController controller = TextEditingController();

    if (pageIndex == 0) {
      controller = nameController;
    } else if (pageIndex == 1) {
      controller = emailController;
    } else if (pageIndex == 2) {
      controller = passController;
    }
    return controller;
  }

  void pushNext(BuildContext context) {
    if (pageIndex == 0 && nameController.text.isNotEmpty) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      setState(() {
        BlocProvider.of<AuthCubit>(context)
            .firstGradientColorForGradientIconButton = AppColors.kGreyColor1;
        BlocProvider.of<AuthCubit>(context)
            .secondGradientColorForGradientIconButton = AppColors.kGreyColor2;
      });
    } else if (pageIndex == 1 && emailController.text.isNotEmpty) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      setState(() {
        BlocProvider.of<AuthCubit>(context)
            .firstGradientColorForGradientIconButton = AppColors.kGreyColor1;
        BlocProvider.of<AuthCubit>(context)
            .secondGradientColorForGradientIconButton = AppColors.kGreyColor2;
      });
    } else if (pageIndex == 2 && passController.text.isNotEmpty) {}
  }

  void backPressed() {
    if (pageIndex > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent));
    return BlocProvider<AuthCubit>(
      create: (context) => AuthCubit(),
      child: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
          state.maybeWhen(
            loadSuccess: (user) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(S.of(context).registration_successful),
                  duration: Duration(seconds: 3),
                  backgroundColor: Colors.green,
                ),
              );
            },
            loadFailure: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(S.of(context).registration_failed),
                  // content: Text("Ошибка регистрации: $message"),
                  duration: const Duration(seconds: 3),
                  backgroundColor: Colors.red,
                ),
              );
            },
            orElse: () {},
          );
        },
        child: BlocBuilder<AuthCubit, AuthhState>(
          builder: (context, state) {
            return GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
              child: Scaffold(
                backgroundColor: AppColors.kWhiteColor,
                body: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        SizedBox(height: 13.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomIconButton(
                                onTap: () {
                                  setState(() {
                                    backPressed();
                                  });
                                },
                                icon: Assets.icons.leftArrow),
                            Stack(
                              children: [
                                const SizedBox(
                                  height: 40,
                                  width: 150,
                                ),
                                Positioned(
                                  top: -55,
                                  left: 0,
                                  right: 0,
                                  child: SizedBox(
                                    height: 40,
                                    width: 150,
                                    child: Lottie.asset(
                                      'assets/json/hello_animation.json',
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox.shrink(),
                          ],
                        ),
                        SizedBox(
                          height: 44.h,
                        ),
                        TextFieldAndButton(
                          activeNickname: S.of(context).active_nickname,
                          controller: definitionTextController(),
                          isFirstPage: pageIndex == 0,
                          hintText: hintTextForTextField!,
                          isActive: true,
                          buttonOnTap: () {
                            if (pageIndex >= 2) {
                              print(nameController.text);
                              print(emailController.text);
                              print(passController.text);
                              String userName = '';
                              if (nameController.text.trim().startsWith("@")) {
                                userName = nameController.text
                                    .trim()
                                    .substring(1); // Удаляем символ @
                              } else {
                                userName = nameController.text;
                              }
                              context
                                  .read<ProfileBloc>()
                                  .add(ProfileEvent.signUp(
                                    userName: userName,
                                    email: emailController.text,
                                    password: passController.text,
                                  ));
                            } else {
                              setState(() {
                                pushNext(context);
                              });
                            }
                          },
                          onChanged: (value) {
                            BlocProvider.of<AuthCubit>(context)
                                .definitionColorsGradientIconButton(value);
                          },
                          selectedGroupImage: (groupImage, imageFilee) {},
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Expanded(
                            child: PageView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: pageController,
                          onPageChanged: (index) {
                            setState(() {
                              if (index == 1) {
                                hintTextForTextField = 'email';
                              } else {
                                hintTextForTextField = S.of(context).password;
                              }
                              pageIndex = index;
                            });
                            BlocProvider.of<AuthCubit>(context)
                                .definitionUserAgreementText(index);
                          },
                          children: [
                            Lottie.asset(Assets.json.onboardingAnimation1),
                            Lottie.asset(Assets.json.onboardingAnimation2),
                            Lottie.asset(Assets.json.onboardingAnimation3),
                          ],
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                context.goNamed(AppRouterNames.authPage);
                              },
                              child: UserAgreement(
                                firstText: S.of(context).i_already_have_an,
                                secondText: S.of(context).account,
                                thirdText: '',
                              ),
                            ),
                            GradientIconButton(
                                onTap: () {
                                  setState(() {
                                    pushNext(context);
                                  });
                                },
                                firstGradientColor: BlocProvider.of<AuthCubit>(
                                        context)
                                    .firstGradientColorForGradientIconButton,
                                secondGradientColor: BlocProvider.of<AuthCubit>(
                                        context)
                                    .secondGradientColorForGradientIconButton,
                                icon: Assets.icons.upArrow)
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
