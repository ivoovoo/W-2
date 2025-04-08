// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// import '../../core/router/app_router.dart';
//
// class NavBar extends StatelessWidget {
//   final int pageIndex;
//   final Function(int) onTap;
//   final Function()? onLongPress; // Made onLongPress nullable
//
//   const NavBar({
//     super.key,
//     required this.onTap,
//     required this.pageIndex,
//     this.onLongPress, // Removed required to make it optional
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       color:  Color.fromRGBO(8, 3, 53, 1.0),
//       elevation: 0.0,
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(10),
//         child: Container(
//           height: 40,
//           color: Colors.transparent,
//           child: Row(
//             children: [
//               navItem(
//                 Icons.pie_chart,
//                 pageIndex == 0,
//                 onTap: () => onTap(0),
//                 onLongPress: () => openFullScreenModal(context),
//               ),
//               navItem(
//                 Icons.book_online_rounded,
//                 pageIndex == 1,
//                 onTap: () => onTap(1),
//               ),
//               navItem(
//                 Icons.account_circle_outlined,
//                 pageIndex == 2,
//                 onTap: () => onTap(2),
//               ),
//               navItem(
//                 Icons.find_replace,
//                 pageIndex == 3,
//                 onTap: () => onTap(3),
//               ),
//               navItem(
//                 Icons.settings,
//                 pageIndex == 4,
//                 onTap: () => onTap(4),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget navItem(IconData icon, bool isSelected,
//       {Function()? onTap, Function()? onLongPress}) {
//     return Expanded(
//       child: InkWell(
//         onTap: () {
//           // Trigger vibration feedback on tap
//           HapticFeedback.lightImpact();
//
//           // Call the provided onTap function, if any
//           if (onTap != null) {
//             onTap();
//           }
//         },
//         onLongPress: () {
//           // Trigger vibration feedback on long press
//           HapticFeedback.heavyImpact();
//
//           // Call the provided onLongPress function, if any
//           if (onLongPress != null) {
//             onLongPress();
//           }
//         },
//         child: Icon(
//           icon,
//           color: isSelected
//               ? Color.fromRGBO(119, 71, 253, 1)
//               : Colors.white.withOpacity(0.5),
//         ),
//       ),
//     );
//   }
// }
