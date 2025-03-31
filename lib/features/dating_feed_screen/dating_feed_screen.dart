import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/features/dating_feed_screen/data_provider/users_data_provider.dart';
import 'package:social_network/features/dating_feed_screen/repository/users_repository.dart';
import 'package:social_network/features/home_page/widgets/custom_video_player_widget.dart';
import 'package:story_view/story_view.dart';
import 'package:social_network/data.dart';
import '../../core/router/app_router_names.dart';
import '../../generated/l10n.dart';
import '../profile/model/user_model.dart';
import 'logic/users_bloc.dart';
import 'widgets/widgets.dart';

class DatingFeedScreen extends StatefulWidget {
  const DatingFeedScreen({
    super.key,
    required this.isAuthenticated,
  });

  final bool isAuthenticated;

  @override
  State<DatingFeedScreen> createState() => _DatingFeedScreenState();
}

class _DatingFeedScreenState extends State<DatingFeedScreen> {
  PageController verticalPageController = PageController();
  PageController horizontalPageController = PageController();
  int _currentPage = 0;
  List<StoryItem> _storyItems = [];
  List<UserModel> users = [];
  UsersBloc? usersBloc;
  String? interests;
  int? ageMin;
  int? ageMax;

  @override
  void initState() {
    super.initState();
    _initializeBloc();
  }

  Future<void> _initializeBloc() async {
    await getInterests(); // Ждём получения данных
    print(interests);
    print('IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII');
    setState(() {
      // Инициализируем блок после получения данных
      usersBloc =
          UsersBloc(UsersRepository(usersDataProvider: UsersDataProvider()))
            ..add(UsersEvent.init(
              interest: interests,
              age_max: ageMax,
              age_min: ageMin,
              city: null,
            ));
    });
  }

