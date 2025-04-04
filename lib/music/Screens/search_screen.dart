import 'package:flutter/material.dart';

import '../Elements/search_element.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4), // Duration for the animation
      vsync: this,
    )..repeat(reverse: true); // Repeat the animation in reverse

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        Color interpolatedColor1 =
            Color.lerp(
              Color.fromRGBO(34, 77, 129, 1.0),
              Color.fromRGBO(4, 31, 66, 1.0),
              _animation.value,
            )!;
        Color interpolatedColor2 =
            Color.lerp(
              Color.fromRGBO(4, 31, 66, 1.0),
              Color.fromRGBO(34, 77, 129, 1.0),
              _animation.value,
            )!;
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [interpolatedColor2, interpolatedColor1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.only(top: 70),
            children: [
              SearchElement(
                color1: Color.fromRGBO(75, 143, 101, 1.0),
                color2: Color.fromRGBO(150, 182, 45, 1.0),
                txt: 'Rap',
              ),
              SearchElement(
                color1: Color.fromRGBO(82, 141, 213, 1.0),
                color2: Color.fromRGBO(147, 170, 72, 1.0),
                txt: 'Rock',
              ),
              SearchElement(
                color1: Color.fromRGBO(59, 160, 174, 1.0),
                color2: Color.fromRGBO(153, 79, 221, 1.0),
                txt: 'Electronic',
              ),
              SearchElement(
                color1: Color.fromRGBO(133, 193, 156, 1.0),
                color2: Color.fromRGBO(204, 142, 72, 1.0),
                txt: 'Blues',
              ),
              SearchElement(
                color1: Color.fromRGBO(236, 213, 97, 1.0),
                color2: Color.fromRGBO(183, 236, 13, 1.0),
                txt: 'Jazz',
              ),
              SearchElement(
                color1: Color.fromRGBO(225, 93, 213, 1.0),
                color2: Color.fromRGBO(80, 176, 197, 1.0),
                txt: 'Electronic',
              ),
              SearchElement(
                color1: Color.fromRGBO(149, 170, 139, 1.0),
                color2: Color.fromRGBO(187, 130, 241, 1.0),
                txt: 'Electronic',
              ),
            ],
          ),
        );
      },
    );
  }
}
