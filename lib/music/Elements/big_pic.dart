import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BigPicElement extends StatefulWidget {
  const BigPicElement({
    super.key,
  });

  @override
  State<BigPicElement> createState() => _BigPicElementState();
}

class _BigPicElementState extends State<BigPicElement> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: 390,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            // image: DecorationImage(
            //   image: AssetImage('assets/music/bigpic.png'), // Используем AssetImage вместо Image.asset
            //   fit: BoxFit.contain, // Устанавливаем режим отображения изображения
            // ),
            gradient: LinearGradient(
              colors: [
                Colors.blue.shade900,
                Colors.lightBlueAccent,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.center,
                child: isPressed
                    ?
                SvgPicture.asset(
                  'assets/icons/pause-1006-svgrepo-com.svg',
                  color: Colors.white,
                  width: 30,
                ) :
                SvgPicture.asset(
                        'assets/icons/play-1003-svgrepo-com.svg',
                        color: Colors.white,
                        width: 30,
                      ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Night Vocals',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '30 Songs • 1 hours 3 min',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
