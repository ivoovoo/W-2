import 'dart:ui';

import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import '../components/map_view.dart';

class Road extends StatefulWidget {
  const Road({super.key});

  @override
  State<Road> createState() => _RoadState();
}

class _RoadState extends State<Road> {
  int _selectedSegment = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const MapView(),
          Positioned(
            top: 60,
            right: 40,
            left: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    width: double.infinity,
                    height: 66,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Left',style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.5),
                              ),),
                              const Text('St. Uni',style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color.fromRGBO(85, 145, 245, 1),
                                ),
                                child: const Center(
                                  child: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15,),
                                ),
                              ),
                              const SizedBox(width: 20,),
                              const Text('30 m',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 35,
                                color: Colors.white,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.1, // Начальный размер
            minChildSize: 0.1, // Минимальный размер
            maxChildSize: 0.6, // Максимальный размер
            builder: (BuildContext context, ScrollController scrollController) {
              return ClipRRect(
                borderRadius:  BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  // Adjust the blur intensity
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 122,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 7.0),
                                      child: Row(
                                        children: [
                                          RichText(text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: ' 7 min  ',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromRGBO(84, 145, 245, 1),
                                                ),
                                              ),
                                              TextSpan(
                                                text: '2.4 km',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomSlidingSegmentedControl<int>(
                                    height: 30,
                                    initialValue: _selectedSegment,
                                    children: {
                                      0: Text('Walking',style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: _selectedSegment == 0? Colors.white : Colors.black,
                                      ),),
                                      1: Text('New',style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: _selectedSegment == 1? Colors.white : Colors.black,
                                      ),),
                                    },
                                    onValueChanged: (value) {
                                      setState(() {
                                        _selectedSegment = value!;
                                      });
                                    },
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    thumbDecoration: BoxDecoration(
                                      color: Color.fromRGBO(84, 145, 245, 1),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
