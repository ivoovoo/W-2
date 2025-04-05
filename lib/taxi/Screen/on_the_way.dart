import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/map_view.dart';

class OnTheWay extends StatefulWidget {
  const OnTheWay({super.key});

  @override
  State<OnTheWay> createState() => _OnTheWayState();
}

class _OnTheWayState extends State<OnTheWay>
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
            maxChildSize: 0.93, // Максимальный размер
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Address',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromRGBO(146, 146, 146, 1),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/location.svg',
                            color: Colors.black,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'Angelina Paris Cafe',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child:
                            TabBarView(controller: _tabController, children: [
                          Container(
                            width: 334,
                            height: 131,
                            color: Colors.white,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      const Text(
                                        'Toyota RAV4',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset('assets/user.svg'),
                                          const Text(
                                            '  4',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Color.fromRGBO(
                                                  146, 146, 146, 1),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset('assets/Ellipse 10.png'),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Icon(
                                            Icons.star,
                                            color:
                                                Color.fromRGBO(249, 215, 58, 1),
                                            size: 15,
                                          ),
                                          const Text(
                                            '  4.3',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const Text(
                                            '  Bryan',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 30,
                                  child: Image.asset('assets/Rectangle 4.png'),
                                ),
                                Positioned(
                                  top: 20,
                                  right: 0,
                                  child: Image.asset('assets/car toyota 1.png'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 334,
                            height: 131,
                            color: Colors.white,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      const Text(
                                        'Toyota RAV4',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset('assets/user.svg'),
                                          const Text(
                                            '  4',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Color.fromRGBO(
                                                  146, 146, 146, 1),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset('assets/Ellipse 10.png'),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Icon(
                                            Icons.star,
                                            color:
                                                Color.fromRGBO(249, 215, 58, 1),
                                            size: 15,
                                          ),
                                          const Text(
                                            '  4.3',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const Text(
                                            '  Bryan',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 30,
                                  child: Image.asset('assets/Rectangle 4.png'),
                                ),
                                Positioned(
                                  top: 20,
                                  right: 0,
                                  child: Image.asset('assets/car toyota 1.png'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 334,
                            height: 131,
                            color: Colors.white,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      const Text(
                                        'Toyota RAV4',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset('assets/user.svg'),
                                          const Text(
                                            '  4',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Color.fromRGBO(
                                                  146, 146, 146, 1),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset('assets/Ellipse 10.png'),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Icon(
                                            Icons.star,
                                            color:
                                                Color.fromRGBO(249, 215, 58, 1),
                                            size: 15,
                                          ),
                                          const Text(
                                            '  4.3',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const Text(
                                            '  Bryan',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 30,
                                  child: Image.asset('assets/Rectangle 4.png'),
                                ),
                                Positioned(
                                  top: 20,
                                  right: 0,
                                  child: Image.asset('assets/car toyota 1.png'),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      Center(
                        child: Container(
                          width: 100,
                          child: TabBar(
                            controller: _tabController,
                            tabs: [
                              const Tab(text: ''),
                              const Tab(text: ''),
                              const Tab(text: ''),
                            ],
                            indicatorColor: const Color.fromRGBO(255, 221, 114, 1),
                            dividerColor: Colors.grey.withOpacity(0.5),
                            dividerHeight: 1,
                            indicatorWeight: 3,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(237, 237, 237, 1),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color.fromRGBO(146, 146, 146, 1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 425,
            left: 150,
            right: 150,
            child: Container(
              width: 100,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/Layer 2.svg'),
                  const Text(
                    ' 5:22',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
