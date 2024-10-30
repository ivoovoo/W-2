import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';

class TypeMessageArea extends StatelessWidget {
  const TypeMessageArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: 40 * rw(context),
      padding: EdgeInsets.fromLTRB(20 * rw(context), 10 * rw(context),
          10 * rw(context), 10 * rw(context)),
      decoration: BoxDecoration(
          color: HexColor('#FFFFFF'), borderRadius: BorderRadius.circular(16)),
      child: TextField(
        maxLines: 8, //or null
        cursorColor: HexColor('#171717'),
        decoration: InputDecoration.collapsed(
            hintText: 'Моё сообщение',
            hintStyle: getStyle(
                fontSize: 12,
                height: 18 / 12,
                fontWeight: FontWeight.w400,
                color: HexColor('#7C7C7C'))),
      ),
    ));
  }
}
