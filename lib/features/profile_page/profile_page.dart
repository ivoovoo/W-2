import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:social_network/core/utils/token_funcs.dart';
import 'package:social_network/features/profile_page/logic/profile_bloc.dart';
import 'package:social_network/features/profile_page/repository/profile_repository.dart';
import 'package:social_network/features/profile_page/widgets/floating_button.dart';
import 'package:social_network/features/profile_page/widgets/header_widget.dart';
import 'package:social_network/features/profile_page/widgets/photo_list_widget.dart';
import 'package:social_network/features/profile_page/widgets/profile_main_widget.dart';
import 'package:social_network/data.dart';
import 'data_provider/profile_data_provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  static List<String> items = ['Сцена', 'Видео', 'Музыка', 'Новости'];

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late ProfileBloc profileBloc;

  Future<int> getUserId() async {
    Map<String, dynamic> userData = await getUserData();
    return userData['user_id'];
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return FutureBuilder<int>(
      future: getUserId(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Ошибка: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          final userId = snapshot.data!;
          profileBloc = ProfileBloc(
            ProfileRepository(profileDataProvider: ProfileDataProvider()),
          )..add(ProfileEvent.init(userId));

          return BlocBuilder<ProfileBloc, ProfileState>(
            bloc: profileBloc,
            builder: (context, state) {
              return state.when(
                initial: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadInProgress: () => const Center(
                  child: CircularProgressIndicator(),
                ),
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
                                  const PhotoListWidget(),
                                  TabsListWidget(items: ProfilePage.items),
                                  StaggeredGridWidget(
                                    items: [
                                      [
                                        Assets.images.stag1.path,
                                        Assets.images.stag2.path,
                                        Assets.images.stag3.path,
                                        Assets.images.stag4.path
                                      ]
                                    ],
                                    leftCoef: 0.3,
                                    rightCoef: 0.53,
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
                ),
                loadFailure: (error) => Center(
                  child: Text(error),
                ),
              );
            },
          );
        } else {
          return const Center(child: Text('Пользователь не найден'));
        }
      },
    );
  }
}
