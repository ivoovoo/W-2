import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:social_network/features/auth_screen/state/auth_cubit.dart';
import 'package:social_network/features/auth_screen/widgets/text_field_and_button.dart';
import 'package:social_network/features/auth_screen/widgets/user_agreement.dart';
import 'package:social_network/features/chats/logics/apps_logic/apps_bloc.dart';

import '../../../../generated/l10n.dart';

class CreateAppPage extends StatefulWidget {
  const CreateAppPage({super.key});

  @override
  State<CreateAppPage> createState() => _CreateAppPageState();
}

class _CreateAppPageState extends State<CreateAppPage> {
  TextEditingController appNameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController webLinkController = TextEditingController();

  PageController pageController = PageController();

  int pageIndex = 0;
  FormData? formDataSiteImage;
  String? hintTextForTextField;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    hintTextForTextField =
        S.of(context).nickname; // Здесь можно использовать context
  }

  @override
  void dispose() {
    appNameController.dispose();
    descriptionController.dispose();
    webLinkController.dispose();
    pageController.dispose();
    super.dispose();
  }

  TextEditingController definitionTextController() {
    TextEditingController controller = TextEditingController();

    if (pageIndex == 0) {
      controller = appNameController;
    } else if (pageIndex == 1) {
      controller = descriptionController;
    } else {
      controller = webLinkController;
    }
    return controller;
  }

  void pushNext(BuildContext context) {
    print('PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP');
    if (pageIndex == 0 && appNameController.text.isNotEmpty) {
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
    } else if (pageIndex == 1 && descriptionController.text.isNotEmpty) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else if (pageIndex == 2 && webLinkController.text.isNotEmpty) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      if (isAuth) {
        context.pop();
      }
    }
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

  bool isAuth = false;
  bool imageSelected = false;
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent));
    return BlocProvider<AuthCubit>(
      create: (context) => AuthCubit(),
      child: BlocListener<AppsBloc, AppsState>(
        listener: (context, state) {
          state.maybeWhen(
            loadSuccess: (groups) {
              setState(() => isAuth = true);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('create successfull'),
                  duration: const Duration(seconds: 3),
                  backgroundColor: Colors.green,
                ),
              );
              context.pop();
            },
            loadFailure: (message) {
              print(message);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('failed create group'),
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
                            Lottie.asset(
                              'assets/json/apps.json',
                              height: 50,
                              width: 50,
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
                          isActive: pageIndex != 3,
                          buttonOnTap: () {
                            if (pageIndex >= 3) {
                              print(appNameController.text);
                              print(descriptionController.text);
                              print(webLinkController.text);
                              context.read<AppsBloc>().add(AppsEvent.createApp(
                                    formDataApp: formDataSiteImage,
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
                          selectedGroupImage: (image, imageFilee) {
                            String appName = '';
                            if (appNameController.text.trim().startsWith("@")) {
                              appName = appNameController.text
                                  .trim()
                                  .substring(1); // Удаляем символ @
                            } else {
                              appName = appNameController.text.trim();
                            }
                            setState(() {
                              imageFile = imageFilee;
                              imageSelected = true;
                              formDataSiteImage = FormData.fromMap({
                                "name": appName,
                                "description": descriptionController.text,
                                "url": webLinkController.text,
                                "site_image": image,
                                "category_site": [3],
                              });
                            });
                          },
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
                                  hintTextForTextField =
                                      S.of(context).description;
                                } else {
                                  hintTextForTextField = 'url';
                                }
                                pageIndex = index;
                              });
                              BlocProvider.of<AuthCubit>(context)
                                  .definitionUserAgreementText(index + 1);
                            },
                            children: [
                              Lottie.asset(Assets.json.onboardingAnimation1),
                              Lottie.asset(Assets.json.onboardingAnimation2),
                              Lottie.asset(Assets.json.onboardingAnimation3),
                              !imageSelected
                                  ? Lottie.asset(
                                      Assets.json.onboardingAnimation1)
                                  : Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(400),
                                          child: Image.file(
                                            imageFile!,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            UserAgreement(
                              firstText: S.of(context).create,
                              secondText: S.of(context).app,
                              thirdText: '',
                            ),
                            GradientIconButton(
                              onTap: () {
                                setState(() {
                                  pushNext(context);
                                });
                              },
                              firstGradientColor:
                                  BlocProvider.of<AuthCubit>(context)
                                      .firstGradientColorForGradientIconButton,
                              secondGradientColor:
                                  BlocProvider.of<AuthCubit>(context)
                                      .secondGradientColorForGradientIconButton,
                              icon: Assets.icons.upArrow,
                            )
                          ],
                        ),
                        SizedBox(height: 10.h),
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
