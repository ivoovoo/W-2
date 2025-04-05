import 'package:flutter/material.dart';

import '../widgets/main_bar.dart';

class OnboardingLearning extends StatefulWidget {
  const OnboardingLearning({super.key});

  @override
  State<OnboardingLearning> createState() => _OnboardingLearningState();
}

class _OnboardingLearningState extends State<OnboardingLearning>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation1;
  late Animation<Color?> _colorAnimation2;

  @override
  void initState() {
    super.initState();

    // Создаем AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3), // Длительность анимации
    )..repeat(reverse: true); // Анимация повторяется в обе стороны

    // Анимация для первого цвета
    _colorAnimation1 = ColorTween(
      begin: Colors.black,
      end: Color.fromRGBO(255, 117, 98, 1),
    ).animate(_controller);

    // Анимация для второго цвета
    _colorAnimation2 = ColorTween(
      begin: Color.fromRGBO(255, 117, 98, 1),
      end: Colors.black,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  _colorAnimation1.value ?? Colors.black,
                  _colorAnimation2.value ?? Color.fromRGBO(255, 117, 98, 1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        Text(
                          'World of\nLanugages',
                          style: TextStyle(
                            fontSize: 46,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text(
                          'we will help you gain knowledge that\nwill change your life. participate in\nchallenges and get discounts on\ntraining',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => MainScreenLearning(),
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 74,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'Start Learning',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
