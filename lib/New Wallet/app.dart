import 'package:flutter/material.dart';

import 'NavBar/main_bar.dart';


class NWApp extends StatelessWidget {
  const NWApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreenWal(),
      debugShowCheckedModeBanner: false,
    );
  }
}