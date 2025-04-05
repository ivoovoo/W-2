import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/map_view.dart';

class ChooseMap extends StatelessWidget {
  const ChooseMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const MapView(),
          DraggableScrollableSheet(
            initialChildSize: 0.6, // Начальный размер
            minChildSize: 0.6, // Минимальный размер
            maxChildSize: 0.9, // Максимальный размер
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/location2.svg'),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  // Убираем рамку
                                  filled: true,
                                  // Включаем заливку
                                  fillColor: Colors.white,
                                  // Устанавливаем белый цвет
                                  hintText: 'My location',
                                  // Текст внутри
                                  hintStyle: TextStyle(
                                      color:
                                          Colors.grey), // Цвет текста подсказки
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset('assets/Line 3.svg'),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/location.svg'),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  // Убираем рамку
                                  filled: true,
                                  // Включаем заливку
                                  fillColor: Colors.white,
                                  // Устанавливаем белый цвет
                                  hintText: 'Next Address',
                                  // Текст внутри
                                  hintStyle: TextStyle(
                                      color:
                                          Colors.grey), // Цвет текста подсказки
                                ),
                              ),
                            ),
                          ],
                        ),
                        RowWidget(
                          text: 'Hotel Havsa',
                        ),
                        RowWidget(
                          text: 'Margolina Cafe',
                        ),
                        RowWidget(
                          text: 'Villa Tique',
                        ),
                        RowWidget(
                          text: 'New cia',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 184,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color.fromRGBO(84, 145, 245, 1),
                              ),
                              child: Center(
                                child: Text(
                                  'Choose on the map',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color.fromRGBO(84, 145, 245, 0.1),
                              ),
                              child: Center(
                                child: Icon(Icons.location_on,color: Color.fromRGBO(84, 145, 245, 1),),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  final String text;

  const RowWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color.fromRGBO(84, 145, 245, 0.4),
            ),
            child: Center(
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Center(
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromRGBO(84, 145, 245, 1),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color.fromRGBO(196, 196, 196, 1),
            ),
          ),
        ],
      ),
    );
  }
}
