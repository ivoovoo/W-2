import 'package:flutter/material.dart';
import '../Components/column_widget.dart';
import '../Models/grid_model_home.dart';
import '../Style/style.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List<GridItem> gridItems = [
    GridItem(
      title: 'Paris',
      description: 'France',
      rating: 4.5,
      imagePath: 'assets/paris.png',
    ),
    GridItem(
      title: 'Bali',
      description: 'Indonesia',
      rating: 4.5,
      imagePath: 'assets/bali.png',
    ),
    GridItem(
      title: 'Honoluku',
      description: 'Hawaii',
      rating: 5.0,
      imagePath: 'assets/honoluku.png',
    ),
    GridItem(
      title: 'Orlando',
      description: 'Floride',
      rating: 4.2,
      imagePath: 'assets/orlando.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 60,),
            SizedBox(
              height: 400,
              child: GridView.builder(
                padding: EdgeInsets.all(16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 колонки
                  crossAxisSpacing: 16, // Расстояние между колонками
                  mainAxisSpacing: 16, // Расстояние между строками
                  childAspectRatio: 0.8, // Соотношение сторон ячейки
                ),
                itemCount: gridItems.length,
                itemBuilder: (context, index) {
                  final item = gridItems[index];
                  return Column(
                    children: [
                      Container(
                        width: 152,
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(item.imagePath, fit: BoxFit.contain),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              style: Style().prompt_style.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  item.description,
                                  style: Style().prompt_style.copyWith(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      item.rating.toString(),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Icon(
                                      Icons.star,
                                      color: Colors.black,
                                      size: 16,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 40,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ColumnWidget(path: 'assets/flight.svg', text: 'Flight'),
                ColumnWidget(path: 'assets/hotel.svg', text: 'Hotel'),
                ColumnWidget(path: 'assets/drive.svg', text: 'Car'),
                ColumnWidget(path: 'assets/train.svg', text: 'Train'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
