import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../Components/painter.dart';

class SwiperExample extends StatefulWidget {
  @override
  _SwiperExampleState createState() => _SwiperExampleState();
}

class _SwiperExampleState extends State<SwiperExample> {
  int _currentIndex = 0;

  final List<String> imagePath = [
    'assets/images/png/IMG_4093.PNG',
    'assets/images/png/дамка.PNG',
    'assets/images/png/rook.png',
    'assets/images/png/слон.PNG',
    'assets/images/png/кон.png',
    'assets/images/png/пешка.PNG',
  ];

  final Map<String, String> _chessPieces = {
    'King': """👑 King
 • Move: One square in any direction (⬆️⬇️⬅️➡️↖️↗️↙️↘️).
 • Special Move: Castling – the king moves two squares towards the rook, and the rook jumps over the king. 🔄
 • Restriction: The king cannot move into check (a square attacked by an opponent’s piece ❌).
 • Game Objective: If the king is checkmated (Checkmate ♟️🏁), the game is over.
""",
    'Queen': """👸 Queen
 • Move: Any number of squares in any direction (⬆️⬇️⬅️➡️↖️↗️↙️↘️).
 • Restriction: Cannot jump over other pieces ❌.
""",
    'Rook': """🏰 Rook
 • Move: Any number of squares forward, backward, left, or right (⬆️⬇️⬅️➡️).
 • Restriction: Cannot jump over other pieces ❌.
 • Special Move: Participates in castling with the king 🔄.
""",
    'Bishop': """🦢 Bishop
 • Move: Any number of squares diagonally (↖️↗️↙️↘️).
 • Restriction: Cannot jump over other pieces ❌.
 • Note: Each bishop stays on its original color 🎨 (light or dark squares).
""",
    'Knight': """🐴 Knight
 • Move: Moves in an “L” shape (two squares in one direction and one square perpendicular ⬆️⬆️➡️).
 • Unique Feature: The only piece that can jump over others 🤸.
""",
    'Pawn': """🧱 Pawn
 • Move: Forward one square (⬆️). On its first move, it can advance two squares.
 • Attack: Captures diagonally (↖️↗️).
 • Special Moves:
 • En passant ✂️ – If a pawn moves two squares forward and lands beside an opponent’s pawn, the opponent can capture it as if it had moved only one square.
 • Promotion 🎭 – If a pawn reaches the last rank, it can turn into any piece (usually a queen 👸).
""",
  };

  final List<LinearGradient> _gradients = [
    LinearGradient(
      colors: [
        Color.fromRGBO(255, 0, 0, 1), // Красный
        Color.fromRGBO(255, 165, 0, 1), // Оранжевый
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [
        Color.fromRGBO(0, 255, 0, 1), // Зеленый
        Color.fromRGBO(0, 128, 0, 1), // Темно-зеленый
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [
        Color.fromRGBO(0, 0, 255, 1), // Синий
        Color.fromRGBO(0, 0, 128, 1), // Темно-синий
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [
        Color.fromRGBO(255, 192, 203, 1), // Розовый
        Color.fromRGBO(255, 105, 180, 1), // Ярко-розовый
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [
        Color.fromRGBO(128, 0, 128, 1), // Фиолетовый
        Color.fromRGBO(75, 0, 130, 1), // Индиго
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [
        Color.fromRGBO(255, 255, 0, 1), // Желтый
        Color.fromRGBO(255, 215, 0, 1), // Золотой
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final List<String> keys =
        _chessPieces.keys.toList(); // Получаем список ключей (названий фигур)

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromRGBO(12, 8, 19, 0.9),
            Color.fromRGBO(61, 74, 235, 0.3),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
                ),
              ),
            ),
            SizedBox(
              height: 400,
              child: Swiper(
                itemCount: keys.length,
                viewportFraction: 0.6,
                // Видимость боковых карточек
                scale: 0.6,
                // Масштаб боковых карточек
                onIndexChanged: (index) {
                  setState(() {
                    _currentIndex = index; // Обновление текущего индекса
                  });
                },
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      gradient:_currentIndex == index
                          ? _gradients[index]
                          : LinearGradient(
                        colors: [
                          Colors.white.withOpacity(0.1),
                          Colors.white.withOpacity(0.1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          right: 0,
                          left: 0,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              keys[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 80,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontFamily: 'BakbakOne',
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                            child: Image.asset(imagePath[index])),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: RichText(
                text: TextSpan(
                  children: _buildTextSpans(_chessPieces[keys[_currentIndex]]!),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  List<TextSpan> _buildTextSpans(String text) {
    final lines = text.split('\n');
    final header = lines[0];
    final description = lines.sublist(1).join('\n');

    return [
      TextSpan(
        text: '$header\n',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.yellow,
        ),
      ),
      TextSpan(
        text: description,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
        ),
      ),
    ];
  }
}


