import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:social_network/constants.dart';
import 'package:social_network/core/core.dart';
import 'package:social_network/core/router/app_router.dart';
import 'package:social_network/core/router/app_router_names.dart';
import 'package:social_network/core/widgets/add_icon.dart';

import '../../../generated/l10n.dart';

class ProfileMainWidget extends StatefulWidget {
  final bool isStorisExist;
  final int subscribers;
  final int subscriptions;
  final int moments;
  final VoidCallback subscribe;
  final VoidCallback unSubscribe;
  final bool isOtherProfile;
  final bool followHim;
  final bool followYou;
  final int userId;
  final String userName;

  const ProfileMainWidget({
    super.key,
    required this.isStorisExist,
    required this.subscribers,
    required this.subscriptions,
    required this.moments,
    required this.subscribe,
    required this.unSubscribe,
    required this.followHim,
    required this.followYou,
    this.isOtherProfile = true,
    required this.userId,
    required this.userName,
  });

  @override
  State<ProfileMainWidget> createState() => _ProfileMainWidgetState();
}

class _ProfileMainWidgetState extends State<ProfileMainWidget> {
  bool isFriend = false;

  @override
  Widget build(BuildContext context) {
    Widget renderButton({
      required String title,
      required VoidCallback? onTap,
    }) {
      return InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: 16 * rw(context), vertical: 8 * rw(context)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: HexColor('#171717')),
          child: Text(
            title,
            style: getStyle(
                fontSize: 12,
                height: 18 / 12,
                fontWeight: FontWeight.w500,
                color: HexColor('#FFFFFF')),
          ),
        ),
      );
    }

    return Padding(
        padding:
            EdgeInsets.fromLTRB(20, 12 * rw(context), 27, 18 * rw(context)),
        child: Row(
          children: [
            Container(
              height: 100 * rw(context),
              width: 100 * rw(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                  border: widget.isStorisExist
                      ? const GradientBoxBorder(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                AppColors.kLightGreenColor,
                                AppColors.kLightBlueColor
                              ]),
                          width: 3)
                      : null),
              child: Container(
                height: 97 * rw(context),
                width: 97 * rw(context),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Lottie.asset(
                  'assets/json/avatar.json',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 18),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _renderTabs(
                          count: widget.moments,
                          title: S.of(context).moments,
                          alignment: Alignment.centerLeft),
                      _renderTabs(
                          count: widget.subscribers,
                          title: S.of(context).followers,
                          alignment: Alignment.center),
                      _renderTabs(
                          count: widget.subscriptions,
                          title: S.of(context).following,
                          alignment: Alignment.centerRight),
                    ],
                  ),
                  SizedBox(height: 26 * rw(context)),
                  widget.isOtherProfile
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // renderButton(title: 'Публикация'),
                            GradientButton(
                              widget: Text(
                                widget.followHim && widget.followYou
                                    ? S.of(context).friends
                                    : widget.followHim
                                        ? S.of(context).friend
                                        : S.of(context).follow,
                                style: TextStyle(
                                    fontSize: 12,
                                    height: 18 / 12,
                                    fontWeight: FontWeight.w500,
                                    color: HexColor('#FFFFFF')),
                              ),
                              function: widget.followHim && widget.followYou
                                  ? widget.unSubscribe
                                  : widget.followHim
                                      ? widget.unSubscribe
                                      : widget.subscribe,
                              colors: widget.followHim
                                  ? const [
                                      AppColors.kLightGreenColor,
                                      AppColors.kLightBlueColor,
                                    ]
                                  : const [
                                      AppColors.kLightBlueColor,
                                      AppColors.kLightGreenColor,
                                    ],
                            ),
                            SizedBox(width: 20 * rw(context)),
                            renderButton(
                              title: S.of(context).write,
                              onTap: () {
                                context.pushNamed(
                                  AppRouterNames.chatsDetail,
                                  extra: widget.userId,
                                  pathParameters: {
                                    'type_of_chat': 'user',
                                    'user_name': widget.userName,
                                  },
                                );
                              },
                            ),
                          ],
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            )
          ],
        ));
  }

  Widget _renderTabs(
      {required int count,
      required String title,
      required Alignment alignment}) {
    return Expanded(
        child: Align(
      alignment: alignment,
      child: Column(
        children: [
          Text(
            count.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          )
        ],
      ),
    ));
  }
}
