import 'package:flutter/material.dart';

import '../../Style/style.dart';
import '../../Widgets/track_widget.dart';
import '../Secondary Screens/Map Screens/order_screen.dart';

class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Container(
                width: double.infinity,
                height: 470,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color.lerp(
                        Color.fromRGBO(252, 161, 78, 1),
                        Color.fromRGBO(255, 230, 206, 1),
                        _animation.value,
                      )!,
                      Color.lerp(
                        Color.fromRGBO(255, 230, 206, 1),
                        Color.fromRGBO(252, 161, 78, 1),
                        _animation.value,
                      )!,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 150),
                          Text(
                            'Hello, Abhishek',
                            style: Style().poppins_stl.copyWith(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Track your\nBelongings',
                            style: Style().poppins_stl.copyWith(
                              fontSize: 35,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 20),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Enter 10 digits order number',
                                prefixIcon: Icon(Icons.search),
                                // Иконка слева
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.account_balance_wallet_outlined,
                                  ),
                                  // Иконка справа
                                  onPressed: () {
                                    print('Send button pressed');
                                  },
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  // Округление рамки
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ), // Цвет рамки
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  // Округление рамки
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ), // Цвет рамки
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  // Округление рамки
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 2.0,
                                  ), // Цвет рамки при фокусе
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(

                                child: Container(
                                  width: 200,
                                  height: 51,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.black,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Track Now',
                                        style: Style().poppins_stl,
                                      ),
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderScreen()));
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        right: 30,
                        top: 30,
                        child: Image.asset('assets/Illustration.png'),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  'Tracking history',
                  style: Style().poppins_stl.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TrackHistoryWidget(
                  imgPath: 'assets/Ellipse 96.png',
                  name: 'Marky Logistics',
                  description: 'Delivered on 23 March 2021',
                ),
                TrackHistoryWidget(
                  imgPath: 'assets/Ellipse 97.png',
                  name: 'Tyme technologies',
                  description: 'Delivered on 09 February 2021',
                ),
                TrackHistoryWidget(
                  imgPath: 'assets/Ellipse 98.png',
                  name: 'Grand technologies',
                  description: 'Delivered on 09 February 2021',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
