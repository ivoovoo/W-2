import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Elements/cont_wid_menu.dart';

class Menu extends StatelessWidget {
  final int tab;

  const Menu({super.key, required this.tab});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(238, 238, 250, 1.0),
      child: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Menu',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(8, 36, 49, 1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(229, 229, 243, 1.0),
                // Черный цвет фона
                hintText: '  Search',
                hintStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(8, 36, 49, 1),
                ),
                // Цвет подсказки
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0), // Округленные углы
                  borderSide: BorderSide.none, // Убираем рамку
                ),
                suffixIcon: Icon(
                  Icons.search_rounded,
                  color: Color.fromRGBO(32, 14, 50, 1),
                ),
              ),
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(8, 36, 49, 1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shortcuts',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(8, 36, 49, 1),
                  ),
                ),
                Text(
                  'Customize',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(82, 82, 152, 1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          ContWidgetMenu(svgPath: 'assets/Group 212.svg', text: 'Send Money'),
          ContWidgetMenu(
            svgPath: 'assets/Group 213.svg',
            text: 'Top up Wallet',
          ),
          ContWidgetMenu(svgPath: 'assets/Group 214.svg', text: 'Bill Payment'),
          ContWidgetMenu(svgPath: 'assets/Group 215.svg', text: 'Withdraw'),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 32, bottom: 22),
            child: Row(
              children: [
                Text(
                  'Other Menu',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(8, 36, 49, 1),
                  ),
                ),
              ],
            ),
          ),
          ContWidgetMenu(svgPath: 'assets/Group 216.svg', text: 'History Transactions'),
          ContWidgetMenu(svgPath: 'assets/Group 217.svg', text: 'Request Payment'),
          ContWidgetMenu(svgPath: 'assets/Group 218.svg', text: 'Settings'),

        ],
      ),
    );
  }
}

