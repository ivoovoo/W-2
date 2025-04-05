import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const GridItem({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Белый фон
        borderRadius: BorderRadius.circular(15), // Округленные углы
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Тень
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 3), // Смещение тени
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                SizedBox(width: 20,),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset('assets/profiles.png'),
            ),
          ],
        ),
      ),
    );
  }
}

