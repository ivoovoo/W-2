import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating; // Рейтинг от 0 до 5
  final double size;

  StarRating({
    required this.rating,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    // Количество заполненных и пустых звезд
    int fullStars = rating.floor();
    bool hasHalfStar = rating - fullStars >= 0.5;
    int emptyStars = 5 - fullStars - (hasHalfStar ? 1 : 0);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Заполненные звезды
        for (int i = 0; i < fullStars; i++)
          Icon(
            Icons.star,
            color: Colors.amber,
            size: size,
          ),
        // Полузвезда
        if (hasHalfStar)
          Icon(
            Icons.star_half,
            color: Colors.amber,
            size: size,
          ),
        // Пустые звезды
        for (int i = 0; i < emptyStars; i++)
          Icon(
            Icons.star_border,
            color: Colors.amber,
            size: size,
          ),
      ],
    );
  }
}
