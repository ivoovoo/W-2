import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final int tab;

  const HomeScreen({super.key, required this.tab});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation1;
  late Animation<Color?> _colorAnimation2;

  @override
  void initState() {
    super.initState();

    // Создаем AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true);

    // Анимация для первого цвета
    _colorAnimation1 = ColorTween(
      begin: Colors.black,
      end: Color.fromRGBO(63, 12, 99, 1.0),
    ).animate(_controller);

    // Анимация для второго цвета
    _colorAnimation2 = ColorTween(
      begin: Color.fromRGBO(63, 12, 99, 1.0),
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
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/Frame 19.png'),
                              //вставить иконку
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'W',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.notification_add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '13 450 USDT',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                width: 78,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white.withOpacity(0.1),
                                ),
                                child: Center(
                                  child: Text(
                                    '+ 15,7 %',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(78, 244, 125, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Total balance',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.25),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 76,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(33, 30, 65, .4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bitcoin',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Colors.white.withOpacity(0.25),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '0.838141',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Etherium',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Colors.white.withOpacity(0.25),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '18.1902',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'W',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Colors.white.withOpacity(0.25),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '399.93',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 28),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            child: Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white.withOpacity(0.1),
                              ),
                              child: Center(
                                child: Image.asset('assets/Vector.png'),
                              ),
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white.withOpacity(0.1),
                              ),
                              child: Center(
                                child: Image.asset('assets/Vector2.png'),
                              ),
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white.withOpacity(0.1),
                              ),
                              child: Center(
                                child: Image.asset('assets/Vector3.png'),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white.withOpacity(0.05),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 65,
                                          height: 65,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(29, 27, 50, 1),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('assets/Vector6.png'),
                                        ),
                                        //SVG
                                        SizedBox(height: 5,),
                                        Text(
                                          'Bitcoin',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white.withOpacity(0.25),
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                      
                                        Text(
                                          '\$ 21 381',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                      
                                        Container(
                                          width: 80,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Color.fromRGBO(33, 30, 65, 1),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '+ 2.17%',
                                              style: TextStyle(
                                                color: Color.fromRGBO(89, 253, 130, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                        color: Colors.white.withOpacity(0.05)                              ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 65,
                                          height: 65,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(29, 27, 50, 1),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('assets/Vector7.png'),
                                        ),
                                        //SV
                                        SizedBox(height: 5,),
                                        Text(
                                          'Ethereum',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white.withOpacity(0.25),
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                          '\$ 512',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Container(
                                          width: 80,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Color.fromRGBO(33, 30, 65, 1),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '- 1.17%',
                                              style: TextStyle(
                                                color: Color.fromRGBO(255, 11, 11, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 180,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white.withOpacity(0.05)                                //блюр добавить
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 65,
                                          height: 65,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(29, 27, 50, 1),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('assets/Vector5.png'),
                                        ),
                                        Text(
                                          'Ripple',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white.withOpacity(0.25),
                                          ),
                                        ),
                                        Text(
                                          '\$ 21 381',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          width: 80,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Color.fromRGBO(33, 30, 65, 1),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '+ 2.17%',
                                              style: TextStyle(
                                                color: Color.fromRGBO(89, 253, 130, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 180,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white.withOpacity(0.05)                              ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                      
                                      children: [
                                        Container(
                                          width: 65,
                                          height: 65,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(29, 27, 50, 1),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('assets/Vector4.png'),
                                        ),
                                        Text(
                                          'All Crypto',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white.withOpacity(0.25),
                                          ),
                                        ),
                                        Text(
                                          '\$ 349 949 942 392',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white.withOpacity(0.05),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 65,
                                          height: 65,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(29, 27, 50, 1),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('assets/Vector6.png'),
                                        ),
                                        //SVG
                                        SizedBox(height: 5,),
                                        Text(
                                          'Bitcoin',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white.withOpacity(0.25),
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                      
                                        Text(
                                          '\$ 21 381',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                      
                                        Container(
                                          width: 80,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Color.fromRGBO(33, 30, 65, 1),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '+ 2.17%',
                                              style: TextStyle(
                                                color: Color.fromRGBO(89, 253, 130, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 180,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white.withOpacity(0.05)                              ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 65,
                                          height: 65,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(29, 27, 50, 1),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('assets/Vector7.png'),
                                        ),
                                        //SV
                                        SizedBox(height: 5,),
                                        Text(
                                          'Ethereum',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white.withOpacity(0.25),
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                          '\$ 512',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Container(
                                          width: 80,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Color.fromRGBO(33, 30, 65, 1),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '- 1.17%',
                                              style: TextStyle(
                                                color: Color.fromRGBO(255, 11, 11, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 180,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white.withOpacity(0.05)                                //блюр добавить
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 65,
                                          height: 65,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(29, 27, 50, 1),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('assets/Vector5.png'),
                                        ),
                                        Text(
                                          'Ripple',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white.withOpacity(0.25),
                                          ),
                                        ),
                                        Text(
                                          '\$ 21 381',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          width: 80,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Color.fromRGBO(33, 30, 65, 1),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '+ 2.17%',
                                              style: TextStyle(
                                                color: Color.fromRGBO(89, 253, 130, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 180,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white.withOpacity(0.05)                              ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                      
                                      children: [
                                        Container(
                                          width: 65,
                                          height: 65,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(29, 27, 50, 1),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('assets/Vector4.png'),
                                        ),
                                        Text(
                                          'All Crypto',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white.withOpacity(0.25),
                                          ),
                                        ),
                                        Text(
                                          '\$ 349 949 942 392',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white.withOpacity(0.05),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 65,
                                          height: 65,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(29, 27, 50, 1),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('assets/Vector6.png'),
                                        ),
                                        //SVG
                                        SizedBox(height: 5,),
                                        Text(
                                          'Bitcoin',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white.withOpacity(0.25),
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                      
                                        Text(
                                          '\$ 21 381',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                      
                                        Container(
                                          width: 80,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Color.fromRGBO(33, 30, 65, 1),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '+ 2.17%',
                                              style: TextStyle(
                                                color: Color.fromRGBO(89, 253, 130, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 180,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white.withOpacity(0.05)                              ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 65,
                                          height: 65,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(29, 27, 50, 1),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('assets/Vector7.png'),
                                        ),
                                        //SV
                                        SizedBox(height: 5,),
                                        Text(
                                          'Ethereum',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white.withOpacity(0.25),
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                          '\$ 512',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Container(
                                          width: 80,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Color.fromRGBO(33, 30, 65, 1),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '- 1.17%',
                                              style: TextStyle(
                                                color: Color.fromRGBO(255, 11, 11, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 180,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white.withOpacity(0.05)                                //блюр добавить
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 65,
                                          height: 65,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(29, 27, 50, 1),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('assets/Vector5.png'),
                                        ),
                                        Text(
                                          'Ripple',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white.withOpacity(0.25),
                                          ),
                                        ),
                                        Text(
                                          '\$ 21 381',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          width: 80,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Color.fromRGBO(33, 30, 65, 1),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '+ 2.17%',
                                              style: TextStyle(
                                                color: Color.fromRGBO(89, 253, 130, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 180,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white.withOpacity(0.05)                              ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                      
                                      children: [
                                        Container(
                                          width: 65,
                                          height: 65,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(29, 27, 50, 1),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('assets/Vector4.png'),
                                        ),
                                        Text(
                                          'All Crypto',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white.withOpacity(0.25),
                                          ),
                                        ),
                                        Text(
                                          '\$ 349 949 942 392',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(12.0),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Expanded(
                    //         child: Container(
                    //           width: double.infinity,
                    //           height: 180,
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(20),
                    //               color: Colors.white.withOpacity(0.05)                                //блюр добавить
                    //           ),
                    //           child: Column(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Container(
                    //                 width: 65,
                    //                 height: 65,
                    //                 decoration: BoxDecoration(
                    //                   color: Color.fromRGBO(29, 27, 50, 1),
                    //                   borderRadius: BorderRadius.circular(100),
                    //                 ),
                    //                 child: Image.asset('assets/Vector5.png'),
                    //               ),
                    //               Text(
                    //                 'Ripple',
                    //                 style: TextStyle(
                    //                   fontSize: 14,
                    //                   fontWeight: FontWeight.w500,
                    //                   color: Colors.white.withOpacity(0.25),
                    //                 ),
                    //               ),
                    //               Text(
                    //                 '\$ 21 381',
                    //                 style: TextStyle(
                    //                   fontSize: 14,
                    //                   fontWeight: FontWeight.w600,
                    //                   color: Colors.white,
                    //                 ),
                    //               ),
                    //               Container(
                    //                 width: 80,
                    //                 height: 30,
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(100),
                    //                   color: Color.fromRGBO(33, 30, 65, 1),
                    //                 ),
                    //                 child: Center(
                    //                   child: Text(
                    //                     '+ 2.17%',
                    //                     style: TextStyle(
                    //                       color: Color.fromRGBO(89, 253, 130, 1),
                    //                       fontWeight: FontWeight.w500,
                    //                       fontSize: 14,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: 10,
                    //       ),
                    //       Expanded(
                    //         child: Container(
                    //           width: double.infinity,
                    //           height: 180,
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(20),
                    //               color: Colors.white.withOpacity(0.05)                              ),
                    //           child: Column(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //
                    //             children: [
                    //               Container(
                    //                 width: 65,
                    //                 height: 65,
                    //                 decoration: BoxDecoration(
                    //                   color: Color.fromRGBO(29, 27, 50, 1),
                    //                   borderRadius: BorderRadius.circular(100),
                    //                 ),
                    //                 child: Image.asset('assets/Vector4.png'),
                    //               ),
                    //               Text(
                    //                 'All Crypto',
                    //                 style: TextStyle(
                    //                   fontSize: 14,
                    //                   fontWeight: FontWeight.w500,
                    //                   color: Colors.white.withOpacity(0.25),
                    //                 ),
                    //               ),
                    //               Text(
                    //                 '\$ 349 949 942 392',
                    //                 style: TextStyle(
                    //                   fontSize: 14,
                    //                   fontWeight: FontWeight.w600,
                    //                   color: Colors.white,
                    //                 ),
                    //               ),
                    //               Container(
                    //                 height: 30,
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
