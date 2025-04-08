import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

import '../../New Wallet/Elements/custom_keyboard.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  final TextEditingController _controller_keyboard = TextEditingController();

  double currentBalance = 22000.12;

  @override
  void initState() {
    super.initState();
    _controller_keyboard.addListener(_updateText);
  }

  void _updateText() {
    String currentText = _controller_keyboard.text;

    // Remove 'USDT' if it exists and trim the text
    String numericPart = currentText.replaceAll(' USDT', '').trim();

    // Update the text only if it doesn't already end with 'USDT'
    if (!currentText.endsWith(' USDT')) {
      _controller_keyboard.text = '$numericPart USDT'; // No space before 'USDT'

      // Move the cursor to the end of the text
      _controller_keyboard.selection = TextSelection.fromPosition(
        TextPosition(offset: _controller_keyboard.text.length),
      );
    }

    // Attempt to parse the numeric part and subtract from currentBalance
    if (numericPart.isNotEmpty) {
      double enteredValue = double.tryParse(numericPart) ?? 0.0;
      currentBalance = 22000.12 - enteredValue; // Subtract the entered value from the current balance
    }
  }


  @override
  void dispose() {
    _controller_keyboard.dispose();
    super.dispose();
  }

  bool _isSwiped = false;

  void _onSwipe() {
    setState(() {
      _isSwiped = true; // Меняем состояние после свайпа
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        titleSpacing: 1,
        title: Row(
          children: [
            Text(
              'Send Money',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color.fromRGBO(8, 36, 49, 1),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text('$currentBalance USDT',style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Color.fromRGBO(8, 36, 48, 1),
            ),),
          )
        ],
      ),
      body: Column(
        children: [
          // SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(241, 241, 249, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Image.asset('assets/image1.png'),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '@samantha',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(39, 50, 64, 1),
                          ),
                        ),
                        Text(
                          '@djoaeifjodsicjvoiej3901fsedfs',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(44, 58, 75, 0.5),
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
              Expanded(
                child: TextField(
                  controller: _controller_keyboard,
                  readOnly: true,
                  decoration: const InputDecoration(
                    hintText: '0 USDT',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 50,
                      color: Color.fromRGBO(82, 82, 152, 1),
                    ),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.transparent, // Прозрачный фон
                  ),
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 50,
                    color: Color.fromRGBO(82, 82, 152, 1),
                  ),
                  // Цвет текста
                  cursorColor: Colors.white,
                  textAlign: TextAlign.center, // Выравнивание текста по центру
                ),
              ),
            ],
          ),

          CustomKeyboard(
            onKeyTap: (value) {
              setState(() {
                _controller_keyboard.text += value;
              });
            },
            onBackspace: () {
              setState(() {
                String currentText = _controller_keyboard.text;

                // Check if the text length is greater than or equal to 5
                if (currentText.length >= 5) {
                  // Remove the fifth character from the end
                  String newText = currentText.substring(0, currentText.length - 5) +
                      currentText.substring(currentText.length - 4);
                  _controller_keyboard.text = newText.trim();

                  // Move the cursor to the end of the text
                  _controller_keyboard.selection = TextSelection.fromPosition(
                    TextPosition(offset: _controller_keyboard.text.length),
                  );
                }
              });
            },
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30, bottom: 50),
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300), // Длительность анимации
              child:
                  _isSwiped
                      ? Container(
                        key: ValueKey<int>(1),
                        // Уникальный ключ для анимации
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromRGBO(82, 82, 152, 1),
                        ),
                        alignment: Alignment.center,
                        child: Center(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/Line 2.svg',
                                color: Color.fromRGBO(82, 82, 152, 1),
                              ),
                            ),
                          ),
                        ),
                      )
                      : SwipeButton(
                        duration: Duration(seconds: 200),
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
                          "SWIPE TO SEND",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        activeThumbColor: Color.fromRGBO(82, 82, 152, 1),
                        activeTrackColor: Color.fromRGBO(82, 82, 152, 1),
                        onSwipe: _onSwipe,
                      ),
            ),
          ),
        ],
      ),
    );
  }
}
