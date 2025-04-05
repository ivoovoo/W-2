import 'package:flutter/material.dart';

import '../Pages/exchange_screen.dart';
import '../Pages/home.dart';
import '../Pages/receive_screen.dart';
import '../Pages/send_screen.dart';
import 'bottom_bar.dart';
import 'bottom_model.dart';

class MainScreenExchange extends StatefulWidget {
  const MainScreenExchange({super.key});

  @override
  State<MainScreenExchange> createState() => _MainScreenExchangeState();
}

class _MainScreenExchangeState extends State<MainScreenExchange> {
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
        page: const HomeScreen(tab: 1),
      ),
      NavModel(
        navKey: searchNavKey,
        page: const ExchangeScreen(tab: 2),
      ),
      NavModel(
        navKey: notificationsNavKey,
        page: const ReceiveScreen(tab: 3),
      ),
      NavModel(
        navKey: profileNavKey,
        page: const SendScreen(tab: 4),
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
        // floatingActionButton: Container(
        //   margin: const EdgeInsets.only(top: 10),
        //   height: 46,
        //   width: 46,
        //   child: FloatingActionButton(
        //     onPressed: () {},
        //     backgroundColor: Color.fromRGBO(112, 78, 244, 1),
        //     elevation: 0,
        //     child: const Icon(
        //       Icons.add,
        //       color: Colors.white,
        //     ),
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(100),
        //     ),
        //   ),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
