import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Style/style.dart';
import '../../../Widgets/map_view.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
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
          Positioned(
            top: 60,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                    child: Icon(Icons.arrow_back_ios_new)),
                Text(
                  'Order #TX8778',
                  style: Style().poppins_stl.copyWith(color: Colors.black),
                ),
                SizedBox(width: 30,),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.51, // Начальный размер
            minChildSize: 0.51, // Минимальный размер
            maxChildSize: 1, // Максимальный размер
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(5, 0, 106, 1),
                        Color.fromRGBO(33, 32, 64, 1),
                      ],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/Ellipse 95.png'),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pkart Logistics',
                                    style: Style().poppins_stl.copyWith(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Image.asset('assets/Frame 120.png'),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6.0,
                                ),
                                child: Container(
                                  width: 44,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white.withOpacity(0.1),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset('assets/Call.svg'),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6.0,
                                ),
                                child: Container(
                                  width: 44,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white.withOpacity(0.1),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset('assets/cha2.svg'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        height: 880,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              OrderWidget(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                ),
                                child: SizedBox(
                                  height: 1,
                                  width: double.infinity,
                                  child: Container(
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                ),
                              ),
                              OrderWidget(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                ),
                                child: SizedBox(
                                  height: 1,
                                  width: double.infinity,
                                  child: Container(
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                ),
                              ),
                              OrderWidget(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                ),
                                child: SizedBox(
                                  height: 1,
                                  width: double.infinity,
                                  child: Container(
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                ),
                              ),
                              OrderWidget(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 160,
      child: Row(
        children: [
          Column(
            children: [
              SvgPicture.asset('assets/Time Circle.svg'),
              SvgPicture.asset('assets/Vector 22.svg'),
              SvgPicture.asset('assets/Polygon 1.svg'),
            ],
          ),
          SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Estimated Delivery Date',
                  style: Style().poppins_stl.copyWith(
                    color: Color.fromRGBO(34, 33, 46, 1),
                  ),
                ),
                Text(
                  '12 May 2022',
                  style: Style().poppins_stl.copyWith(
                    color: Color.fromRGBO(34, 33, 46, 1),
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Mirod Road',
                  style: Style().poppins_stl.copyWith(
                    color: Color.fromRGBO(121, 121, 121, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Bellaire Town',
                  style: Style().poppins_stl.copyWith(
                    color: Color.fromRGBO(121, 121, 121, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
