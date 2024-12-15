import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_network/features/dating_feed_screen/data_provider/users_data_provider.dart';
import 'package:social_network/features/dating_feed_screen/repository/users_repository.dart';
import 'package:story_view/story_view.dart';
import 'package:social_network/data.dart';
import '../profile_page/model/user_model.dart';
import 'logic/users_bloc.dart';
import 'widgets/widgets.dart';

class DatingFeedScreen extends StatefulWidget {
  const DatingFeedScreen({
    super.key,
  });

  @override
  State<DatingFeedScreen> createState() => _DatingFeedScreenState();
}

class _DatingFeedScreenState extends State<DatingFeedScreen> {
  PageController pageController = PageController();
  final StoryController _storyController = StoryController();

  int _currentPage = 0;
  List<StoryItem> _storyItems = [];
  List<UserModel> users = [];
  late UsersBloc usersBloc;

  @override
  void initState() {
    super.initState();
    usersBloc =
        UsersBloc(UsersRepository(usersDataProvider: UsersDataProvider()))
          ..add(const UsersEvent.init());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.kWhiteColor,
          body: BlocBuilder<UsersBloc, UsersState>(
            bloc: usersBloc,
            builder: (context, state) {
              state.when(
                initial: () {},
                loadInProgress: () {},
                loadSuccess: (usersResponse) {
                  users = usersResponse.listUser;
                },
                loadFailure: (error) {},
              );
              if (state is UsersLoadInProgressState) {
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
                return PageView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  allowImplicitScrolling: true,
                  scrollDirection: Axis.vertical,
                  controller: pageController,
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
                    _storyItems = [
                      /*StoryItem(
                        Image.asset(
                            Assets.images.image1.path,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill,
                        ), duration: _storyDuration)*/
                      StoryItem.pageProviderImage(
                        AssetImage(Assets.images.image1.path),
                      )
                    ];
                    return Stack(
                      children: [
                        StoryView(
                          storyItems: _storyItems,
                          controller: _storyController,
                          indicatorColor: Colors.transparent,
                          indicatorForegroundColor: Colors.transparent,
                          // indicatorOuterPadding: EdgeInsets.zero,
                        ),
                        Positioned(
                          bottom: 80.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 50.h,
                                width: MediaQuery.of(context).size.width,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          MarkedIcon(isShowed: true),
                                          PersonProfileButtonText(
                                            profileName: users[index].username,
                                            onTap: () {},
                                          ),
                                          // SvgPicture.asset('assets/icons/online.svg'),
                                          OnlineStatusWidget(
                                              isOnline: users[index].isOnline ??
                                                  false),
                                        ],
                                      ),
                                      GradientTelegramButton(onPressed: () {})
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
