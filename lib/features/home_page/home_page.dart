import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/core/models/video_model.dart';
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
  VideoResponse videoResponse = VideoResponse(
    allVideos: [],
    subscribedVideos: [],
  );

  String extractUsername(String author) {
    // Разбиваем строку на части, используя пробел
    List<String> parts = author.split(' ');

    // Возвращаем вторую часть (username)
    return parts[1];
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        state.when(
          initial: () {},
          loadInProgress: () {},
          loadSuccess: (accounts) {
            videoResponse = accounts;
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
              itemCount: videoResponse.allVideos.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: CustomVideoPlayerWidget(
                          videoPath: videoResponse.allVideos[index].videoFile,
                          thumbnail:
                              videoResponse.allVideos[index].videoPreview ??
                                  ""),
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
                                      context.pushNamed(
                                        AppRouterNames.otherProfile,
                                        extra: videoResponse
                                            .allVideos[index].authorId,
                                      );
                                    },
                                    name: extractUsername(
                                      videoResponse.allVideos[index].author,
                                    ),
                                    // isVisible: BlocProvider.of<HomeScreenCubit>(context).isInterfaceVisible,
                                  ),
                                  ActivityTapeHorizontal(
                                    likesCount: 2,
                                    viewsCount: videoResponse
                                        .allVideos[index].viewsCount,
                                    onPressMessagesFunc: () {
                                      context.pushNamed(
                                        AppRouterNames.commentsPage,
                                        extra:
                                            videoResponse.allVideos[index].id,
                                      );
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
