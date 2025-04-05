import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Style/style.dart';
import '../../Widgets/line_chart.dart';
import '../../Widgets/wurm_up.dart';
import '../Secondary Screens/Map Screens/run_screen.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 28, 42, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 80),
          Center(child: Image.asset('assets/Group 19110.png')),
          SizedBox(height: 10),
          LineChartSample2(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/Group 29.png'),
                        SizedBox(width: 15),
                        Column(
                          children: [
                            Text('WarmUp', style: Style().montserrat_stl),
                            Text(
                              'Run 02 km ',
                              style: Style().montserrat_stl.copyWith(
                                fontSize: 13,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => RunScreen()));
                      },
                      child: Container(
                        width: 106,
                        height: 55,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(245, 242, 184, 1),
                              Color.fromRGBO(255, 255, 255, 1),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Start',
                              style: Style().montserrat_stl.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Icon(Icons.play_arrow),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                WarmUpWidget(
                  name: 'Muscle Up',
                  description: '10 reps , 3 sets with 20 sec rest',
                ),
                WarmUpWidget(
                  name: 'Push Up',
                  description: '20 reps , 3 sets with 10 sec rest',
                ),
                WarmUpWidget(
                  name: 'Push Up',
                  description: '20 reps , 3 sets with 10 sec rest',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
