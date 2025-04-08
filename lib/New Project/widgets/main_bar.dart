// import 'package:flutter/material.dart';
// import '../screens/browser.dart';
// import '../../crypto app/screens/key_words.dart';
// import '../screens/receive.dart';
// import 'nav_bar.dart';
// import 'nav_model.dart';
//
// class MainScreenBrowser extends StatefulWidget {
//   const MainScreenBrowser({super.key});
//
//   @override
//   State<MainScreenBrowser> createState() => _MainScreenBrowserState();
// }
//
// class _MainScreenBrowserState extends State<MainScreenBrowser> {
//   final homeNavKey = GlobalKey<NavigatorState>();
//   final searchNavKey = GlobalKey<NavigatorState>();
//   final notificationsNavKey = GlobalKey<NavigatorState>();
//   final profileNavKey = GlobalKey<NavigatorState>();
//   int selectedTab = 0;
//   List<NavModel> items = [];
//
//   @override
//   void initState() {
//     super.initState();
//     items = [
//       NavModel(
//         navKey: homeNavKey,
//         page:  const Browser(tab: 1,),
//       ),
//       // NavModel(
//       //   navKey: searchNavKey,
//       //   page: const KeyWords(tab: 2),
//       // ),
//       NavModel(
//         navKey: notificationsNavKey,
//         page: const Receive(tab: 3),
//       ),
//       // NavModel(
//       //   navKey: profileNavKey,
//       //   page: const TabPage(tab: 4),
//       // ),
//     ];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () {
//         if (items[selectedTab].navKey.currentState?.canPop() ?? false) {
//           items[selectedTab].navKey.currentState?.pop();
//           return Future.value(false);
//         } else {
//           return Future.value(true);
//         }
//       },
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: IndexedStack(
//           index: selectedTab,
//           children: items
//               .map((page) => Navigator(
//             key: page.navKey,
//             onGenerateInitialRoutes: (navigator, initialRoute) {
//               return [
//                 MaterialPageRoute(builder: (context) => page.page)
//               ];
//             },
//           ))
//               .toList(),
//         ),
//         bottomNavigationBar: NavBar(
//           onTap: (index) {
//             if (index == selectedTab) {
//               items[index]
//                   .navKey
//                   .currentState
//                   ?.popUntil((route) => route.isFirst);
//             } else {
//               setState(
//                     () {
//                   selectedTab = index;
//                 },
//               );
//             }
//           },
//           pageIndex: selectedTab,
//         ),
//
//       ),
//     );
//   }
// }
