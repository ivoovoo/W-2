import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';

class TabsListWidget extends StatelessWidget {
  const TabsListWidget({required this.items, super.key});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 12 * rw(context), 27, 18 * rw(context)),
      child: SizedBox(
        height: 30 * rw(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTabWidget(title: items[0], index: 0),
            CustomTabWidget(title: items[1], index: 1),
            CustomTabWidget(title: items[2], index: 2),
            CustomTabWidget(title: items[3], index: 3),
          ],
        ),
      ),
    );
  }
}

class CustomTabWidget extends StatelessWidget {
  const CustomTabWidget({
    super.key,
    required this.title,
    required this.index,
  });

  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 10 * rw(context), vertical: 6 * rw(context)),
      alignment: Alignment.center,
      height: 30 * rw(context),
      decoration: BoxDecoration(
          color: index == 0 ? HexColor('#171717') : HexColor('#FFFFFF'),
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        title,
        style: getStyle(
          fontSize: 14,
          height: 18 / 14,
          fontWeight: FontWeight.w400,
          color: index == 0 ? HexColor('#FFFFFF') : HexColor('#171717'),
        ),
      ),
    );
  }
}
