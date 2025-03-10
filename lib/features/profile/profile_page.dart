import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:social_network/core/router/app_router_names.dart';

import 'package:social_network/features/profile/logic/profile_bloc.dart';
import 'package:social_network/features/profile/widgets/floating_button.dart';
import 'package:social_network/features/profile/widgets/header_widget.dart';
import 'package:social_network/features/profile/widgets/profile_main_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late ProfileBloc profileBloc;
  ApiRequester apiRequester = ApiRequester();

  @override
  void initState() {
    profileBloc = context.read<ProfileBloc>()
      ..add(
        ProfileEvent.init(
            context.read<SharedPreferences>().getInt(LocalStorageKeys.userId)!),
      );
    super.initState();
  }

  void _showDeleteDialog(int idVideo) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Delete this video?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 26),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      var response = await apiRequester.toDelete(
                        'delete_video/$idVideo/',
                        context
                            .read<SharedPreferences>()
                            .getString(LocalStorageKeys.authToken)!,
                        context
                            .read<SharedPreferences>()
                            .getString(LocalStorageKeys.csrfToken)!,
                      );
                      log(response.statusCode.toString());
                      profileBloc.add(ProfileEvent.init(
                        context
                            .read<SharedPreferences>()
                            .getInt(LocalStorageKeys.userId)!,
                      ));
                      context.pop();
                    },
                    child: const Text(
                      "Delete",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
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
                            HeaderWidget(
                              username: user.username,
                              averageRating: user.averageRating.toString(),
                            ),
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
                            Divider(color: Colors.grey),
                            user.userVideos.isEmpty
                                ? Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 130.h),
                                      Lottie.asset(
                                        'assets/json/cup_animation.json',
                                        fit: BoxFit.fitHeight,
                                        height: 200,
                                      ),
                                    ],
                                  )
                                : GridView.builder(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: user.userVideos.length,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 5,
                                      mainAxisSpacing: 5,
                                      childAspectRatio: 0.7,
                                    ),
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onLongPress: () {
                                          _showDeleteDialog(
                                              user.userVideos[index].id);
                                        },
                                        onTap: () {
                                          context.pushNamed(
                                            AppRouterNames.videoView,
                                            extra:
                                                user.userVideos.sublist(index),
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 2,
                                            ),
                                            image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                'https://thumbs.dreamstime.com/b/%D0%B8%D0%B7%D0%BE%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D0%B0%D1%8F-%D0%BA%D0%BD%D0%BE%D0%BF%D0%BA%D0%B0-%D0%B8%D0%B3%D1%80%D1%8B-png-104743086.jpg',
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
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
