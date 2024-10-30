import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';

class TabsListWidget extends StatelessWidget {
  const TabsListWidget({required this.items, super.key});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 45 * rw(context), vertical: 18 * rw(context)),
        child: SizedBox(
          height: 30 * rw(context),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) => Container(
                  height: 30 * rw(context),
                  decoration: BoxDecoration(
                      color: index == 0
                          ? HexColor('#171717')
                          : HexColor('#FFFFFF'),
                      borderRadius: BorderRadius.circular(100)),
                  margin: EdgeInsets.only(left: index == 0 ? 0 : 10),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10 * rw(context),
                          vertical: 6 * rw(context)),
                      child: Text(items[index],
                          style: getStyle(
                              fontSize: 14,
                              height: 18 / 14,
                              fontWeight: FontWeight.w400,
                              color: index == 0
                                  ? HexColor('#FFFFFF')
                                  : HexColor('#171717'))),
                    ),
                  ))),
        ));
  }
}
