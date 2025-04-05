import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../Providers/route_provider.dart';
import '../components/map_view.dart';
import 'my_location.dart';

class Select extends StatelessWidget {
   Select({super.key});


  final TextEditingController _startAddressController = TextEditingController();
  final TextEditingController _endAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final routeProvider = Provider.of<RouteProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
          const MapView(),
          Positioned(
            top: 60,
            left: 0,
            child: Container(
              width: 48,
              height: 56,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                color: Colors.black,
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.56, // Начальный размер
            minChildSize: 0.56, // Минимальный размер
            maxChildSize: 0.93, // Максимальный размер
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/location.svg',
                                    color:
                                        const Color.fromRGBO(146, 146, 146, 1),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                   Container(
                                     width: 300,
                                     height: 50,
                                     child: TextField(
                                      controller: _startAddressController,
                                      decoration: const InputDecoration(
                                        hintText: "new cafe", // Подсказка
                                        hintStyle: TextStyle(color: Colors.grey), // Стиль подсказки
                                        filled: true, // Включаем заполнение фона
                                        fillColor: Colors.transparent, // Прозрачный фон
                                        border: InputBorder.none, // Убираем границы
                                        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Отступы
                                      ),
                                      style: const TextStyle(color: Colors.black), // Стиль текста
                                                                       ),
                                   ),
                                ],
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SvgPicture.asset('assets/Line 3.svg'),
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/location.svg',
                                    color:
                                        const Color.fromRGBO(146, 146, 146, 1),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'Angelina Paris Cafe',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color.fromRGBO(146, 146, 146, 1),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/location.svg',
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                   Container(
                                     width: 300,
                                     height: 50,
                                     child: TextField(
                                      controller: _endAddressController,
                                      decoration: const InputDecoration(
                                        hintText: "new cafe", // Подсказка
                                        hintStyle: TextStyle(color: Colors.grey), // Стиль подсказки
                                        filled: true, // Включаем заполнение фона
                                        fillColor: Colors.transparent, // Прозрачный фон
                                        border: InputBorder.none, // Убираем границы
                                        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Отступы
                                      ),
                                      style: const TextStyle(color: Colors.black), // Стиль текста
                                                                       ),
                                   ),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap:() async {
                              if (_startAddressController.text.isNotEmpty &&
                                  _endAddressController.text.isNotEmpty) {
                                await routeProvider.geocodeAddresses(); // Геокодируем адреса
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const MyLocation()),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text("Пожалуйста, введите оба адреса")),
                                );
                              }
                            },
                            child: Container(
                              width: 56,
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color.fromRGBO(237, 237, 237, 1),
                              ),
                              child: const Center(
                                child: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Expanded(
                          child: ListView(
                            padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: 239,
                            height: 150,
                            color: Colors.white,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  child: Image.asset('assets/car2.png'),
                                ),
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Container(
                                      width: 239,
                                      height: 134,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          width: 0.3,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Comfort',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  '\$8.50',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Text(
                                                  '3 min    ',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    color: Color.fromRGBO(
                                                        146, 146, 146, 1),
                                                  ),
                                                ),
                                                SvgPicture.asset(
                                                    'assets/user.svg'),
                                                const Text(
                                                  '  4',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    color: Color.fromRGBO(
                                                        146, 146, 146, 1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 15,),
                          Container(
                            width: 239,
                            height: 150,
                            color: Colors.white,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  child: Image.asset('assets/car2.png'),
                                ),
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Container(
                                      width: 239,
                                      height: 134,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          width: 0.3,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Delivery',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  '\$8.50',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Text(
                                                  '3 min    ',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    color: Color.fromRGBO(
                                                        146, 146, 146, 1),
                                                  ),
                                                ),
                                                SvgPicture.asset(
                                                    'assets/user.svg'),
                                                const Text(
                                                  '  4',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    color: Color.fromRGBO(
                                                        146, 146, 146, 1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                      Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 0.3,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 22),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset('assets/mastercard.svg'),
                                  const Text(
                                    '  **** 0872',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(146, 146, 146, 1),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                'Change',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(146, 146, 146, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Text(
                            'Order now',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
