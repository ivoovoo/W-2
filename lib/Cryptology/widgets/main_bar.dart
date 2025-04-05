
import 'package:flutter/material.dart';

import '../screen/main_screen.dart';
import '../screen/trade_screen.dart';
import 'bottom_bar.dart';
import 'bottom_model.dart';

class MainScreenCryptology extends StatefulWidget {
  const MainScreenCryptology({super.key});

  @override
  State<MainScreenCryptology> createState() => _MainScreenCryptologyState();
}

class _MainScreenCryptologyState extends State<MainScreenCryptology> {
  final homeNavKey = GlobalKey<NavigatorState>();
  final searchNavKey = GlobalKey<NavigatorState>();
  final notificationsNavKey = GlobalKey<NavigatorState>();
  final profileNavKey = GlobalKey<NavigatorState>();
  int selectedTab = 0;
  List<NavModel> items = [];

  @override
  void initState() {
    super.initState();
    items = [
      NavModel(
        navKey: homeNavKey,
        page: const MainPage(tab: 1),
      ),
      // NavModel(
      //   navKey: searchNavKey,
      //   page: const TabPage(tab: 2),
      // ),
      // NavModel(
      //   navKey: notificationsNavKey,
      //   page: const TabPage(tab: 3),
      // ),
      // NavModel(
      //   navKey: profileNavKey,
      //   page: const TabPage(tab: 4),
      // ),
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
        // backgroundColor: Color.fromRGBO(235, 246, 246, 1.0),
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
        floatingActionButton: Container(
          margin: const EdgeInsets.only(top: 10),
          height: 64,
          width: 64,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TradeScreen(),
                ),
              );

            },
            backgroundColor: Colors.blue,
            elevation: 0,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 3,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
