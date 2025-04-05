import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_network/Flight/Screens/search_flights.dart';
import '../Style/style.dart';

class YourFlight extends StatefulWidget {
  const YourFlight({super.key});

  @override
  State<YourFlight> createState() => _YourFlightState();
}

class _YourFlightState extends State<YourFlight> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/Background.png', // Путь к изображению
              fit: BoxFit.cover, // Растягиваем изображение на весь экран
            ),
          ),
          // Применение размытия
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Размытие
              child: Container(
                color: Colors.black.withOpacity(0.3), // Затемнение фона
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios_new, color: Colors.black),
                    Text(
                      'Book Your Flight',
                      style: Style().prompt_style.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildButton(0, 'Button 1', 'assets/trip.svg'),
                    _buildButton(1, 'Button 2', 'assets/multi.svg'),
                    _buildButton(2, 'Button 3', 'assets/one.svg'),
                  ],
                ),
                SizedBox(height: 20),
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    // Без размытия
                    child: Container(
                      width: double.infinity,
                      height: 185,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white.withOpacity(0.6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white.withOpacity(
                                          0.1,
                                        ),
                                        // Прозрачный внутренний цвет
                                        hintText: 'Montreal, Canada',
                                        // Внутренний текст (плейсхолдер)
                                        hintStyle: Style().prompt_style
                                            .copyWith(
                                              color: Colors.black.withOpacity(
                                                0.6,
                                              ),
                                            ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            100,
                                          ), // Закруглённые углы
                                          borderSide:
                                              BorderSide
                                                  .none, // Убираем цвет рамки
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 16,
                                          vertical: 12,
                                        ),
                                        // Внутренние отступы
                                        suffixIcon: Container(
                                          height: double.infinity,
                                          width: 95,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '1 person',
                                              style: Style().prompt_style
                                                  .copyWith(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black
                                                        .withOpacity(0.6),
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white.withOpacity(0.1),
                                  // Прозрачный внутренний цвет
                                  hintText: 'Tokyo, Japan',
                                  // Внутренний текст (плейсхолдер)
                                  hintStyle: Style().prompt_style.copyWith(
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    // Закруглённые углы
                                    borderSide:
                                        BorderSide.none, // Убираем цвет рамки
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12,
                                  ), // Внутренние отступы
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white.withOpacity(0.1),
                                      // Прозрачный внутренний цвет
                                      hintText: '1 JULE 2025',
                                      // Внутренний текст (плейсхолдер)
                                      hintStyle: Style().prompt_style.copyWith(
                                        color: Colors.black.withOpacity(0.6),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ),
                                        // Закруглённые углы
                                        borderSide:
                                            BorderSide
                                                .none, // Убираем цвет рамки
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 12,
                                      ), // Внутренние отступы
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white.withOpacity(0.1),
                                      // Прозрачный внутренний цвет
                                      hintText: '6 JULE 2025',
                                      // Внутренний текст (плейсхолдер)
                                      hintStyle: Style().prompt_style.copyWith(
                                        color: Colors.black.withOpacity(0.6),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ),
                                        // Закруглённые углы
                                        borderSide:
                                            BorderSide
                                                .none, // Убираем цвет рамки
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 12,
                                      ), // Внутренние отступы
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchFlights()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(129, 198, 237, 1),
                          Color.fromRGBO(33, 84, 182, 1.0),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Search flights',
                        style: Style().prompt_style.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(int index, String text, String path) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index; // Обновляем выбранный индекс
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:
                _selectedIndex == index
                    ? [
                      Color.fromRGBO(122, 190, 235, 1),
                      Color.fromRGBO(62, 117, 214, 1),
                    ]
                    : [Colors.white, Colors.white],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(25), // Закруглённые края
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(122, 190, 235, 1),
                    Color.fromRGBO(62, 117, 214, 1),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SvgPicture.asset(path),
              ),
            ),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: _selectedIndex == index ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
