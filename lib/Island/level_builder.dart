import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'dialog_windows/start_level_dialog.dart';
import 'level.dart';

class LevelMap extends StatefulWidget {
  @override
  _LevelMapState createState() => _LevelMapState();
}

class _LevelMapState extends State<LevelMap> {
  int currentPage = 0;
  static const int levelsPerPage = 20; // 20 уровней на странице
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

  @override
  void initState() {
    super.initState();
    // Инициализируем уровни
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
    List<Level> currentLevels = levels.sublist(
        currentPage * levelsPerPage, (currentPage + 1) * levelsPerPage);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        width: 330,
        height: 493,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.9,
          ),
          itemCount: currentLevels.length,
          itemBuilder: (context, index) {
            Level level = currentLevels[index];
            return SizedBox(
              width: 65,
              height: 93,
              child: InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => const StartLevelDialog(),
                  );
                },
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(
                          children: [
                            level.isComplete
                                ? SvgPicture.asset(
                                    'assets/images/svg/levels/completed_level.svg',
                                    fit: BoxFit.cover,
                                  )
                                : SvgPicture.asset(
                                    'assets/images/svg/levels/uncompleted_level.svg',
                                    fit: BoxFit.cover,
                                  ),
                            Positioned(
                              left: level.lock
                                  ? 25
                                  : level.levelIndex < 10
                                      ? 25
                                      : level.levelIndex >= 10
                                          ? 20
                                          : 25,
                              top: 20,
                              child: currentLevels[index].lock
                                  ? SvgPicture.asset(
                                      'assets/images/svg/levels/lock.svg',
                                      fit: BoxFit.cover,
                                    )
                                  : Text(
                                      '${level.levelIndex}',
                                      style: const TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'GROBOLD',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/images/svg/levels/${level.stars}big_stars.svg',
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      //   Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       ElevatedButton(
      //         onPressed: prevPage,
      //         child: Text('Previous'),
      //       ),
      //       SizedBox(width: 10),
      //       ElevatedButton(
      //         onPressed: nextPage,
      //         child: Text('Next'),
      //       ),
      //     ],
      //   ),
      // ],
    );
  }
}

/* import 'package:flutter/material.dart';

class LevelMap extends StatefulWidget {
  @override
  _LevelMapState createState() => _LevelMapState();
}

class _LevelMapState extends State<LevelMap> {
  int currentPage = 0;
  final int levelsPerPage = 20;
  final int levelsPerRow = 4;
  final int levelsPerColumn = 5;

  void nextPage() {
    setState(() {
      currentPage++;
    });
  }

  void previousPage() {
    setState(() {
      if (currentPage > 0) currentPage--;
    });
  }

  @override
  Widget build(BuildContext context) {
    int startLevel = currentPage * levelsPerPage;
    int endLevel = startLevel + levelsPerPage;

    return Scaffold(
      appBar: AppBar(title: Text('Level Map')),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: levelsPerRow,
                childAspectRatio: 1.0,
              ),
              itemBuilder: (context, index) {
                int levelNumber = startLevel + index + 1;
                if (levelNumber > endLevel) return Container();

                return GestureDetector(
                  onTap: () {
                    // Handle level click
                    print('Level $levelNumber clicked');
                  },
                  child: Card(
                    child: Center(
                      child: Text(
                        levelNumber.toString(),
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                );
              },
              itemCount: levelsPerPage,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: previousPage,
                child: Text('Previous'),
              ),
              ElevatedButton(
                onPressed: nextPage,
                child: Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

 */
