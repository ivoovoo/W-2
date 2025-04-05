import 'package:flutter/material.dart';

class Files extends StatefulWidget {
  final int tab;
  const Files({super.key, required this.tab});

  @override
  State<Files> createState() => _FilesState();
}

class _FilesState extends State<Files> {
  int selectedIndex = 0;

  // Списки данных для разных GridView
  final List<List<String>> gridData = [
    ['Doc1', 'Doc2', 'Doc3', 'Doc4', 'Doc5', 'Doc6'], // Данные для Docs
    ['assets/cloud_photo1.png', 'assets/cloud_photo_2.png', 'assets/cloud_photo_3.png', 'assets/cloud_photo_4.png', 'assets/cloud_photo_4.png', 'assets/cloud_photo_4.png'], // Данные для Images
    ['assets/cloud_video_1.png', 'assets/cloud_video_2.png', 'assets/cloud_video_1.png', 'assets/cloud_video_2.png', 'assets/cloud_video_1.png', 'assets/cloud_video_2.png'], // Данные для Videos
    ['assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png','assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png','assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png','assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png','assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png','assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png','assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png', 'assets/music.png',], // Данные для Music
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
                Text(
                  'Category',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                Container(
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
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0; // Меняем индекс
                      });


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
                      setState(() {
                        selectedIndex = 1; // Меняем индекс
                      });


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
                      setState(() {
                        selectedIndex = 2; // Меняем индекс
                      });


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
                      setState(() {
                        selectedIndex = 3; // Меняем индекс
                      });
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
            SizedBox(height: 10,),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: _getCrossAxisCount(selectedIndex), // Количество элементов в строке
                  crossAxisSpacing: 10, // Расстояние между столбцами
                  mainAxisSpacing: 10,
                  childAspectRatio: _getChildAspectRatio(selectedIndex),
                ),
                itemCount: gridData[selectedIndex].length, // Количество элементов
                itemBuilder: (context, index) {
                  return _buildGridItem(index);
                },
              ),
            ),


          ],
        ),
      ),
    );
  }
  int _getCrossAxisCount(int index) {
    switch (index) {
      case 0:
        return 1; // Один элемент в строке
      case 1:
      case 2:
        return 2; // Три элемента в строке
      case 3:
        return 4; // Четыре элемента в строке
      default:
        return 2; // Значение по умолчанию
    }
  }

  double _getChildAspectRatio(int index) {
    switch (index) {
      case 0:
        return 5; // Соотношение сторон 3:1 (широкие элементы)
      case 1:
      case 2:
        return 1; // Соотношение сторон 1:1 (квадратные элементы)
      case 3:
        return 0.8; // Соотношение сторон 4:5 (высокие элементы)
      default:
        return 1; // Значение по умолчанию
    }
  }

  Widget _buildGridItem(int index) {
    if (selectedIndex == 0) {
      // Пустой контейнер для индекса 0
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/green_cloud.png'),
                  SizedBox(width: 5,),
                  Column(
                    children: [
                      Text(gridData[selectedIndex][index],style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),),
                      Text('13.6 MB',style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromRGBO(112, 112, 112, 1),
                      ),),
                    ],
                  ),
                ],
              ),
              Icon(Icons.menu,),
            ],
          ),
        ),
      );
    } else {
      // Контейнер с изображением для индексов 1, 2, 3
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.asset(
          gridData[selectedIndex][index], // Данные из текущего списка
          fit: BoxFit.cover,
        ),
      );
    }
}
}
