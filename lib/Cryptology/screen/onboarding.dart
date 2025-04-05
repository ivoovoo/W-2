import 'package:flutter/material.dart';

import '../widgets/main_bar.dart';

class OnboardingCryptology extends StatelessWidget {
  const OnboardingCryptology({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(71, 102, 249, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60,),
              Stack(
                children: [
                  Image.asset('assets/Group 1813.png'),
                  Positioned(
                    top: 40,
                    right: 20,
                    child: Image.asset('assets/Image.png'),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              const Text(
                'Easy Way to\nInvest in Crypto',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10,),
              const Text(
                'A new way to manage and trade all your\ncrypto easily and fastest in the market',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 50,),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => MainScreenCryptology(),
                    ),
                  );                },
                child: Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Color.fromRGBO(71, 102, 249, 1),
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
