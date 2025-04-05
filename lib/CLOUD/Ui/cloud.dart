import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:social_network/CLOUD/Ui/search_me.dart';

import '../models/grid_item.dart';

class Cloud extends StatefulWidget {
  final int tab;
  const Cloud({super.key, required this.tab});

  @override
  State<Cloud> createState() => _CloudState();
}

class _CloudState extends State<Cloud> {
  final List<String> texts = [
    "I am light 💡",
    "I feel joy 🌟",
    "Love guides me ❤️",
    "I am free 🦋",
    "I trust life  🗺️️",
    "I am worthy 🏅",
    "Happiness surrounds me 😊",
    "I grow strong 🌱",
    "I shine bright 🌞",
    "Love flows endlessly 💕",
    "I embrace now 🌊",
    "My soul soars ✨",
    "Strength is mine 💪",
    "Life is kind 🌸",
    "I choose love ❤️",
    "I create magic 🎨",
    "Gratitude finds me 🙏",
    "Dreams come true 🌙",
    "I radiate calm 🧘",
    "Light flows within 🌌",
    "My heart expands 💓",
    "Beauty is everywhere 🌳",
    "Energy lifts me 🔥",
    "I welcome miracles 🌠",
    "I deserve peace 🕶️",
    "My soul glows 🕯️",
    "Truth leads me 🌪️",
    "I am infinite 🛤️",
    "Love lives here 🌬️❤️",
    "My spirit dances 🐾",
    "Joy lifts everything 🥰",
    "I breathe harmony 🌿",
    "My journey flows 🛤️",
    "I am limitless 🌟",
  ];

  int _currentIndex = 0; // Индекс текущего текста
  late Timer _timer; // Таймер для смены текста

  @override
  void initState() {
    super.initState();
    // Запускаем таймер для смены текста каждые 3 секунды
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % texts.length; // Меняем текст
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Останавливаем таймер при уничтожении виджета
    super.dispose();
  }

  final List<Map<String, String>> items = const [
    {
      'title': 'Research',
      'subtitle': '78 items',
      'imagePath': 'assets/folder.png',
    },
    {
      'title': 'Home Work',
      'subtitle': '154 items',
      'imagePath': 'assets/folder.png',
    },
    {
      'title': 'Guidelines',
      'subtitle': '52 items',
      'imagePath': 'assets/folder.png',
    },
    {
      'title': 'Freelance',
      'subtitle': '259 items',
      'imagePath': 'assets/folder.png',
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                    child: Text(
                      texts[_currentIndex],
                      key: ValueKey<String>(texts[_currentIndex]),
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchMe()),
                    );
                  },
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Icon(Icons.search),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 165,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(119, 71, 253, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/cloud_cloud.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cloud Storages',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '5126 Files',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.restart_alt,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Sync active',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '485 GB of 2 TB used',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        LinearPercentIndicator(
                          width: 360,
                          lineHeight: 10.0,
                          percent: 0.33,
                          progressColor: Color.fromRGBO(253, 168, 254, 1),
                          barRadius: Radius.circular(100),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(243, 243, 243, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/arrow_up_cloud.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Unlimited storage',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(112, 112, 112, 1),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Rp. 150.000 / mo',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: 86,
                      height: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(253, 168, 254, 1),
                            Color.fromRGBO(252, 105, 255, 1),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Upgrade',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Количество элементов в строке
                  crossAxisSpacing: 10, // Расстояние между столбцами
                  mainAxisSpacing: 10, // Расстояние между строками
                  childAspectRatio: 1, // Соотношение сторон (квадрат)
                ),
                itemCount: items.length, // Количество элементов
                itemBuilder: (context, index) {
                  final item = items[index];
                  return GridItem(
                    imagePath: item['imagePath']!, // Путь к изображению
                    title: item['title']!, // Заголовок
                    subtitle: item['subtitle']!, // Описание
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
