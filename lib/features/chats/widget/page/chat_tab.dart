import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:social_network/features/chats/widget/page/chats_page.dart';
import 'package:social_network/features/chats/widget/page/groups_page.dart';
import 'package:social_network/features/chats/widget/page/apps_page.dart';
import 'package:social_network/generated/l10n.dart';

import '../../../../core/router/app_router_names.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  late PageController _pageController;

  List<Widget> pages = [
    AppsPage(),
    ChatsPage(),
    GroupsPage(),
  ];
  int currentPage = 0;

  // void _setCurrentPage(int index) {
  //   setState(() {
  //     currentPage = index;
  //   });
  // }

  @override
  void initState() {
    _pageController = PageController(initialPage: 1);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.paddingOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(height: padding.top),
            Expanded(
              child: Stack(
                children: [
                  PageView.builder(
                    itemCount: pages.length,
                    controller: _pageController,
                    itemBuilder: (context, index) {
                      return pages[index];
                    },
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 10,
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              _pageController.animateToPage(
                                0,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                            child:
                                ButtonOfChatTab(buttonName: S.of(context).apps),
                          ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () {
                            // context.pushNamed(
                            //   AppRouterNames.chatsDetail,
                            //   extra: 1,
                            //   pathParameters: {
                            //     'type_of_chat': 'chat',
                            //     'user_name': "unknown",
                            //     'is_ai_chat': 'true',
                            //   },
                            // );
                            context.pushNamed(AppRouterNames.chatWithAi);
                          },
                          child: Lottie.asset(
                            'assets/json/ai_chat.json',
                            fit: BoxFit.cover,
                            height: 90,
                            width: 90,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              _pageController.animateToPage(
                                2,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: ButtonOfChatTab(
                                buttonName: S.of(context).groups),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }
}

class ButtonOfChatTab extends StatelessWidget {
  const ButtonOfChatTab({
    super.key,
    required this.buttonName,
  });

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xffff8bad),
            Color(0xff7fbbfb),
          ],
        ),
      ),
      child: Text(
        buttonName,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: 'Inter',
          color: Colors.white,
        ),
      ),
    );
  }
}
