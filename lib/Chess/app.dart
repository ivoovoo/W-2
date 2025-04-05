import 'package:flutter/material.dart';

import 'Components/game_board.dart';

class ChessApp extends StatelessWidget {
  const ChessApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: GameBoard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