  Future<void> getInterests() async {
    print('GGGGGGGGGGGGGGGGGGGGGGGGGGGG');
    ageMax = context
        .read<SharedPreferences>()
        .getInt(LocalStorageKeys.ageMaxOfCategoryVideo);
    ageMin = context
        .read<SharedPreferences>()
        .getInt(LocalStorageKeys.ageMaxOfCategoryVideo);
    interests = context
        .read<SharedPreferences>()
        .getString(LocalStorageKeys.categoryVideo);
    print(ageMax);
    print(ageMin);
    print(interests);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.light));
    return BlocBuilder<ProfileCubit, ProfileeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: usersBloc == null
              ? const Center(child: CircularProgressIndicator())
              : BlocBuilder<UsersBloc, UsersState>(
                  bloc: usersBloc,
                  builder: (context, state) {
                    state.when(
                      initial: () {},
                      loadInProgress: () {},
                      loadSuccess: (usersResponse) {
                        print(usersResponse.listUser); // Пустой?
                        users = usersResponse.listUser
                            .where((user) => user.userVideos.isNotEmpty)
                            .toList();
                      },
                      loadFailure: (error) {},
                    );
                    if (state is UsersLoadInProgressState ||
                        state is UsersInitialState) {
                      print('State1');
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state is UsersLoadFailureState) {
                      print('State2');

                      return Center(
                        child: Text(state.error),
                      );
                    } else {
                      print('State4');
                      print(users);
                      return users.isEmpty
                          ? Center(
                              child: Text(
                                'No users',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : PageView.builder(
                              physics: const AlwaysScrollableScrollPhysics(),
                              // allowImplicitScrolling: true,
                              scrollDirection: Axis.vertical,
                              controller: verticalPageController,
                              itemCount: users.length,
                              onPageChanged: (indexPageUser) {
                                setState(() {
                                  /*print(currentPage);
                    print(Categories.getData[0].name);*/
                                  _currentPage = indexPageUser;
                                  /*username = userlist[currentPageUser]['name'];
                    userid = userlist[currentPageUser]['id'];
                    useravatar = userlist[indexPageUser]['avatar'];*/
                                  // inlist = userlist[currentPageUser]['expand']
                                  //     ['interests'];
                                });
                              },
                              itemBuilder: (context, index) {
                                var user = users[index];
                                //   _storyItems = [
                                //     /*StoryItem(
                                // Image.asset(
                                //     Assets.images.image1.path,
                                //   width: MediaQuery.of(context).size.width,
                                //   fit: BoxFit.fill,
                                // ), duration: _storyDuration)*/
                                //     StoryItem.pageProviderImage(
                                //       AssetImage(Assets.images.image1.path),
                                //     )
                                //   ];
                                return Stack(
                                  children: [
                                    user.userVideos.isEmpty
                                        ? Center(
                                            child: Text(
                                              S
                                                  .of(context)
                                                  .the_user_has_no_posts,
                                            ),
                                          )
                                        : PageView.builder(
                                            itemCount: user.userVideos.length,
                                            // allowImplicitScrolling: true,
                                            controller:
                                                horizontalPageController,
                                            itemBuilder: (context, index) {
                                              return SizedBox(
                                                height: double.infinity,
                                                width: double.infinity,
                                                child: CustomVideoPlayerWidget(
                                                  idVideo:
                                                      user.userVideos[index].id,
                                                  videoPath: user
                                                      .userVideos[index]
                                                      .videoFile,
                                                  thumbnail: user
                                                      .userVideos[index]
                                                      .videoPreview,
                                                  viewsCountPlus: (i) {},
                                                ),
                                              );
                                            },
                                          ),
                                    user.userVideos.isEmpty ||
                                            user.userVideos.length == 1
                                        ? const SizedBox.shrink()
                                        : Positioned(
                                            top: 70,
                                            left: 70,
                                            child: SmoothPageIndicator(
                                              controller:
                                                  horizontalPageController,
                                              count: user.userVideos.length,
                                              effect: WormEffect(
                                                dotWidth: 40,
                                                dotHeight: 7,
                                                dotColor: Colors.grey,
                                                activeDotColor: Colors.white,
                                              ),
                                              // effect: ExpandingDotsEffect(
                                              //   activeDotColor:
                                              //       Color(0xff6bfa79)
                                              //           .withOpacity(0.6),
                                              //   dotColor: Colors.white,
                                              //   dotHeight: 10,
                                              //   dotWidth: 10,
                                              //   spacing: 12,
                                              // ),
                                            ),
                                          ),
                                    // StoryView(
                                    //   storyItems: _storyItems,
                                    //   controller: _storyController,
                                    //   indicatorColor: Colors.transparent,
                                    //   indicatorForegroundColor: Colors.transparent,
                                    //   // indicatorOuterPadding: EdgeInsets.zero,
                                    // ),
                                    Positioned(
                                      bottom: 80.0,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 50.h,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16.w),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      MarkedIcon(
                                                          isShowed: true),
                                                      PersonProfileButtonText(
                                                        profileName:
                                                            users[index]
                                                                .username,
                                                        onTap: () {
                                                          widget.isAuthenticated
                                                              ? context
                                                                  .pushNamed(
                                                                  AppRouterNames
                                                                      .otherProfile,
                                                                  extra: users[
                                                                          index]
                                                                      .id,
                                                                )
                                                              : context.pushNamed(
                                                                  AppRouterNames
                                                                      .authPage);
                                                        },
                                                      ),
                                                      // SvgPicture.asset('assets/icons/online.svg'),
                                                      OnlineStatusWidget(
                                                          isOnline: users[index]
                                                                  .isOnline ??
                                                              false),
                                                    ],
                                                  ),
                                                  GradientTelegramButton(
                                                      onPressed: () {})
                                                ],
                                              ),
                                            ),
                                          ),
                                          // SizedBox(height: 10.h),
                                          // CustomFilterWidget(
                                          //   user: BlocProvider.of<ProfileCubit>(context).user,
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                    }
                  },
                ),
        );
      },
    );
  }
}
