import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Elements/row_widget_balance.dart';
import '../electrisity_bill.dart';
import '../paymant_summery.dart';
import '../send_money.dart';
import '../withdraw.dart';

class Balance extends StatelessWidget {
  final int tab;

  const Balance({super.key, required this.tab});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(238, 238, 250, 1.0),
      child: Column(
        children: [
          const SizedBox(height: 100),
          const Text(
            'Your Balance',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(8, 36, 49, 1),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              '38.19 USDT',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(44, 44, 99, 1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 40.0,
              right: 20,
              left: 20,
              top: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ElectrisityBill()));
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/Group 112.svg'),
                      const SizedBox(height: 10),
                      const Text(
                        'Transfer',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Color.fromRGBO(129, 129, 151, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PaymantSummery()));
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/Group 113.svg'),
                      const SizedBox(height: 10),
                      const Text(
                        'Top-up',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Color.fromRGBO(129, 129, 151, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SendMoney()));
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/Group 114.svg'),
                      const SizedBox(height: 10),
                      const Text(
                        'Bill',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Color.fromRGBO(129, 129, 151, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Withdraw()));
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/Group 115.svg'),
                      const SizedBox(height: 10),
                      const Text(
                        'More',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Color.fromRGBO(129, 129, 151, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'Transactions',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(8, 36, 49, 1),
                        ),
                      ),
                    ),
                    RowWidgetBalance(
                      svgPath: 'assets/Group 4.svg',
                      name: 'Grocery',
                      date: 'Nov 17',
                      usdt: '32 USDT',
                      description: 'Minimarket Anugrah',
                    ),
                    RowWidgetBalance(
                      svgPath: 'assets/Group 5.1.svg',
                      name: 'Entertainment',
                      date: 'Nov 17',
                      usdt: '32 USDT',
                      description: 'Football Game',
                    ),
                    RowWidgetBalance(
                      svgPath: 'assets/Group 6.svg',
                      name: 'Equipments',
                      date: 'Nov 17',
                      usdt: '32 USDT',
                      description: 'DSLR Camera',
                    ),
                    RowWidgetBalance(
                      svgPath: 'assets/Group 7.svg',
                      name: 'Office Items',
                      date: 'Nov 17',
                      usdt: '32 USDT',
                      description: 'Stationary',
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
