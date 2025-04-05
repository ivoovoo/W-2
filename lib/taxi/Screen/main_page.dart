import 'package:flutter/material.dart';

import 'main_page_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: MainPageView(),
    );
  }
}
