import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Order history',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        leading: Container(
          width: 48,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),
            color: Colors.black,
          ),
          child: Center(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('8 june 2019, 18:39',style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),),
                        Text('3.77 USDT',style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Stack(
                      children: [
                        Positioned(
                          top:16,
                          left: 43,
                          child: SvgPicture.asset('assets/ic_route.svg'),),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text('18:22',style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Color.fromRGBO(151, 173, 182, 1),
                                ),),
                                SizedBox(width: 30,),
                                Text('Москва,улица Большая\nЛубянка, дом 2',style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),),
                              ],
                            ),
                            SizedBox(
                              height: 37,
                            ),
                            Row(
                              children: [
                                Text('18:22',style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Color.fromRGBO(151, 173, 182, 1),
                                ),),
                                SizedBox(width: 30,),
                                Text('Москва,улица Большая\nЛубянка, дом 2',style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('8 june 2019, 18:39',style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),),
                        Text('3.77 USDT',style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Stack(
                      children: [
                        Positioned(
                          top:16,
                          left: 43,
                          child: SvgPicture.asset('assets/ic_route.svg'),),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text('18:22',style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Color.fromRGBO(151, 173, 182, 1),
                                ),),
                                SizedBox(width: 30,),
                                Text('Москва,улица Большая\nЛубянка, дом 2',style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),),
                              ],
                            ),
                            SizedBox(
                              height: 37,
                            ),
                            Row(
                              children: [
                                Text('18:22',style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Color.fromRGBO(151, 173, 182, 1),
                                ),),
                                SizedBox(width: 30,),
                                Text('Москва,улица Большая\nЛубянка, дом 2',style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('8 june 2019, 18:39',style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),),
                        Text('3.77 USDT',style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Stack(
                      children: [
                        Positioned(
                          top:16,
                          left: 43,
                          child: SvgPicture.asset('assets/ic_route.svg'),),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text('18:22',style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Color.fromRGBO(151, 173, 182, 1),
                                ),),
                                SizedBox(width: 30,),
                                Text('Москва,улица Большая\nЛубянка, дом 2',style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),),
                              ],
                            ),
                            SizedBox(
                              height: 37,
                            ),
                            Row(
                              children: [
                                Text('18:22',style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Color.fromRGBO(151, 173, 182, 1),
                                ),),
                                SizedBox(width: 30,),
                                Text('Москва,улица Большая\nЛубянка, дом 2',style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),),
                              ],
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
      ),
    );
  }
}
