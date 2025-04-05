import 'package:flutter/material.dart';

import 'Screens/boarding_pass.dart';



class FlightApp extends StatelessWidget {
  const FlightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BoardingPass(),
    );
  }
}
