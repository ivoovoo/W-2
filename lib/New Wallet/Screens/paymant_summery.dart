import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

import '../Elements/custom_keyboard.dart';

class PaymantSummery extends StatelessWidget {
  const PaymantSummery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 238, 250, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(238, 238, 250, 1.0),
        leading: InkWell(
            onTap: () {
Navigator.pop(context);            },
            child: Icon(Icons.arrow_back)),
        title: Text(
          'Payment Summary',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color.fromRGBO(8, 36, 49, 1),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Stack(
              children: [

                Column(
                  children: [
                    SizedBox(height: 30,),
                    Container(
                      width: double.infinity,
                      height: 516,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Simple Package',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(44, 44, 99, 1),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            'SEND MONEY',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(44, 58, 75, 0.5),
                            ),
                          ),
                          SizedBox(height: 40,),
                          Image.asset('assets/p1.png'),
                          SizedBox(height: 10,),
                          Text(
                            'Thomas Wise',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(39, 50, 64, 1),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'djoaeifjodsicjvoiej3901',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(44, 58, 75, 0.5),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  width: 0.3,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset('assets/Bookmark.svg'),
                                        SizedBox(width: 10),
                                        Text(
                                          'TRC 20',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                            color: Color.fromRGBO(44, 58, 76, 0.5),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'COPY',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                        color: Color.fromRGBO(50, 167, 226, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            width: double.infinity,
                            height: 76,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(30),
                              ),
                              color: Color.fromRGBO(226, 226, 240, 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(63, 63, 101, 1),
                                    ),
                                  ),
                                  Text(
                                    '38 USDT',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(63, 63, 101, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(child: Image.asset('assets/p2.png'),top: 0,left: 140,),

              ],
            ),
Spacer(),            Align(
              alignment: Alignment.bottomCenter,
  child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SwipeButton(
                  height: 64,
                  thumb: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: Center(child: Icon(Icons.arrow_forward)),
                    ),
                  ),
                  child: Text(
                    "SWIPE TO PAY",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  activeThumbColor: Color.fromRGBO(82, 82, 152, 1),
                  activeTrackColor: Color.fromRGBO(82, 82, 152, 1),
                  onSwipe: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Swipped"),
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                ),
              ),
),
          ],
        ),
      ),
    );
  }
}
