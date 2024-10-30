/*
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';
import 'package:social_network/core/widgets/app_bar_widget.dart';
import 'package:social_network/features/create_message_page/models/create_message_model.dart';
import 'package:social_network/features/create_message_page/widgets/message_box.dart';
import 'package:social_network/features/create_message_page/widgets/message_keep_file_icon.dart';
import 'package:social_network/features/create_message_page/widgets/message_send_icon.dart';
import 'package:social_network/features/create_message_page/widgets/type_message_area.dart';
import 'package:social_network/features/messages_page/models/message_model.dart';

class CreateMessagePage extends StatefulWidget {
  const CreateMessagePage({required this.messageModel, super.key});

  final MessageModel messageModel;

  @override
  State<StatefulWidget> createState() => _CreateMessagePageState();
}

class _CreateMessagePageState extends State<CreateMessagePage> {
  late final ScrollController _scrollController;
  late StreamSubscription<bool> keyboardSubscription;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    var keyboardVisibilityController = KeyboardVisibilityController();

    keyboardSubscription =
        keyboardVisibilityController.onChange.listen((bool visible) {
      if (visible) {
        _scrollController.animateTo(0,
            duration: const Duration(seconds: 1), curve: Curves.ease);
      }
    });
  }

  @override
  void dispose() {
    keyboardSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<CreateMessageModel> items = [
      CreateMessageModel(imageUrl: 'assets/create_message1.png', isMine: true),
      CreateMessageModel(
          text: 'Привет, как дела ? Как жизнь? \nУ меня все классно',
          isMine: true),
      CreateMessageModel(text: 'Привет', isMine: false),
      CreateMessageModel(
          text: 'Жизнь нормально, ничего нового!', isMine: false),
      CreateMessageModel(
          text: 'Ясно, как работа? как дети?', isMine: true, isViewed: false),
    ];

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: HexColor('#F5F5F5'),
        resizeToAvoidBottomInset: true,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(
                MediaQuery.of(context).padding.top < 50
                    ? 70
                    : MediaQuery.of(context).padding.top), // Set this height
            child: AppBarWidget(messageModel: widget.messageModel)),
        body: Stack(
          children: [
            Positioned.fill(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18 * rw(context)),
              child: ListView.builder(
                  itemCount: items.length,
                  shrinkWrap: true,
                  reverse: true,
                  controller: _scrollController,
                  padding: EdgeInsets.symmetric(vertical: 60 * rw(context)),
                  itemBuilder: (context, index) {
                    final correctIndex = items.length - index - 1;

                    final url = items[correctIndex].imageUrl;
                    final isMine = items[correctIndex].isMine;

                    if (url != null) {
                      return Container(
                        height: 130 * rw(context),
                        width: 170 * rw(context),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)),
                        child: Align(
                          alignment: isMine
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          child: Image.asset(
                            url,
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    }

                    return MessageBox(
                      model: items[correctIndex],
                      viewed: correctIndex != items.length - 1,
                    );
                  }),
            )),
            Positioned(
                bottom: 0 * rw(context),
                left: 9 * rw(context),
                right: 9 * rw(context),
                child: SafeArea(
                  child: Container(
                    color: HexColor('#F5F5F5'),
                    padding: EdgeInsets.symmetric(vertical: 10 * rw(context)),
                    child: Row(
                      children: [
                        const MessageKeepFileIcon(),
                        SizedBox(width: 6 * rw(context)),
                        const TypeMessageArea(),
                        SizedBox(width: 6 * rw(context)),
                        const MessageSendIcon()
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
*/
