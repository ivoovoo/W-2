import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/core/router/app_router_names.dart';
import 'package:social_network/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_network/features/home_page/logic/home_bloc.dart';
import 'widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String videoPath;

  List<Account> listOfAccounts = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        state.when(
          initial: () {},
          loadInProgress: () {},
          loadSuccess: (accounts) {
            listOfAccounts = accounts;
          },
          loadFailure: (error) {},
        );
        if (state is HomeLoadInProgressState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is HomeLoadFailureState) {
          return Center(
            child: Text(state.error),
          );
        } else {
          return Container(
            color: AppColors.kBlackColor,
            child: PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: listOfAccounts.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: CustomVideoPlayerWidget(
                        videoPath: listOfAccounts[index].mediaList[0].mediaPath,
                        thumbnail: listOfAccounts[index].mediaList[0].thumbnail,
                      ),
                    ),
                    Positioned(
                      bottom: 100.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.h,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  ProfileButton(
                                    onTap: () {
                                      context
                                          .pushNamed(
                                              AppRouterNames.otherProfile)
                                          .then((_) {});

                                      // BlocProvider.of<HomeScreenAndProfileScreenCubit>(
                                      //         context)
                                      //     .notMyProfile();
                                    },
                                    name: listOfAccounts[index].nickname,
                                    // isVisible: BlocProvider.of<HomeScreenCubit>(context).isInterfaceVisible,
                                  ),
                                  ActivityTapeHorizontal(
                                    likesCount: listOfAccounts[index]
                                        .mediaList[0]
                                        .likes,
                                    viewsCount: listOfAccounts[index]
                                        .mediaList[0]
                                        .views,
                                    onPressMessagesFunc: () {
                                      context.pushNamed(
                                          AppRouterNames.commentsPage);
                                    },
                                    onTap: () {
                                      context.pushNamed(
                                          AppRouterNames.interestsPage);
                                    },
                                    // isVisible: BlocProvider.of<HomeScreenCubit>(context).isInterfaceVisible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        }
      },
    );
  }
}
