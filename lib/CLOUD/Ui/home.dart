import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:social_network/CLOUD/Ui/search_me.dart';

import 'files.dart';

class HomeCloud extends StatefulWidget {
  final int tab;
  const HomeCloud({super.key, required this.tab});

  @override
  State<HomeCloud> createState() => _HomeCloudState();
}

class _HomeCloudState extends State<HomeCloud> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(22.0),
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
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 30,
                ),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      child: CircularPercentIndicator(
                        radius: 110.0,
                        lineWidth: 25.0,
                        percent: 0.68,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "68%",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(119, 71, 253, 1),
                              ),
                            ),
                            Text(
                              'used',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        backgroundColor: Colors.black.withOpacity(0.1),
                        progressColor: Color.fromRGBO(119, 71, 253, 1.0),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '289 GB ',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Free ',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color.fromRGBO(112, 112, 112, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '785 GB  ',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'used ',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color.fromRGBO(112, 112, 112, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,
                vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Files(tab: 2,)),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset('assets/docs.png'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Docs',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Files(tab: 2,)),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset('assets/files.png'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Images',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Files(tab: 2,)),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset('assets/videos.png'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Videos',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Files(tab: 2,)),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset('assets/music.png'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Music',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'Recent',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/green_cloud.png'),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Competitive Analysis. xls',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '2.6 MB',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Icon(Icons.menu),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/green_cloud.png'),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Competitive Analysis. xls',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '2.6 MB',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Icon(Icons.menu),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
