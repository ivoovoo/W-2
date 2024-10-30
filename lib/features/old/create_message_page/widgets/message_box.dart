import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';
// import 'package:social_network/features/create_message_page/models/create_message_model.dart';
import 'package:social_network/features/old/create_message_page/models/create_message_model.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({required this.model, this.viewed = true, super.key});

  final CreateMessageModel model;
  final bool viewed;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: model.isMine ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          constraints: BoxConstraints(
              maxWidth: (MediaQuery.of(context).size.width - 36 * rw(context)) *
                      0.75 +
                  10),
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 18 * rw(context), vertical: 12 * rw(context)),
                decoration: BoxDecoration(
                    color: model.isMine ? Colors.red : HexColor('#FFFFFF'),
                    borderRadius: BorderRadius.circular(16),
                    gradient: model.isMine
                        ? LinearGradient(
                            colors: [HexColor('#478CF0'), HexColor('#A9F5BB')])
                        : null),
                margin: EdgeInsets.fromLTRB(
                    model.isMine ? 5 * rw(context) : 0,
                    5 * rw(context),
                    model.isMine ? 0 : 5 * rw(context),
                    5 * rw(context)),
                child: Text(
                  model.text ?? '',
                  style: model.isMine ? _mineStyle : _noteMineStyle,
                ),
              ),
              if (!viewed)
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 10 * rw(context),
                    width: 10 * rw(context),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(colors: [
                          HexColor('#478CF0'),
                          HexColor('#A9F5BB')
                        ])),
                  ),
                )),
            ],
          ),
        ));
  }

  TextStyle get _mineStyle => getStyle(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w500,
      color: HexColor('#FFFFFF'));

  TextStyle get _noteMineStyle => getStyle(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w500,
      color: HexColor('#171717'));
}
