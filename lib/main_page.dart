/*
import 'package:flutter/material.dart';
import 'package:social_network/features/home_page/home_page.dart';
import 'package:social_network/features/messages_page/messages_page.dart';
import 'package:social_network/features/notification_page/notification_page.dart';
import 'package:social_network/features/search_page/groups_page.dart';
import 'package:social_network/nav_bar_widget.dart';
import 'package:social_network/features/profile_page/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  final ValueNotifier<int> _selectedIndexNotifier = ValueNotifier(0);
  final controller = PageController();

  @override
  void initState() {
    super.initState();

    _selectedIndexNotifier.addListener(() {
      controller.jumpToPage(_selectedIndexNotifier.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ValueListenableBuilder(
            valueListenable: _selectedIndexNotifier,
            builder: (context, int value, child) {
              return NavBarWidget(
                currentIndex: value,
                onIndexChange: (index) => _selectedIndexNotifier.value = index,
              );
            }),
        body: PageView.builder(
            itemCount: 5,
            controller: controller,
            onPageChanged: (index) => _selectedIndexNotifier.value = index,
            itemBuilder: (context, index) {
              if (index == 0) {
                return const HomePage();
              }
              if (index == 1) {
                return const SearchPage();
              }
              if (index == 2) {
                return const MessagesPage();
              }
              if (index == 3) {
                return const NotificationPage();
              }
              if (index == 4) {
                return const ProfilePage();
              }

              return Container();
            }));
  }

  @override
  void dispose() {
    _selectedIndexNotifier.dispose();
    super.dispose();
  }
}
*/
