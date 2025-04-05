import 'package:flutter/material.dart';

class BigPicElement extends StatelessWidget {
  const BigPicElement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 370,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          image: DecorationImage(
            image: AssetImage('assets/music/bigpic.png'), // Используем AssetImage вместо Image.asset
            fit: BoxFit.contain, // Устанавливаем режим отображения изображения
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Night Vocals',style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),),
              Text('30 Songs • 1 hours 3 min',style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
