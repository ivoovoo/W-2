import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:social_network/features/auth_screen/state/auth_cubit.dart';
import 'package:social_network/features/auth_screen/widgets/text_field_and_button.dart';
import 'package:social_network/features/auth_screen/widgets/user_agreement.dart';
import 'package:social_network/features/chats/logics/groups_logic/groups_bloc.dart';
import 'package:social_network/generated/l10n.dart';

class CreateGroupChatPage extends StatefulWidget {
  const CreateGroupChatPage({super.key});

  @override
  State<CreateGroupChatPage> createState() => _CreateGroupChatPageState();
}

class _CreateGroupChatPageState extends State<CreateGroupChatPage> {
  TextEditingController groupNameController = TextEditingController();

  PageController pageController = PageController();

  int pageIndex = 0;
  FormData? formDataGroupImage;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    groupNameController.dispose();
    pageController.dispose();
    super.dispose();
  }

  void pushNext(BuildContext context) {
    if (pageIndex == 0 && groupNameController.text.isNotEmpty) {
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
      child: BlocListener<GroupsBloc, GroupsState>(
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
                              icon: Assets.icons.leftArrow,
                            ),
                            Lottie.asset(
                              'assets/json/chats.json',
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
                            isFirstPage: pageIndex == 0,
                            controller: groupNameController,
                            hintText: BlocProvider.of<AuthCubit>(context)
                                .buttonTextCreateGroup,
                            isActive: pageIndex == 0,
                            selectedGroupImage: (groupImage, imageFilee) {
                              String grName = '';
                              if (groupNameController.text.startsWith("@")) {
                                grName = groupNameController.text
                                    .substring(1); // Удаляем символ @
                              } else {
                                grName = groupNameController.text;
                              }
                              setState(() {
                                formDataGroupImage = FormData.fromMap({
                                  "name": grName,
                                  "group_image": groupImage,
                                });
                                imageFile = imageFilee;
                                imageSelected = true;
                              });
                            },
                            buttonOnTap: () {
                              if (pageIndex >= 1) {
                                print(groupNameController.text);
                                context
                                    .read<GroupsBloc>()
                                    .add(GroupsEvent.createGroupChat(
                                      formDataGroupChat: formDataGroupImage,
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
                            setState(() {
                              pageIndex = index;
                            });
                            BlocProvider.of<AuthCubit>(context)
                                .definitionTextButtonOfCreateGroup(index);
                            BlocProvider.of<AuthCubit>(context)
                                .definitionUserAgreementText(index + 1);
                          },
                          children: [
                            Lottie.asset(Assets.json.onboardingAnimation1),
                            !imageSelected
                                ? Lottie.asset(Assets.json.onboardingAnimation1)
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
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            UserAgreement(
                              firstText: S.of(context).create,
                              secondText: S.of(context).group,
                              thirdText: '',
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
