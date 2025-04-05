import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../bottom_navigationbar.dart';
import '../dialog_windows/settings_dialog.dart';
import '../level.dart';
import '../level_builder.dart';

class LevelMapScreen extends StatefulWidget {
  const LevelMapScreen({super.key});

  @override
  State<LevelMapScreen> createState() => _LevelMapScreenState();
}

class _LevelMapScreenState extends State<LevelMapScreen> {
  int currentPage = 0;
  static const int levelsPerPage = 20;

  List<Level> levels = [
    Level(levelIndex: 1, stars: 3, isComplete: true, lock: false),
    Level(levelIndex: 2, stars: 3, isComplete: true, lock: false),
    Level(levelIndex: 3, stars: 3, isComplete: true, lock: false),
    Level(levelIndex: 4, stars: 2, isComplete: true, lock: false),
    Level(levelIndex: 5, stars: 2, isComplete: true, lock: false),
    Level(levelIndex: 6, stars: 3, isComplete: true, lock: false),
    Level(levelIndex: 7, stars: 1, isComplete: true, lock: false),
    Level(levelIndex: 8, stars: 2, isComplete: true, lock: false),
    Level(levelIndex: 9, stars: 0, isComplete: true, lock: false),
    Level(levelIndex: 10, stars: 0, isComplete: false, lock: false),
    Level(levelIndex: 11, stars: 0, isComplete: false, lock: true),
  ];

  void initState() {
    super.initState();
    _initializeLevels();
  }

  void _initializeLevels() {
    for (int i = 11; i < levelsPerPage * 3; i++) {
      levels.add(Level(stars: 0, isComplete: false, lock: true, levelIndex: i));
    }
  }

  void nextPage() {
    if ((currentPage + 1) * levelsPerPage < levels.length) {
      setState(() {
        currentPage++;
      });
    }
  }

  void prevPage() {
    if (currentPage > 0) {
      setState(() {
        currentPage--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 102,
        width: 360,
        child: Stack(
          children: <Widget>[
            SvgPicture.asset(
              'assets/images/svg/navigation_bar.svg',
              alignment: Alignment.center,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 28, right: 28),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => const SettingsDialog(),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/images/svg/big_settings_button.svg',
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const IslandBottomNavigationBar()),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/images/svg/big_home_button.svg',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: SizedBox(
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/png/home_appbar.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 25),
                    child: Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 60,
                        width: 140,
                        child: Stack(
                          children: [
                            SvgPicture.asset(
                                'assets/images/svg/gold_appbar.svg'),
                            const Padding(
                              padding: EdgeInsets.only(left: 56, top: 21),
                              child: Text(
                                '100',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'GROBOLD',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 95, top: 17),
                                child: SvgPicture.asset(
                                    'assets/images/svg/plus.svg'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/svg/level_list_bg.svg',
            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: SizedBox(
                      width: 320,
                      height: 493,
                      child: LevelMap(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 10,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const IslandBottomNavigationBar()),
                        );
                      },
                      child: Stack(
                        children: [
                          SvgPicture.asset(
                              'assets/images/svg/level_button1.svg',
                              height: 70),
                          const Padding(
                            padding: EdgeInsets.only(left: 60, top: 20),
                            child: Text(
                              'Back',
                              style: TextStyle(
                                color: Color.fromRGBO(48, 79, 0, 1),
                                fontFamily: 'GROBOLD',
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  prevPage();
                                },
                                child: SvgPicture.asset(
                                    'assets/images/svg/levels/previous.svg',
                                    height: 70),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  nextPage;
                                },
                                child: SvgPicture.asset(
                                    'assets/images/svg/levels/next.svg',
                                    height: 70),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
