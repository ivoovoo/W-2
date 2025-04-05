import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_network/Island/screens/level_map_screen.dart';
import '../core/router/app_router.dart';
import '/Island/screens/home_screen.dart';


import 'dialog_windows/settings_dialog.dart';

class IslandBottomNavigationBar extends StatefulWidget {
  const IslandBottomNavigationBar({super.key});

  @override
  _IslandBottomNavigationBarState createState() => _IslandBottomNavigationBarState();
}

class _IslandBottomNavigationBarState extends State<IslandBottomNavigationBar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 102,
        width: 360,
        child: Stack(
          children: <Widget>[
            SvgPicture.asset(
              'assets/images/svg/navigation_bar.svg',
              alignment: Alignment.center,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 28, right: 28),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => const SettingsDialog(),
                        );
                      },
                      onLongPress: () => openFullScreenModal(context),
                      child: SvgPicture.asset(
                        'assets/images/svg/big_settings_button.svg',
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LevelMapScreen()),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/images/svg/big_level_list_button.svg',
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                      },
                      child: SvgPicture.asset(
                        'assets/images/svg/big_home_button.svg',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: const HomeScreen(),
      //
    );
  }
}
