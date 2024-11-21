import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/core/router/app_router_names.dart';
import 'package:social_network/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_network/features/auth_screen/data_provider/auth_data_provider.dart';
import 'package:social_network/features/auth_screen/logic/auth_bloc.dart';
import 'package:social_network/features/auth_screen/repository/auth_repository.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../state/auth_cubit.dart';
import '../text_field_and_button.dart';
import '../user_agreement.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late AuthBloc authBloc;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  PageController pageController = PageController();

  int pageIndex = 0;

  @override
  void initState() {
    authBloc = AuthBloc(AuthRepository(authDataProvider: AuthDataProvider()));
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passController.dispose();
    pageController.dispose();
    authBloc.close();
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
    } else if (pageIndex == 2 && passController.text.isNotEmpty) {
      if (isAuth) {
        context.goNamed(AppRouterNames.home);
      }
    }
  }

  void backPressed() {
    if (pageIndex > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  bool isAuth = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent));
    return BlocProvider<AuthCubit>(
      create: (context) => AuthCubit(),
      child: BlocListener<AuthBloc, AuthState>(
        bloc: authBloc,
        listener: (context, state) {
          state.maybeWhen(
            loadSuccess: () {
              setState(() => isAuth = true);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Вы успешно зарегистрировались"),
                  duration: Duration(seconds: 3),
                  backgroundColor: Colors.green,
                ),
              );
              context.goNamed(AppRouterNames.home);
            },
            loadFailure: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Ошибка регистрации: $message"),
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
                        SizedBox(
                          height: 13.h,
                        ),
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
                            SvgPicture.asset(Assets.icons.logo),
                            const SizedBox.shrink(),
                          ],
                        ),
                        SizedBox(
                          height: 44.h,
                        ),
                        TextFieldAndButton(
                            controller: definitionTextController(),
                            hintText:
                                BlocProvider.of<AuthCubit>(context).buttonText,
                            buttonOnTap: () {
                              if (pageIndex >= 2) {
                                // NetServ().getMessages();
                                /*registerUser(
                                      nameController.text,
                                      emailController.text,
                                      passController.text);*/
                                // loginUser(emailController.text,
                                //     passController.text);
                                // updateRec();
                                print(nameController.text);
                                print(emailController.text);
                                print(passController.text);
                                authBloc.add(AuthEvent.signUp(
                                  userName: nameController.text,
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
                            }),
                        SizedBox(
                          height: 20.h,
                        ),
                        Expanded(
                            child: PageView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: pageController,
                          onPageChanged: (index) {
                            pageIndex = index;
                            BlocProvider.of<AuthCubit>(context)
                                .definitionTextButton(index);
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
                              child: const UserAgreement(
                                firstText: "I have ",
                                secondText: 'account ',
                                thirdText: 'to Connect',
                                // firstText:
                                //     BlocProvider.of<AuthCubit>(context).firstText,
                                // secondText: BlocProvider.of<AuthCubit>(context)
                                //     .secondText,
                                // thirdText:
                                //     BlocProvider.of<AuthCubit>(context).thirdText,
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
