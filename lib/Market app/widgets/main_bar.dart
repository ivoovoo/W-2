import 'package:flutter/material.dart';
import '../screens/card_of_country.dart';
import '../screens/home.dart';
import '../screens/market.dart';
import 'nav_bar.dart';
import 'nav_model.dart';



class MainScreenMarket extends StatefulWidget {
  const MainScreenMarket({super.key});

  @override
  State<MainScreenMarket> createState() => _MainScreenMarketState();
}

class _MainScreenMarketState extends State<MainScreenMarket> {
  final homeNavKey = GlobalKey<NavigatorState>();
  final searchNavKey = GlobalKey<NavigatorState>();
  final notificationsNavKey = GlobalKey<NavigatorState>();
  final profileNavKey = GlobalKey<NavigatorState>();
  int selectedTab = 0;
  List<NavModelMarket> items = [];

  @override
  void initState() {
    super.initState();
    items = [
      NavModelMarket(
        navKey: homeNavKey,
        page: const HomeMarket(tab: 1),
      ),
      NavModelMarket(
        navKey: searchNavKey,
        page: const MarketMarket(tab: 2),
      ),
      NavModelMarket(
        navKey: notificationsNavKey,
        page: const CardOfCountry(tab: 3),
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
        bottomNavigationBar: NavBarMarket(
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
