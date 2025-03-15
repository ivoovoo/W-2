import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_network/constants.dart';
import 'package:social_network/features/profile/widgets/header_button.dart';
import 'package:social_network/data.dart';

import '../logic/profile_bloc.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({
    super.key,
    required this.username,
    required this.averageRating,
    required this.otherProfile,
  });

  final String username;
  final String averageRating;
  final bool otherProfile;

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  bool chatGptIsEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 8 * rw(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                '@${widget.username}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 8 * rw(context),
              ),
              // SvgPicture.asset('assets/icons/verified.svg')
            ],
          ),
          Row(
            children: [
              Visibility(
                visible: !widget.otherProfile,
                child: HeaderButton(
                  widget: const Text('⚡️'),
                  function: () {
                    print('TAPPEDDDDD');
                    setState(() {
                      chatGptIsEnabled = !chatGptIsEnabled;
                    });
                    context
                        .read<ProfileBloc>()
                        .add(ProfileEvent.enableChatGpt(chatGptIsEnabled));
                  },
                  isEnabledChatGpt: chatGptIsEnabled,
                ),
              ),
              SizedBox(
                width: 8 * rw(context),
              ),
              HeaderButton(
                  widget: GradientText(
                    widget.averageRating,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.kLightBlueColor,
                          AppColors.kLightGreenColor
                        ]),
                  ),
                  function: () {})
            ],
          )
        ],
      ),
    );
  }
}
