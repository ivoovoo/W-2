import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

import '../Elements/custom_keyboard.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({super.key});

  @override
  State<Withdraw> createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  int selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 238, 250, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(238, 238, 250, 1.0),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        title: Text(
          'Withdraw',
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
            SizedBox(height: 40),
            Text(
              '31 USDT',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 50,
                color: Color.fromRGBO(44, 44, 99, 1),
              ),
            ),
            Text(
              'Your Balance 98 USDT',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color.fromRGBO(44, 44, 99, 1),
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Choose Blockchain Account',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color.fromRGBO(8, 36, 49, 1),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _buildRadioButton(1, 'TRC 20', 'assets/w1.svg', '219 USDT'),
            _buildRadioButton(2, 'SOLANA', 'assets/w2.svg', '0.9319 SOL'),
            _buildRadioButton(3, 'TON', 'assets/w3.svg', '12.9378 TON'),
            Spacer(),
            Align(
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

  Widget _buildRadioButton(int value, String name, String svgpath, String sum) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = value;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        height: 84,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: selectedOption == value ? Colors.blue : Colors.transparent,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(svgpath),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: Color.fromRGBO(44, 44, 99, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        sum,
                        style: TextStyle(
                          color: Color.fromRGBO(8, 36, 49, 0.5),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 36,
                height: 36,
                decoration: selectedOption == value
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromRGBO(8, 160, 247, 1),
                      )
                    : BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromRGBO(8, 160, 247, 0.2),
                        border: Border.all(
                          width: 1,
                          color: Color.fromRGBO(8, 160, 247, 1),
                        )),
                child: selectedOption == value
                    ? Center(
                        child: SvgPicture.asset('assets/Line 2.svg'),
                      )
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
