import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_network/market/home_screen/repository/titles_of_menu.dart';
import 'package:social_network/market/home_screen/widget/rent_screen.dart';
import 'package:social_network/market/home_screen/widget/side_menu.dart';

class HomeScreenOfMarket extends StatefulWidget {
  const HomeScreenOfMarket({super.key});

  @override
  State<HomeScreenOfMarket> createState() => _HomeScreenOfMarketState();
}

class _HomeScreenOfMarketState extends State<HomeScreenOfMarket> {
  int currentMenuScreen = 0;
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff0a8ed9),
            Color(0xffffffff),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 2 - 20,
                  height: double.infinity,
                  child: SideMenu(
                    listBool: const [
                      true,
                      true,
                      true,
                      true,
                      true,
                      true,
                      true,
                      true,
                      true,
                    ],
                    onTap: (indexOfMenu) {
                      setState(() {
                        isMenuOpen = false;
                        currentMenuScreen = indexOfMenu;
                      });
                    },
                    titles: TitlesOfMenuForHomeScreen.titlesOfMenu,
                    pathToSvgIcons: TitlesOfMenuForHomeScreen.pathToSvgIcons,
                    isHomeScreen: true,
                    onCreate: () {},
                  ),
                ),
                AnimatedScale(
                  alignment: Alignment.centerRight,
                  scale: isMenuOpen ? 0.5 : 1,
                  duration: const Duration(milliseconds: 300),
                  child: IndexedStack(
                    index: 0,
                    children: [
                      RentScreen(
                        isMenuOpen: isMenuOpen,
                        onOpenMenu: () {
                          setState(() {
                            isMenuOpen = true;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 60.h),
        ],
      ),
    );
  }
}
