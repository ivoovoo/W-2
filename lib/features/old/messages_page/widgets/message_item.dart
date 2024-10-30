/*
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';
import 'package:social_network/core/animations/custom_route.dart';
import 'package:social_network/core/widgets/button_widget.dart';
*/
/*import 'package:social_network/features/create_message_page/create_message_page.dart';
import 'package:social_network/features/messages_page/models/message_model.dart';*//*

import '../../create_message_page/create_message_page.dart';
import '../models/message_model.dart';
import 'package:social_network/core/widgets/profile_photo.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({required this.messageModel, super.key});

  final MessageModel messageModel;

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      onTap: () => Navigator.push(context,
          CustomPageRoute(CreateMessagePage(messageModel: messageModel))),
      child: Container(
        height: 62 * rw(context),
        margin: EdgeInsets.symmetric(vertical: 8.0 * rw(context)),
        width: double.infinity,
        child: Align(
          child: Row(children: [
            ProfilePhoto(
              photo: messageModel.imageUrl,
              isActive: messageModel.isActive,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16 * rw(context)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      messageModel.ownerName,
                      style: getStyle(
                          fontSize: 16,
                          height: 22 / 16,
                          fontWeight: FontWeight.w500,
                          color: HexColor('#171717')),
                    ),
                    Text(
                        messageModel.isTyping
                            ? 'печатает'
                            : messageModel.lastMessage,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: getStyle(
                            fontSize: 14,
                            height: 18 / 14,
                            fontWeight: FontWeight.w500,
                            color: HexColor('#7C7C7C'))),
                  ],
                ),
              ),
            ),
            if (messageModel.notReadedMessagesCount != 0)
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20 * rw(context)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [HexColor('#498EF0'), HexColor('#A8F4BC')])),
                child: Padding(
                    padding: EdgeInsets.fromLTRB(6 * rw(context),
                        4 * rw(context), 6 * rw(context), 4 * rw(context)),
                    child: Text(
                      messageModel.notReadedMessagesCount.toString(),
                      style: getStyle(
                          fontSize: 12 * rw(context),
                          height: 16 * rw(context) / 12 * rw(context),
                          fontWeight: FontWeight.w400,
                          color: HexColor('#FFFFFF')),
                    )),
              )
          ]),
        ),
      ),
    );
  }
}
*/
