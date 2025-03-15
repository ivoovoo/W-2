import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:social_network/core/router/app_router_names.dart';
import 'package:social_network/features/other_profile/data_provider/other_profile_data_provider.dart';
import 'package:social_network/features/other_profile/repository/other_profile_repository.dart';
import 'package:social_network/features/profile/widgets/header_widget.dart';
import 'package:social_network/features/profile/widgets/profile_main_widget.dart';
import 'package:provider/provider.dart';

import 'package:social_network/data.dart';

import '../profile/model/user_model.dart';
import 'logic/other_profile_bloc.dart';

class OtherProfilePage extends StatefulWidget {
  const OtherProfilePage({
    super.key,
    required this.userId,
  });

  final int userId;

  @override
  State<OtherProfilePage> createState() => _OtherProfilePageState();
}

class _OtherProfilePageState extends State<OtherProfilePage> {
  late OtherProfileBloc otherProfileBloc;
  late UserModel userModel;
  String responseStatusSubscription = '';

  @override
  void initState() {
    otherProfileBloc = OtherProfileBloc(
      OtherProfileRepository(
        otherProfileDataProvider: OtherProfileDataProvider(),
        localStorageDataProvider: context.read<ILocalStorageDataProvider>(),
      ),
    )..add(OtherProfileEvent.init(widget.userId));
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<OtherProfileBloc, OtherProfileState>(
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
                    city: '',
                    isOnline: false,
                    followYou: false,
                    followHim: false,
                    subscribersCount: 0,
                    subscriptionsCount: 0,
                    userVideos: [],
                    profilePictures: [],
                    averageRating: 0,
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
            return Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      ListView(
                        children: [
                          // const IdRowWidget(),
                          HeaderWidget(
                            otherProfile: true,
                            username: userModel.username,
                            averageRating: userModel.averageRating.toString(),
                          ),
                          ProfileMainWidget(
                            profilePictures: userModel.profilePictures ?? [],
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
                                  OtherProfileEvent.unsubscribe(userModel.id));
                            },
                            isStorisExist: true,
                          ),
                          userModel.userVideos.isEmpty
                              ? Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 130.h),
                                    Lottie.asset(
                                      'assets/json/empty_video.json',
                                      fit: BoxFit.fitHeight,
                                      height: 200,
                                    ),
                                  ],
                                )
                              : GridView.builder(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: userModel.userVideos.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 5,
                                    mainAxisSpacing: 5,
                                    childAspectRatio: 0.7,
                                  ),
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        context.pushNamed(
                                          AppRouterNames.videoView,
                                          extra: userModel.userVideos
                                              .sublist(index),
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 1,
                                          ),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                              userModel.userVideos[index]
                                                          .videoPreview ==
                                                      null
                                                  ? 'https://thumbs.dreamstime.com/b/%D0%B8%D0%B7%D0%BE%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D0%B0%D1%8F-%D0%BA%D0%BD%D0%BE%D0%BF%D0%BA%D0%B0-%D0%B8%D0%B3%D1%80%D1%8B-png-104743086.jpg'
                                                  : 'http://45.153.191.237${userModel.userVideos[index].videoPreview}',
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                        ],
                      ),
                      Positioned(
                        bottom: 16,
                        right: 16,
                        child: SizedBox(
                          height: 70,
                          width: 70,
                          child: Lottie.asset(
                            'assets/json/ai_chat.json',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 60.h),
              ],
            );
          }
        },
      ),
    );
  }
}
