
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Cryptology/widgets/main_bar.dart';
import '../../crypto app/navigation/main_bar.dart';
import '../../MOVIES/App.dart';
import '../../Video Editor/UI/home.dart';
import '../../Wallet/Screens/wallet.dart';
import '../../core/router/app_router.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;
  final Function()? onLongPress; // Made onLongPress nullable

  const NavBar({
    super.key,
    required this.onTap,
    required this.pageIndex,
    this.onLongPress, // Removed required to make it optional
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 0,
      ),
      child: BottomAppBar(
        color: Colors.transparent,
        elevation: 0.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 40,
            color: Colors.white,
            child: Row(
              children: [
                navItem(
                  Icons.home,
                  pageIndex == 0,
                  onTap: () => onTap(0),
                  onLongPress:() => openFullScreenModal(context),
                ),
                navItem(
                  Icons.energy_savings_leaf_outlined,
                  pageIndex == 1,
                  onTap: () => onTap(1),
                ),
                navItem(
                  Icons.wallet_giftcard,
                  pageIndex == 2,
                  onTap: () => onTap(2),
                ),
                navItem(
                  Icons.settings,
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

  Widget navItem(IconData icon, bool isSelected,
      {Function()? onTap, Function()? onLongPress}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          // Trigger vibration feedback on tap
          HapticFeedback.lightImpact();

          // Call the provided onTap function, if any
          if (onTap != null) {
            onTap();
          }
        },
        onLongPress: () {
          // Trigger vibration feedback on long press
          HapticFeedback.heavyImpact();

          // Call the provided onLongPress function, if any
          if (onLongPress != null) {
            onLongPress();
          }
        },
        child: Icon(
          icon,
          color: isSelected
              ? Color.fromRGBO(119, 71, 253, 1)
              : Colors.black.withOpacity(0.5),
        ),
      ),
    );
  }
}
