import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Elements/bill_widget.dart';

class ElectrisityBill extends StatelessWidget {
  const ElectrisityBill({super.key});

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
          'Electricity Bill',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color.fromRGBO(8, 36, 49, 1),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Text(
            '23 USDT',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 50,
              color: Color.fromRGBO(44, 44, 99, 1),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Details  ',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Color.fromRGBO(8, 36, 49, 0.5),
                ),
              ),
              SvgPicture.asset('assets/Arrow - Left Circle.svg'),
            ],
          ),
          SizedBox(height: 80),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Account Info',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(8, 36, 49, 1),
                      ),
                    ),

                    BillWidget(
                      svgPath: 'assets/b1.svg',
                      name: 'Name',
                      trc: '@samanta',
                    ),

                    BillWidget(
                      svgPath: 'assets/b3.svg',
                      name: 'Customer TRC 20',
                      trc: 'djoaeifjodsicjvoiej3901fsedfs',
                    ),
                    BillWidget(
                      svgPath: 'assets/b2.svg',
                      name: 'Month',
                      trc: '20 September 2024 19:12',
                    ),

                    Spacer(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Container(
                          width: double.infinity,
                          height: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromRGBO(82, 82, 152, 1),
                          ),
                          child: Center(
                            child: Text(
                              'CONTINUE',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
