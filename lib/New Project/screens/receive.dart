import 'package:flutter/material.dart';

class Receive extends StatefulWidget {
  final int tab;
  const Receive({super.key, required this.tab});

  @override
  State<Receive> createState() => _ReceiveState();
}

class _ReceiveState extends State<Receive> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation1;
  late Animation<Color?> _colorAnimation2;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true);

    // Анимация для первого цвета
    _colorAnimation1 = ColorTween(
      begin: Color.fromRGBO(4, 0, 52, 1),
      end: Color.fromRGBO(53, 52, 135, 1),
    ).animate(_controller);

    // Анимация для второго цвета
    _colorAnimation2 = ColorTween(
      begin: Color.fromRGBO(53, 52, 135, 1),
      end: Color.fromRGBO(4, 0, 52, 1),
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
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  _colorAnimation1.value!,
                  _colorAnimation2.value!,
                ],

              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30.0,
                horizontal: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        'Receive',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 335,
                        height: 332,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        // child: Center(
                        //   // child: Image.asset(''),
                        // ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Wallet address',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '1LNXzm7G...5otzuZ5Ghu',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.copy,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Copy address',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height:55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromRGBO(30, 26, 86, 1),
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.arrow_back_ios,color: Colors.white,),
                                Row(
                                  children: [
                                    Icon(Icons.ios_share,color: Colors.white,),
                                    SizedBox(width: 10,),
                                    Text(
                                      'Share address',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 20,),
                              ],
                            ),
                          ),),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
