
import 'package:flutter/material.dart';
import '../Ui/cloud.dart';
import '../Ui/files.dart';
import '../Ui/home.dart';
import 'bar_model.dart';

import 'nav_bar.dart';

class MainScreenCloud extends StatefulWidget {
  const MainScreenCloud({super.key});

  @override
  State<MainScreenCloud> createState() => _MainScreenCloudState();
}

class _MainScreenCloudState extends State<MainScreenCloud> {
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
        page:  HomeCloud(tab: 1,),
      ),
      NavModel(
        navKey: searchNavKey,
        page: const Cloud(tab: 2),
      ),
      NavModel(
        navKey: notificationsNavKey,
        page: const Files(tab: 3),
      ),
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
        backgroundColor: Colors.white,
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
