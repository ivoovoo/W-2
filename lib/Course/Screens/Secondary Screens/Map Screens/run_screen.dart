import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Style/style.dart';
import '../../../Widgets/map_view.dart';

class RunScreen extends StatefulWidget {
  const RunScreen({super.key});

  @override
  State<RunScreen> createState() => _RunScreenState();
}

class _RunScreenState extends State<RunScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const MapView(),
          DraggableScrollableSheet(
            initialChildSize: 0.51, // Начальный размер
            minChildSize: 0.51, // Минимальный размер
            maxChildSize: 0.90, // Максимальный размер
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Stack(
                  children: [



                    Column(
                      children: [
                        Container(height: 50, color: Colors.transparent),
                        Container(
                          height: 830,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 40),
                                Text(
                                  '1.23',
                                  style: Style().montserrat_stl.copyWith(
                                    color: Colors.black,
                                    fontSize: 96,
                                  ),
                                ),
                                Text(
                                  'Km',
                                  style: Style().montserrat_stl.copyWith(
                                    color: Color.fromRGBO(196, 196, 196, 1),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          '8:28',
                                          style: Style().montserrat_stl.copyWith(
                                            color: Colors.black,
                                            fontSize: 32,
                                          ),
                                        ),
                                        Text(
                                          'Started',
                                          style: Style().montserrat_stl.copyWith(
                                            color: Color.fromRGBO(203, 203, 203, 1),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '30:12',
                                          style: Style().montserrat_stl.copyWith(
                                            color: Colors.black,
                                            fontSize: 32,
                                          ),
                                        ),
                                        Text(
                                          'Time',
                                          style: Style().montserrat_stl.copyWith(
                                            color: Color.fromRGBO(203, 203, 203, 1),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '312',
                                          style: Style().montserrat_stl.copyWith(
                                            color: Colors.black,
                                            fontSize: 32,
                                          ),
                                        ),
                                        Text(
                                          'Calories',
                                          style: Style().montserrat_stl.copyWith(
                                            color: Color.fromRGBO(203, 203, 203, 1),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right:165,
                      left:165,
                      child: Container(
                        width: 108,
                        height: 108,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(245, 242, 184, 1),
                              Color.fromRGBO(255, 255, 255, 1),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Center(
                          child: Icon(Icons.pause),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
