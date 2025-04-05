import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/router/app_router.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBar(
      {super.key,
      required this.onTap,
      required this.pageIndex,
       });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: BottomAppBar(
        color: Colors.white,
        elevation: 0.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
                color: Colors.white),
            child: Row(
              children: [
                navItem(
                  'assets/Home_wallet.svg',
                  pageIndex == 0,
                  onTap: () => onTap(0),
                  onLongPress: () => openFullScreenModal(context),
                ),
                navItem(
                  'assets/Category.svg',
                  pageIndex == 1,
                  onTap: () => onTap(1),
                ),
                navItem(
                  'assets/Graph.svg',
                  pageIndex == 2,
                  onTap: () => onTap(2),
                ),
                navItem(
                  'assets/Setting.svg',
                  pageIndex == 3,
                  onTap: () => onTap(3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget navItem(String icon, bool isSelected,
      {Function()? onTap, Function()? onLongPress}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          HapticFeedback.lightImpact();
          if (onTap != null) {
            onTap();
          }
        },
        onLongPress: () {
          HapticFeedback.lightImpact();
          if (onLongPress != null) {
            onLongPress();
          }
        },
        child: SvgPicture.asset(
          icon,
          color: isSelected
              ? Color.fromRGBO(93, 93, 156, 1)
              : Color.fromRGBO(213, 213, 225, 1),
        ),
      ),
    );
  }
}
