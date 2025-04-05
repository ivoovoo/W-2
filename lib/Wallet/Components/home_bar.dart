import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Course/Screens/Secondary Screens/Live Desing/profile_screen.dart';
import '../../core/router/app_router.dart';
import '../Screens/swap.dart';
import '../Screens/wallet.dart';

class HomeScreenWallet extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenWallet> {
  int _selectedIndex = 0;

  // Список виджетов для каждой вкладки
  final List<Widget> _widgetOptions = <Widget>[
    const ProfileScreen(),
    const SwapScreen(),
    const WalletScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          Positioned(
              bottom: 10,
              right: 10,
              left: 10,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              HapticFeedback.lightImpact();
                              _onItemTapped(0);
                            },
                            onLongPress: () => openFullScreenModal(context),
                            child: Image.asset('assets/кошелек.png'),
                          ),
                          InkWell(
                            onTap: () {
                              HapticFeedback.lightImpact();
                              _onItemTapped(1);
                            },
                            child: Image.asset('assets/карта.png'),
                          ),
                          InkWell(
                            onTap: () {
                              HapticFeedback.lightImpact();
                              _onItemTapped(2);
                            },
                            child: Image.asset('assets/перевод.png'),
                          ),
                          InkWell(
                            onTap: () {
                              HapticFeedback.lightImpact();

                            },
                            child: Image.asset('assets/la_signal.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
          // Positioned(
          //   bottom: 0,
          //   right: 0,
          //   left: 0,
          //   top: 600,
          //   child: BackdropFilter(
          //     filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Устанавливаем силу размытия
          //     child: Container(
          //       width: double.infinity,
          //       height: 60,
          //       decoration: BoxDecoration(
          //         color: Colors.transparent, // Прозрачный цвет
          //         borderRadius: BorderRadius.circular(25),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
