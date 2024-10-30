import 'dart:convert';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_network/features/interests/widget/page/interests_page.dart';
import 'package:story_view/story_view.dart';
import 'package:social_network/data.dart';
import 'widgets/widgets.dart';

class DatingFeedScreen extends StatefulWidget {
  const DatingFeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DatingFeedScreen> createState() => _DatingFeedScreenState();
}

class _DatingFeedScreenState extends State<DatingFeedScreen> {
  PageController pageController = PageController();
  StoryController _storyController = StoryController();
  final Duration _storyDuration = const Duration(seconds: 5);

  int _currentPage = 0;
  int _itemCount = 3;
  List<StoryItem> _storyItems = [];

  bool getUs = true;
  String username = '';
  String useravatar = '';
  List inlist = [];
  String userid = '';

  @override
  void initState() {
    super.initState();
    // BlocProvider.of<ProfileCubit>(context).datingFeedProfiles[0].mediaList.forEach(action)
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Scaffold(
            backgroundColor: AppColors.kWhiteColor,
            body: Stack(
              children: [
                PageView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    allowImplicitScrolling: true,
                    scrollDirection: Axis.vertical,
                    controller: pageController,
                    itemCount: BlocProvider.of<ProfileCubit>(context)
                        .datingFeedProfiles
                        .length,
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
                        StoryItem.pageImage(
                          url: Assets.images.image1.path,
                          controller: _storyController,
                        )
                      ];
                      return StoryView(
                        storyItems: _storyItems,
                        controller: _storyController,
                        // indicatorOuterPadding: EdgeInsets.zero,
                      );
                    }),
                Positioned(
                  right: 18.w,
                  top: 30.h,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InterestsPage()));
                      /*Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                      const CategoriesScreen()));*/
                    },
                    child: SvgPicture.asset(
                      Assets.icons.menu,
                      width: 30.w,
                      height: 25.h,
                      // width: 20.w,
                    ),
                  ),
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
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  MarkedIcon(isShowed: true),
                                  PersonProfileButtonText(
                                    profileName:
                                        BlocProvider.of<ProfileCubit>(context)
                                            .datingFeedProfiles[_currentPage]
                                            .nickname,
                                    onTap: () {},
                                  ),
                                  // SvgPicture.asset('assets/icons/online.svg'),
                                  OnlineStatusWidget(
                                      isOnline:
                                          BlocProvider.of<ProfileCubit>(context)
                                              .datingFeedProfiles[_currentPage]
                                              .isOnline)
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
            ));
      },
    );
  }
}
