import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_network/core/data/local_storage_keys.dart';

import 'package:social_network/features/profile/logic/profile_bloc.dart';
import 'package:social_network/features/profile/widgets/floating_button.dart';
import 'package:social_network/features/profile/widgets/header_widget.dart';
import 'package:social_network/features/profile/widgets/profile_main_widget.dart';
import 'package:social_network/data.dart';
import 'package:social_network/generated/l10n.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late ProfileBloc profileBloc;

  @override
  void initState() {
    profileBloc = context.read<ProfileBloc>()
      ..add(
        ProfileEvent.init(
            context.read<SharedPreferences>().getInt(LocalStorageKeys.userId)!),
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );

    return Container(
      color: Colors.white,
      child: BlocBuilder<ProfileBloc, ProfileState>(
        bloc: profileBloc,
        builder: (context, state) {
          return state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loadInProgress: () => const Center(
              child: CircularProgressIndicator(),
            ),
            signOutSuccess: () {
              return const SizedBox.shrink();
            },
            loadSuccess: (user) => SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        ListView(
                          children: [
                            HeaderWidget(username: user.username),
                            ProfileMainWidget(
                              profilePictures: user.profilePictures ?? [],
                              userName: user.username,
                              userId: user.id,
                              isStorisExist: true,
                              subscribers: user.subscribersCount,
                              subscriptions: user.subscriptionsCount,
                              moments: user.userVideos.length,
                              followHim: user.followHim,
                              followYou: user.followYou,
                              subscribe: () {},
                              unSubscribe: () {},
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 130.h),
                                Lottie.asset(
                                  'assets/json/cup_animation.json',
                                  fit: BoxFit.fitHeight,
                                  height: 200,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Positioned(
                          bottom: 16,
                          right: 32,
                          child: FloatingButton(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60.h),
                ],
              ),
            ),
            loadFailure: (error) => Center(
              child: Text(error),
            ),
          );
        },
      ),
    );
  }
}
