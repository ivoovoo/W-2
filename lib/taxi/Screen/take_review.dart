import 'package:flutter/material.dart';

import '../components/star_rating.dart';

class TakeReview extends StatelessWidget {
  const TakeReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/map2.png'),
                // Укажите путь к вашему PNG
                fit: BoxFit.cover, // Настройка масштабирования изображения
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 7, // Размытие тени
                          ),
                        ],
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: const Icon(Icons.menu),
                    ),
                  ),
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.12, // Начальный размер
            minChildSize: 0.12, // Минимальный размер
            maxChildSize: 0.6, // Максимальный размер
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/photo driver.png'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  StarRating(
                                    rating: 4.5,
                                    size: 20,
                                  ),
                                ],
                              ),
                              // StarRating(
                              //   rating: 4.5,
                              //   size: 20,
                              // ),
                              const Text(
                                'Аркадий 4.9',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                        // StarRating(
                        //   rating: 4.5,
                        // ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Хорошо',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            maxLines: 5, // Максимальное количество строк
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                // Округление углов
                                borderSide: BorderSide.none, // Убираем рамку
                              ),
                              // Убираем рамку
                              fillColor: Color.fromRGBO(247, 248, 249, 1),
                              // Серый фон
                              filled: true,
                              // Заполняем фон
                              hintText:
                                  'Опишите, что именно вам понравилось в поездке', // Подсказка
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(255, 170, 1, 1),
                                    Color.fromRGBO(255, 220, 113, 1)
                                  ],
                                  // Цвета градиента
                                  begin: Alignment.topCenter,
                                  // Начальная точка градиента
                                  end: Alignment
                                      .bottomCenter, // Конечная точка градиента
                                ),
                                borderRadius: BorderRadius.circular(
                                    20), // Закругление углов
                              ),
                              child: Center(
                                child: Text(
                                  'Опубликовать',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
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
              );
            },
          ),
        ],
      ),
    );
  }
}
