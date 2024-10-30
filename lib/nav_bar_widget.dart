import 'package:flutter/material.dart';
import 'package:social_network/constants.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget(
      {required this.currentIndex, required this.onIndexChange, super.key});

  final int currentIndex;
  final Function(int) onIndexChange;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: Container(
            margin: EdgeInsets.fromLTRB(45, 15 * rw(context), 45, 0),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 0.0,
              onTap: onIndexChange,
              currentIndex: currentIndex,
              backgroundColor: Colors.white,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Image.asset(currentIndex == 0
                        ? 'assets/home_selected.png'
                        : 'assets/home.png'),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset(currentIndex == 1
                        ? 'assets/search_selected.png'
                        : 'assets/search.png'),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset(currentIndex == 2
                        ? 'assets/chat_selected.png'
                        : 'assets/chat.png'),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset(currentIndex == 3
                        ? 'assets/notification_selected.png'
                        : 'assets/notification.png'),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset(currentIndex == 4
                        ? 'assets/profile_selected.png'
                        : 'assets/profile.png'),
                    label: ''),
              ],
            ),
          ),
        ));
  }
}
