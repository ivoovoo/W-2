import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Components/home_bar.dart';

class OnboardingScreenWallet extends StatefulWidget {
  const OnboardingScreenWallet({super.key});

  @override
  State<OnboardingScreenWallet> createState() => _OnboardingScreenWalletState();
}

class _OnboardingScreenWalletState extends State<OnboardingScreenWallet> {
  int currentIndex = 0;
  List<Color> colors = [
    Color(0xFF0D023B),
    Color(0xFF2a023b),
  ];

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        currentIndex = (currentIndex + 1) % colors.length;
        colors = currentIndex == 0
            ? [Color(0xFF0D023B),
          Color(0xFF2a023b),]
            : [ Color(0xFF2a023b),  Color(0xFF0D023B),];
      });
      _startAnimation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 3),
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            // Цвета градиента
            begin: Alignment.topLeft,
            // Начальная точка градиента
            end: Alignment.bottomRight, // Конечная точка градиента
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/composition.png'),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text(
                      'Get more than expected\nwith our wallet',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 28,
                        color: Colors.white,
                        fontFamily: 'WixMadeforText',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreenWallet()));
                      },
                      child: Container(
                        width: 180,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(153, 23, 255, 1),
                              Color.fromRGBO(24, 178, 222, 1),
                            ],
                            // Цвета градиента
                            begin: Alignment.topLeft,
                            // Начальная точка градиента
                            end: Alignment
                                .bottomRight, // Конечная точка градиента
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(65, 48, 90, 0.8),
                              border: Border.all(
                                width: 1,
                                color: const Color.fromRGBO(251, 55, 255, 1),
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.apple,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(65, 48, 90, 0.8),
                              border: Border.all(
                                width: 1,
                                color: const Color.fromRGBO(251, 55, 255, 1),
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: SvgPicture.asset('assets/google (1) 1.svg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Already have account?',
                      style: TextStyle(
                        fontFamily: 'WixMadeforText',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          fontFamily: 'WixMadeforText',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
