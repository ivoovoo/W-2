import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/map_view.dart';

class OnThePay extends StatefulWidget {
  const OnThePay({super.key});

  @override
  State<OnThePay> createState() => _OnThePayState();
}

class _OnThePayState extends State<OnThePay>
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
                      Expanded(
                        child:
                        TabBarView(controller: _tabController, children: [
                          Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color.fromRGBO(237, 237, 237, 1),
                                ),
                                child: const Center(
                                  child: Text('Uuihuigiubjhilug8t67t7',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(146, 146, 146, 1),
                                  ),),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                width: double.infinity,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color.fromRGBO(237, 237, 237, 1),
                                ),
                                child: const Center(
                                  child: Text('0.006138 USDT',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(146, 146, 146, 1),
                                  ),),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color.fromRGBO(237, 237, 237, 1),
                                ),
                                child: const Center(
                                  child: Text('Uuihuigiubjhilug8t67t7',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(146, 146, 146, 1),
                                  ),),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                width: double.infinity,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color.fromRGBO(237, 237, 237, 1),
                                ),
                                child: const Center(
                                  child: Text('0.006138 USDT',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(146, 146, 146, 1),
                                  ),),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color.fromRGBO(237, 237, 237, 1),
                                ),
                                child: const Center(
                                  child: Text('Uuihuigiubjhilug8t67t7',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(146, 146, 146, 1),
                                  ),),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                width: double.infinity,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color.fromRGBO(237, 237, 237, 1),
                                ),
                                child: const Center(
                                  child: Text('0.006138 USDT',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(146, 146, 146, 1),
                                  ),),
                                ),
                              ),
                            ],
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
                          color:  Colors.black,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Text(
                            'SEND',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white,
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
            left: 140,
            right: 140,
            child: Container(
              width: 100,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.black,
              ),
              child: const Center(
                child: Text(
                  '557.66 USDT',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
