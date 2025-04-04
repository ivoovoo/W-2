import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_network/features/profile/logic/profile_bloc.dart';
import '../../generated/l10n.dart';
import 'state/auth_cubit.dart';
import 'widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController usernameController = TextEditingController();
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
    usernameController.dispose();
    passController.dispose();
    pageController.dispose();
    super.dispose();
  }

  TextEditingController definitionTextController() {
    TextEditingController controller = TextEditingController();

    if (pageIndex == 0) {
      controller = usernameController;
    } else if (pageIndex == 1) {
      controller = passController;
    }
    return controller;
  }

  void pushNext(BuildContext context) {
    if (pageIndex == 0 && usernameController.text.isNotEmpty) {
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
    } else if (pageIndex == 1 && passController.text.isNotEmpty) {}
  }

  void backPressed() {
    if (pageIndex > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      context.pop();
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
                  content: Text(S.of(context).login_successful),
                  duration: Duration(seconds: 3),
                  backgroundColor: Colors.green,
                ),
              );
            },
            loadFailure: (message) {
              print(message);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(S.of(context).invalid_login_or_password),
                  // content: Text("Ошибка авторизации: $message"),
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
                          isFirstPage: pageIndex == 0,
                          controller: definitionTextController(),
                          hintText: hintTextForTextField!,
                          isActive: true,
                          buttonOnTap: () {
                            if (pageIndex >= 1) {
                              // NetServ().getMessages();
                              /*registerUser(
                                      nameController.text,
                                      emailController.text,
                                      passController.text);*/
                              // loginUser(emailController.text,
                              //     passController.text);
                              // updateRec();
                              print(usernameController.text);
                              print(passController.text);
                              String userName = '';
                              if (usernameController.text
                                  .trim()
                                  .startsWith("@")) {
                                userName = usernameController.text
                                    .trim()
                                    .substring(1); // Удаляем символ @
                              } else {
                                userName = usernameController.text;
                              }
                              context
                                  .read<ProfileBloc>()
                                  .add(ProfileEvent.signIn(
                                    username: userName,
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
                                hintTextForTextField = S.of(context).password;
                              }
                              pageIndex = index;
                            });
                            BlocProvider.of<AuthCubit>(context)
                                .definitionUserAgreementText(index + 1);
                          },
                          children: [
                            Lottie.asset(Assets.json.onboardingAnimation2),
                            Lottie.asset(Assets.json.onboardingAnimation3),
                          ],
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                context.pop();
                              },
                              child: UserAgreement(
                                firstText: S.of(context).create,
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
