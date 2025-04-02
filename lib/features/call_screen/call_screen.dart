import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Lottie.asset(
                'assets/json/call-anim.json',
                width: 400,
                height: 400,
                repeat: true,
                animate: true,
                frameRate: FrameRate.max,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Lottie.asset(
                      'assets/json/new_mic_anim.json',
                      width: 100,
                      height: 100,
                      repeat: true,
                      animate: true,
                      frameRate: FrameRate.max,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Lottie.asset(
                      'assets/json/call_back.json',
                      width: 100,
                      height: 100,
                      repeat: true,
                      animate: true,
                      frameRate: FrameRate.max,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
