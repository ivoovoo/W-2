import 'package:flutter/material.dart';
import 'package:social_network/core/router/app_router.dart';
import 'package:social_network/market/home_screen/widget/create_new_button.dart';
import 'package:social_network/market/home_screen/widget/menu_item.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    super.key,
    required this.titles,
    required this.pathToSvgIcons,
    required this.onTap,
    required this.listBool,
    required this.onCreate,
    this.isHomeScreen = true,
  });

  final List<String> titles;
  final List<String> pathToSvgIcons;
  final bool isHomeScreen;
  final Function(int) onTap;
  final List<bool> listBool;
  final VoidCallback onCreate;

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int _indexOfCurrentMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      spacing: 20,
      children: [
        MenuItem(
          title: widget.titles[0],
          isSelected: _indexOfCurrentMenu == 0,
          pathToSvgIcon: widget.pathToSvgIcons[0],
          onTap: () {
            setState(() {
              _indexOfCurrentMenu = 0;
              widget.onTap(_indexOfCurrentMenu);
            });
          },
          isEmpty: widget.listBool[0],
        ),
        MenuItem(
          title: widget.titles[1],
          isSelected: _indexOfCurrentMenu == 1,
          pathToSvgIcon: widget.pathToSvgIcons[1],
          onTap: () {
            setState(() {
              _indexOfCurrentMenu = 1;
              widget.onTap(_indexOfCurrentMenu);
            });
          },
          isEmpty: widget.listBool[1],
        ),
        MenuItem(
          title: widget.titles[2],
          isSelected: _indexOfCurrentMenu == 2,
          pathToSvgIcon: widget.pathToSvgIcons[2],
          onTap: () {
            setState(() {
              _indexOfCurrentMenu = 2;
              widget.onTap(_indexOfCurrentMenu);
            });
          },
          isEmpty: widget.listBool[2],
        ),
        Divider(
          height: 1,
          color: Colors.white.withOpacity(0.5),
        ),
        MenuItem(
          title: widget.titles[3],
          isSelected: _indexOfCurrentMenu == 3,
          pathToSvgIcon: widget.pathToSvgIcons[3],
          onTap: () {
            setState(() {
              _indexOfCurrentMenu = 3;
              widget.onTap(_indexOfCurrentMenu);
            });
          },
          isEmpty: widget.listBool[3],
        ),
        MenuItem(
          title: widget.titles[4],
          isSelected: _indexOfCurrentMenu == 4,
          pathToSvgIcon: widget.pathToSvgIcons[4],
          onTap: () {
            setState(() {
              _indexOfCurrentMenu = 4;
              widget.onTap(_indexOfCurrentMenu);
            });
          },
          isEmpty: widget.listBool[4],
        ),
        MenuItem(
          title: widget.titles[5],
          isSelected: _indexOfCurrentMenu == 5,
          pathToSvgIcon: widget.pathToSvgIcons[5],
          onTap: () {
            setState(() {
              _indexOfCurrentMenu = 5;
              widget.onTap(_indexOfCurrentMenu);
            });
          },
          isEmpty: widget.listBool[5],
        ),
        Divider(
          height: 1,
          color: Colors.white.withOpacity(0.5),
        ),
        MenuItem(
          title: widget.titles[6],
          isSelected: _indexOfCurrentMenu == 6,
          pathToSvgIcon: widget.pathToSvgIcons[6],
          onTap: () {
            setState(() {
              _indexOfCurrentMenu = 6;
              widget.onTap(_indexOfCurrentMenu);
            });
          },
          isEmpty: widget.listBool[6],
        ),
        MenuItem(
          title: widget.titles[7],
          isSelected: _indexOfCurrentMenu == 7,
          pathToSvgIcon: widget.pathToSvgIcons[7],
          onTap: () {
            setState(() {
              _indexOfCurrentMenu = 7;
              widget.onTap(_indexOfCurrentMenu);
            });
          },
          isEmpty: widget.listBool[7],
        ),
        MenuItem(
          title: widget.titles[8],
          isSelected: _indexOfCurrentMenu == 8,
          pathToSvgIcon: widget.pathToSvgIcons[8],
          onTap: () {
            setState(() {
              _indexOfCurrentMenu = 8;
              widget.onTap(_indexOfCurrentMenu);
            });
          },
          isEmpty: widget.listBool[8],
        ),
        Column(
          children: [
            const SizedBox(height: 10),
            widget.isHomeScreen
                ? CreateNewButton(
                    onTap: () {
                      appNotifier.switchingToSecondMenu();
                    },
                  )
                : InkWell(
                    onTap: widget.onCreate,
                    child: Container(
                      alignment: Alignment.center,
                      height: 35,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xffa7f2be),
                            Color(0xff81bdf9),
                          ],
                        ),
                      ),
                      child: Text(
                        'Create',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ],
    );
  }
}
