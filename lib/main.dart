import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_network/src/features/chats/widget/page/chats_page.dart';
import 'package:social_network/src/features/comments/widget/page/comments_page.dart';
import 'package:social_network/src/features/info/widget/page/info_page.dart';
import 'package:social_network/src/features/interests/widget/page/interests_page.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor:
        Colors.white, // Устанавливаем белый фон для строки состояния
    statusBarIconBrightness:
        Brightness.dark, // Устанавливаем цвет иконок на темный
    systemNavigationBarColor: Colors.white,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InterestsPage(),
    );
  }
}
