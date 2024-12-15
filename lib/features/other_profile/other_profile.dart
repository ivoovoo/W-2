import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_network/features/other_profile/data_provider/other_profile_data_provider.dart';
import 'package:social_network/features/other_profile/repository/other_profile_repository.dart';
import 'package:social_network/features/profile_page/widgets/floating_button.dart';
import 'package:social_network/features/profile_page/widgets/header_widget.dart';
import 'package:social_network/features/profile_page/widgets/photo_list_widget.dart';
import 'package:social_network/features/profile_page/widgets/profile_main_widget.dart';
import 'package:provider/provider.dart';

import 'package:social_network/data.dart';

import '../profile_page/model/user_model.dart';
import 'logic/other_profile_bloc.dart';

class OtherProfilePage extends StatefulWidget {
  const OtherProfilePage({
    super.key,
    required this.userId,
  });

  final int userId;

  static List<String> items = ['Сцена', 'Видео', 'Музыка', 'Новости'];

  @override
  State<OtherProfilePage> createState() => _OtherProfilePageState();
}

class _OtherProfilePageState extends State<OtherProfilePage> {
  late OtherProfileBloc otherProfileBloc;
  late UserModel userModel;
  String responseStatusSubscription = '';

  @override
  void initState() {
    otherProfileBloc = OtherProfileBloc(OtherProfileRepository(
        otherProfileDataProvider: OtherProfileDataProvider()))
      ..add(OtherProfileEvent.init(widget.userId));
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
    return BlocBuilder<OtherProfileBloc, OtherProfileState>(
      bloc: otherProfileBloc,
      builder: (context, state) {
        state.when(
          initial: () {},
          loadInProgress: () {},
          loadSuccess: (user, response) {
            userModel = user ??
                UserModel(
                  id: -1,
                  username: 'UNKNOWN',
                  email: '',
                  isOnline: false,
                  followYou: false,
                  followHim: false,
                  subscribersCount: 0,
                  subscriptionsCount: 0,
                  userVideos: [],
                );
            responseStatusSubscription = response ?? '';
          },
          loadFailure: (error) {},
        );
        if (state is OtherProfileLoadInProgressState ||
            state is OtherProfileInitialState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is OtherProfileLoadFailureState) {
          return Center(
            child: Text(state.error),
          );
        } else {
          return ChangeNotifierProvider(
            create: (context) => CustomCarouselSliderState(),
            child: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        ListView(
                          children: [
                            // const IdRowWidget(),
                            HeaderWidget(username: userModel.username),
                            ProfileMainWidget(
                              userName: userModel.username,
                              userId: userModel.id,
                              subscribers: userModel.subscribersCount,
                              subscriptions: userModel.subscriptionsCount,
                              moments: userModel.userVideos.length,
                              followHim: userModel.followHim,
                              followYou: userModel.followYou,
                              subscribe: () {
                                otherProfileBloc.add(
                                    OtherProfileEvent.subscribe(userModel.id));
                              },
                              unSubscribe: () {
                                otherProfileBloc.add(
                                    OtherProfileEvent.unsubscribe(
                                        userModel.id));
                              },
                              isStorisExist: true,
                            ),
                            const PhotoListWidget(),
                            TabsListWidget(items: OtherProfilePage.items),
                            StaggeredGridWidget(
                              items: [
                                [
                                  Assets.images.stag1.path,
                                  Assets.images.stag2.path,
                                  Assets.images.stag3.path,
                                  Assets.images.stag4.path
                                ],
                              ],
                              leftCoef: 0.3,
                              rightCoef: 0.53,
                            ),
                            /*Padding(
                      padding: EdgeInsets.fromLTRB(20, 30, 20, 8 * rw(context)),
                      child: const FloatingButton(),
                    )*/
                          ],
                        ),
                        const Positioned(
                            bottom: 16, right: 32, child: FloatingButton())
                      ],
                    ),
                  ),
                  SizedBox(height: 60.h),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
