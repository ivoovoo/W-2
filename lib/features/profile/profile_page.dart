import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_network/core/data/local_storage_keys.dart';

import 'package:social_network/features/profile/logic/profile_bloc.dart';
import 'package:social_network/features/profile/widgets/floating_button.dart';
import 'package:social_network/features/profile/widgets/header_widget.dart';
import 'package:social_network/features/profile/widgets/profile_main_widget.dart';
import 'package:social_network/data.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  static List<String> items = ['Сцены', 'Видео', 'Музыка', 'Новости'];

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late ProfileBloc profileBloc;

  //
  // Future<int> getUserId() async {
  //   Map<String, dynamic> userData = await getUserData();
  //   return userData['user_id'];
  // }

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
            loadSuccess: (user) => ChangeNotifierProvider(
              create: (context) => CustomCarouselSliderState(),
              child: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          ListView(
                            children: [
                              HeaderWidget(username: user.username),
                              ProfileMainWidget(
                                userName: '',
                                userId: -1,
                                isStorisExist: true,
                                subscribers: user.subscribersCount,
                                subscriptions: user.subscriptionsCount,
                                moments: user.userVideos.length,
                                followHim: user.followHim,
                                followYou: user.followYou,
                                subscribe: () {},
                                unSubscribe: () {},
                                isOtherProfile: false,
                              ),
                              // const PhotoListWidget(),
                              TabsListWidget(items: ProfilePage.items),
                              // StaggeredGridWidget(
                              //   items: [
                              //     [
                              //       Assets.images.stag1.path,
                              //       Assets.images.stag2.path,
                              //       Assets.images.stag3.path,
                              //       Assets.images.stag4.path
                              //     ]
                              //   ],
                              //   leftCoef: 0.3,
                              //   rightCoef: 0.53,
                              // ),
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
