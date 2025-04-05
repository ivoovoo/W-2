import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../bottom_navigationbar.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/svg/bg_start_screen.svg',
            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IslandBottomNavigationBar()),
                      );
                    },
                    child: Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset('assets/images/svg/play_bg.svg'),
                          const Text('Play',
                            style: TextStyle(
                              color: Color.fromRGBO(48, 79, 0, 1),
                              fontFamily: 'GROBOLD',
                              fontWeight: FontWeight.w500,
                              fontSize: 23,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
