import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';
import 'package:social_network/core/widgets/button_widget.dart';
import 'package:social_network/core/widgets/tabs_list_widget.dart';
import 'package:social_network/core/widgets/staggered_grid_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  static List<String> items = ['Моя сцена', 'Видео', 'Музыка', 'Твиты'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 50 * rw(context) + MediaQuery.of(context).padding.top,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(
                horizontal: 45, vertical: 10 * rw(context)),
            width: double.infinity,
            decoration: BoxDecoration(
                color: HexColor('#FFFFFF'),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15,
                      color: HexColor('#000000').withOpacity(0.05))
                ],
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: 'Поискать..',
                      hintStyle: getStyle(
                          fontSize: 14,
                          height: 18 / 14,
                          fontWeight: FontWeight.w500,
                          color: HexColor('#000000').withOpacity(0.2)),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
                ButtonWidget(child: Image.asset('assets/search_icon.png'))
              ],
            ),
          ),
          TabsListWidget(items: items),
          const StaggeredGridWidget(
            items: [
              [
                'assets/stag1.png',
                'assets/stag2.png',
                'assets/stag3.png',
                'assets/stag4.png'
              ],
              [
                'assets/stag1.png',
                'assets/stag2.png',
                'assets/stag3.png',
                'assets/stag4.png'
              ]
            ],
            leftCoef: 0.3,
            rightCoef: 0.53,
            itemCount: 2,
          ),
        ],
      )),
    );
  }
}
