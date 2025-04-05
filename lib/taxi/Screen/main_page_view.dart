import 'package:flutter/material.dart';

import '../components/bottom_blur.dart';
import '../components/draggable_bottom_sheet.dart';
import '../components/map_view.dart';
import '../components/menu_button.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  late final DraggableScrollableController controller;

  @override
  void initState() {
    super.initState();
    controller = DraggableScrollableController();
    controller.addListener(() {
      print('==-=------  ${controller.size}');
      print('==-=------  ${controller.pixels}');
    });
  }

  // void _showBottomSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (context) {
  //       return Container(
  //         height: 100, // Высота шторки
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround, // Горизонтальная прокрутка
  //           children: [
  //             _buildItem(context, Icons.home, 'Order History', OrderHistory()),
  //             _buildItem(context, Icons.work, 'Pay History', PayHistory()),
  //             _buildItem(context, Icons.school, 'Feedback', Reviews()),
  //             _buildItem(context, Icons.settings, 'Terms & Conditions', Terms()),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
  //
  // Widget _buildItem(BuildContext context, IconData icon, String label, Widget screen) {
  //   return GestureDetector(
  //     onTap: () {
  //       Navigator.pop(context);
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => screen),
  //       );
  //     },
  //     child: Container(
  //       width: 100,
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Icon(icon, color: Colors.black),
  //           // SizedBox(height: 8),
  //           Text(
  //             label,
  //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }


  // void _showBottomSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (context) {
  //       return Container(
  //         padding: EdgeInsets.all(16),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min, // Минимальная высота
  //           children: [
  //             ListTile(
  //               leading: Icon(Icons.home),
  //               title: Text('Home'),
  //               onTap: () {
  //                 Navigator.pop(context); // Закрыть шторку
  //                 print('Home selected');
  //               },
  //             ),
  //             ListTile(
  //               leading: Icon(Icons.work),
  //               title: Text('Work'),
  //               onTap: () {
  //                 Navigator.pop(context); // Закрыть шторку
  //                 print('Work selected');
  //               },
  //             ),
  //             ListTile(
  //               leading: Icon(Icons.school),
  //               title: Text('School'),
  //               onTap: () {
  //                 Navigator.pop(context); // Закрыть шторку
  //                 print('School selected');
  //               },
  //             ),
  //             ListTile(
  //               leading: Icon(Icons.settings),
  //               title: Text('Settings'),
  //               onTap: () {
  //                 Navigator.pop(context); // Закрыть шторку
  //                 print('Settings selected');
  //               },
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          MapView(),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: BottomBlur(),
          ),
          Column(
            children: [
              SafeArea(
                top: true,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 20),
                  child: MenuButton(
                    onTap: () {
                      // _showBottomSheet(context);
                    },
                  ),
                ),
              ),
            ],
          ),
          DraggableBottomSheet(controller: controller)
        ],
      ),
    );
  }
}
