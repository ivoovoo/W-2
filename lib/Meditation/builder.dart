import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_network/Chess/Components/size_model.dart';

class MyGridView extends StatelessWidget {
  final List<MusicBox> items = [
    const MusicBox(svgPath: 'assets/images/svg/icon_moon_clouds.svg', name: 'Night Island', tap: '',),
    const MusicBox(svgPath: 'assets/images/svg/icon_sweet_sleep.svg', name: 'Sweet Sleep', tap: '',),
    const MusicBox(svgPath: 'assets/images/svg/icon_moon_clouds.svg', name: 'Good Night', tap: '',),
    const MusicBox(svgPath: 'assets/images/svg/icon_moon_clouds.svg', name: 'Moon Clouds', tap: '',),
    const MusicBox(svgPath: 'assets/images/svg/icon_sweet_sleep.svg', name: 'Sweet Sleep', tap: '',),
    const MusicBox(svgPath: 'assets/images/svg/icon_moon_clouds.svg', name: 'Night Island', tap: '',),
    const MusicBox(svgPath: 'assets/images/svg/icon_moon_clouds.svg', name: 'Moon Clouds', tap: '',),
    const MusicBox(svgPath: 'assets/images/svg/icon_moon_clouds.svg', name: 'Moon Clouds', tap: '',),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Устанавливает количество колонок
        childAspectRatio: 1.1, // Соотношение ширины и высоты элементов
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          shadowColor: Colors.transparent,
          color: Colors.transparent,
          child: InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              Navigator.pushNamed(context, '/nightAlbum');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 177,
                  height: 122,
                  child: SvgPicture.asset(items[index].svgPath),
                ),
                SizedBox(height: getHeight(context, 10)),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            items[index].name,
                            style: const TextStyle(
                              color: Color.fromRGBO(230, 231, 242, 1),
                              fontSize: 18,
                              fontFamily: 'HelveticaNeue',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            '45 MIN •',
                            style: TextStyle(
                              color: Color.fromRGBO(152, 161, 189, 1),
                              fontSize: 11,
                              fontFamily: 'HelveticaNeue',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            ' SLEEP MUSIC',
                            style: TextStyle(
                              color: Color.fromRGBO(152, 161, 189, 1),
                              fontSize: 11,
                              fontFamily: 'HelveticaNeue',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class MusicBox extends StatelessWidget {
  final String svgPath;
  final String name;
  final String tap;

  const MusicBox({super.key, required this.svgPath, required this.name, required this.tap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Column(
        children: [
          SizedBox(
            width: 177,
            height: 122,
            child: SvgPicture.asset(svgPath),
          ),
          SizedBox(height: getHeight(context, 10)),
          Row(
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Color.fromRGBO(230, 231, 242, 1),
                  fontSize: 18,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                '45 MIN •',
                style: TextStyle(
                  color: Color.fromRGBO(152, 161, 189, 1),
                  fontSize: 11,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                ' SLEEP MUSIC',
                style: TextStyle(
                  color: Color.fromRGBO(152, 161, 189, 1),
                  fontSize: 11,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
