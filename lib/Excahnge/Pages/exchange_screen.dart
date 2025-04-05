import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_keyboard.dart';

class ExchangeScreen extends StatefulWidget {
  final int tab;
  const ExchangeScreen({super.key, required this.tab});

  @override
  State<ExchangeScreen> createState() => _ExchangeScreenState();
}

class _ExchangeScreenState extends State<ExchangeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation1;
  late Animation<Color?> _colorAnimation2;
  final TextEditingController _controller_keyboard = TextEditingController();

  void _showCustomKeyboard() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Позволяет клавиатуре занимать больше места
      backgroundColor: Colors.transparent, // Прозрачный фон
      builder: (context) {
        return CustomKeyboard(
          onKeyTap: (value) {
            setState(() {
              _controller_keyboard.text += value; // Добавляем цифру в текстовое поле
            });
          },
          onBackspace: () {
            setState(() {
              if (_controller_keyboard.text.isNotEmpty) {
                _controller_keyboard.text =
                    _controller_keyboard.text.substring(0, _controller_keyboard.text.length - 1);
              }
            });
          },
        );
      },
    );
  }


  @override
  void initState() {
    super.initState();

    // Создаем AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true);

    // Анимация для первого цвета
    _colorAnimation1 = ColorTween(
      begin: Colors.black,
      end: Color.fromRGBO(63, 12, 99, 1.0),
    ).animate(_controller);

    // Анимация для второго цвета
    _colorAnimation2 = ColorTween(
      begin: Color.fromRGBO(63, 12, 99, 1.0),
      end: Colors.black,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    _colorAnimation1.value!,
                    _colorAnimation2.value!,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onTap: () {},
                        ),
                        Text(
                          'Exchange',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.notification_add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CustomSlidingSegmentedControl<int>(
                        height: 36,
                        isStretch: false,
                        initialValue: 1,
                        padding: 16,
                        children: {
                          1: Text(
                            'Buy',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          2: Text(
                            'Sell',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        },
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        thumbDecoration: BoxDecoration(
                          color: Color.fromRGBO(112, 78, 244, 1),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.7),
                              blurRadius: 4.0,
                              spreadRadius: 1.0,
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            ),
                          ],
                        ),
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInToLinear,
                        onValueChanged: (v) {
                          print(v);
                        },
                      ),
                    ),
                    CustomSlidingSegmentedControl<int>(
                      height: 44,
                      isStretch: true,
                      initialValue: 2,
                      children: {
                        1: Text(
                          'USDT',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        2: Text(
                          'BTC',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        3: Text(
                          'BNB',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        4: Text(
                          'ETH',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      },
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      thumbDecoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.3),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                            offset: Offset(
                              0.0,
                              1.0,
                            ),
                          ),
                        ],
                      ),
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInToLinear,
                      onValueChanged: (v) {
                        print(v);
                      },
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Container(
                                    child: TextField(
                                      controller: _controller_keyboard,
                                      readOnly: true, // Отключаем системную клавиатуру
                                      onTap: _showCustomKeyboard, // Показываем кастомную клавиатуру
                                      decoration: const InputDecoration(
                                        hintText: '0.0001', // Подсказка
                                        hintStyle: TextStyle(color: Colors.grey), // Цвет подсказки
                                        border: InputBorder.none, // Убираем рамки
                                        filled: true, // Включаем заливку
                                        fillColor: Colors.transparent, // Прозрачный фон
                                      ),
                                      style: const TextStyle(color: Colors.white), // Цвет текста
                                      cursorColor: Colors.white,
                                    ),
                                    width: 80,
                                    height: 25,
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  child: CustomSlidingSegmentedControl<int>(
                                    height: 20,
                                    isStretch: true,
                                    initialValue: 2,
                                    padding: 1,
                                    children: {
                                      1: Text(
                                        '25%',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      2: Text(
                                        '50%',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      3: Text(
                                        '75%',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      4: Text(
                                        '100%',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    },
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    thumbDecoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(.3),
                                          blurRadius: 4.0,
                                          spreadRadius: 1.0,
                                          offset: Offset(
                                            0.0,
                                            1.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeInToLinear,
                                    onValueChanged: (v) {
                                      print(v);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                    height: 8,
                                    child: LinearProgressIndicator(
                                      value: 0.68,
                                      color: Colors.transparent,
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '0.013919 BTC',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  ),
                                  Text(
                                    '0.1% FEE',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
