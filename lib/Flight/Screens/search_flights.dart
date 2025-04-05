import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Style/style.dart';
import 'boarding_pass.dart';

class SearchFlights extends StatelessWidget {
  const SearchFlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/your_flight_back.png', // Путь к изображению
              fit: BoxFit.cover, // Растягиваем изображение на весь экран
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Размытие
              child: Container(
                color: Colors.black.withOpacity(0.3), // Затемнение фона
              ),
            ),
          ),
          Positioned(
            top: 180,
            right: 0,
            left: 0,
            child: Image.asset('assets/Distance.png'),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.6, // Начальный размер (20% высоты экрана)
            minChildSize: 0.6, // Минимальный размер (10% высоты экрана)
            maxChildSize: 0.9, // Максимальный размер (80% высоты экрана)
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      blurRadius: 10,
                      offset: Offset(0, -5),
                    ),
                  ],
                  backgroundBlendMode: BlendMode.screen
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(width: 10),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset('assets/calendar.svg'),
                                      SizedBox(width: 10),
                                      Text(
                                        'Dec 16th 2022',
                                        style: Style().prompt_style.copyWith(
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('assets/person2.svg'),
                                      SizedBox(width: 10),
                                      Text(
                                        '1 passenger',
                                        style: Style().prompt_style.copyWith(
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => BoardingPass()));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
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
                                'Economy',
                                style: Style().prompt_style.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Image.asset('assets/Ticket 1.png'),
                        SizedBox(height: 20,),
                        Image.asset('assets/Ticket 2.png'),
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
