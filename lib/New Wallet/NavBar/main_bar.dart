import 'package:flutter/material.dart';
import '../Screens/MainScreens/balance.dart';
import '../Screens/MainScreens/contacts.dart';
import '../Screens/MainScreens/int_data.dart';
import '../Screens/MainScreens/menu.dart';
import 'bar_model.dart';
import 'bottom_bar.dart';

class MainScreenWal extends StatefulWidget {
  const MainScreenWal({super.key});

  @override
  State<MainScreenWal> createState() => _MainScreenWalState();
}

class _MainScreenWalState extends State<MainScreenWal> {
  final homeNavKey = GlobalKey<NavigatorState>();
  final searchNavKey = GlobalKey<NavigatorState>();
  final notificationsNavKey = GlobalKey<NavigatorState>();
  final profileNavKey = GlobalKey<NavigatorState>();
  int selectedTab = 3;
  List<NavModel> items = [];

  @override
  void initState() {
    super.initState();
    items = [
      NavModel(
        navKey: homeNavKey,
        page:  Balance(tab: 1),
      ),
      NavModel(
        navKey: profileNavKey,
        page: const Menu(tab: 2),
      ),

      NavModel(
        navKey: notificationsNavKey,
        page: const IntData(tab: 3),
      ),
      NavModel(
        navKey: searchNavKey,
        page: const Contacts(tab: 4),
      ),

    ];
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (items[selectedTab].navKey.currentState?.canPop() ?? false) {
          items[selectedTab].navKey.currentState?.pop();
          return Future.value(false);
        } else {
          return Future.value(true);
        }
      },
      child: Scaffold(
        body: IndexedStack(
          index: selectedTab,
          children: items
              .map((page) => Navigator(
            key: page.navKey,
            onGenerateInitialRoutes: (navigator, initialRoute) {
              return [
                MaterialPageRoute(builder: (context) => page.page)
              ];
            },
          ))
              .toList(),
        ),
        bottomNavigationBar: NavBar(
          onTap: (index) {
            if (index == selectedTab) {
              items[index]
                  .navKey
                  .currentState
                  ?.popUntil((route) => route.isFirst);
            } else {
              setState(
                    () {
                  selectedTab = index;
                },
              );
            }
          },
          pageIndex: selectedTab,
        ),
      ),
    );
  }
}