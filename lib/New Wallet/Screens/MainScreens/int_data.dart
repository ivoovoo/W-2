import 'package:flutter/material.dart';
import '../../Elements/listview_element.dart';

class IntData extends StatelessWidget {
  final int tab;

  const IntData({super.key, required this.tab});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(238, 238, 250, 1.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Internet Data',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(8, 36, 49, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset('assets/Rectangle 2 Copy 8.png'),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Thomas Wise',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(39, 50, 64, 1),
                            ),
                          ),
                          Text(
                            'djoaeifjodsicjvoiej3901',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(44, 58, 75, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Row(
              children: [
                Text(
                  'Choose Package',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(8, 36, 49, 1),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListViewElement(
                    svgPath: 'assets/Group 44.svg',
                    name: 'Simple Package',
                    usdt: '21 USDT',
                    trc: 'TRC 20 djoaeifjodsicjvoiej3901fsedfs',
                  ),
                  ListViewElement(
                    svgPath: 'assets/Group 45.svg',
                    name: 'Simple Package',
                    usdt: '21 USDT',
                    trc: 'TRC 20 djoaeifjodsicjvoiej3901fsedfs',
                  ),
              
                  ListViewElement(
                    svgPath: 'assets/Group 46.svg',
                    name: 'Simple Package',
                    usdt: '21 USDT',
                    trc: 'TRC 20 djoaeifjodsicjvoiej3901fsedfs',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

