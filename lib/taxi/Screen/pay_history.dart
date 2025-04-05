import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PayHistory extends StatelessWidget {
  const PayHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Order history',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            width: 48,
            height: 56,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
              color: Colors.black,
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
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
                    const Row(
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
                    const SizedBox(height: 20,),
                    Stack(
                      children: [
                        Positioned(
                          top:16,
                          left: 43,
                          child: SvgPicture.asset('assets/ic_route.svg'),),
                        Column(
                          children: [
                            const Row(
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
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 65,),
                                const Text('BOCKCHAIN',style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),),
                                const SizedBox(width: 20,),
                                Container(
                                  width: 69,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const Center(
                                    child: Text('DONE',style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Row(
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
            const SizedBox(height: 20,),
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
                    const Row(
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
                    const SizedBox(height: 20,),
                    Stack(
                      children: [
                        Positioned(
                          top:16,
                          left: 43,
                          child: SvgPicture.asset('assets/ic_route.svg'),),
                        Column(
                          children: [
                            const Row(
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
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 65,),
                                const Text('BOCKCHAIN',style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),),
                                const SizedBox(width: 20,),
                                Container(
                                  width: 69,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const Center(
                                    child: Text('DONE',style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Row(
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
            const SizedBox(height: 20,),
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
                    const Row(
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
                    const SizedBox(height: 20,),
                    Stack(
                      children: [
                        Positioned(
                          top:16,
                          left: 43,
                          child: SvgPicture.asset('assets/ic_route.svg'),),
                        Column(
                          children: [
                            const Row(
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
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 65,),
                                const Text('BOCKCHAIN',style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),),
                                const SizedBox(width: 20,),
                                Container(
                                  width: 69,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const Center(
                                    child: Text('DONE',style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Row(
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
