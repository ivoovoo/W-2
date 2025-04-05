import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchDriverPage extends StatefulWidget {
  const SearchDriverPage({super.key});

  @override
  State<SearchDriverPage> createState() => _SearchDriverPageState();
}

class _SearchDriverPageState extends State<SearchDriverPage> {
  final List<Widget> _widgets = [];

  void _addWidget() {
    final newWidget = Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      height: 168,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(253, 183, 18, 1), // Начальный цвет градиента
              Colors.black, // Конечный цвет градиента
            ],
            begin: Alignment.centerRight, // Начальная точка градиента
            end: Alignment.centerLeft, // Конечная точка градиента
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/photo driver.png'),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Аркадий 4.9',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      'Volkswagen Jetta',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '9 мин',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.25),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            InkWell(
              child: Text(
                'Подтвердить 370 ₽',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    setState(() {
      _widgets.add(newWidget);
    });

    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        _widgets.remove(newWidget);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/map2.png'), // Укажите путь к вашему PNG
            fit: BoxFit.cover, // Настройка масштабирования изображения
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 48,
                    height: 56,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        )),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 105,
                        child: Image.asset('assets/photo driver.png'),
                      ),
                      Positioned(
                        left: 70,
                        child: Image.asset('assets/photo driver.png'),
                      ),
                      Positioned(
                        left: 35,
                        child: Image.asset('assets/photo driver.png'),
                      ),
                      Positioned(
                        child: Image.asset('assets/photo driver.png'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Column(
              children: _widgets,
            )
          ],
        ),
      ),
    );
  }
}
