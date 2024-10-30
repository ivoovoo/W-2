/*
import 'package:flutter/material.dart';
import 'package:social_network/constants.dart';
*/
/*import 'package:social_network/features/messages_page/models/message_model.dart';
import 'package:social_network/features/messages_page/widgets/message_item.dart';*//*

import 'models/message_model.dart';
import 'widgets/message_item.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  static List<MessageModel> messages = [
    MessageModel(
        imageUrl: 'assets/profile1.png',
        ownerName: 'Анна Иванова',
        lastMessage: '',
        isActive: true,
        isTyping: true),
    MessageModel(
        imageUrl: 'assets/profile2.png',
        ownerName: 'Ира Смелая',
        lastMessage: 'Пока, красотка'),
    MessageModel(
        imageUrl: 'assets/profile3.png',
        ownerName: 'Саша',
        lastMessage: 'Axaxaxaxaxaxaaxaxaxaxaxax дада прикольно...'),
    MessageModel(
        imageUrl: 'assets/profile4.png',
        ownerName: 'Артем Смирнов',
        lastMessage: 'Да!',
        isActive: true,
        notReadedMessagesCount: 2),
    MessageModel(
        imageUrl: 'assets/profile5.png',
        ownerName: 'Кристина',
        lastMessage: 'Да! Axaxaxaxaxaxaxaxaxaxax дада прикол...',
        notReadedMessagesCount: 10),
    MessageModel(
        imageUrl: 'assets/profile6.png',
        ownerName: 'Кристина',
        lastMessage: 'Нет, спасибо'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20 * rw(context)),
          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => MessageItem(
                    messageModel: messages[index],
                  )),
        ),
      ),
    );
  }
}
*/
