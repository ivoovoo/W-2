import 'package:flutter/services.dart';
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
  const HomePage({
    super.key,
    required this.isAuthenticated,
  });

  final bool isAuthenticated;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  VideoResponse videoResponse = VideoResponse(
    allVideos: [],
    subscribedVideos: [],
  );
  int viewsCount = 0;
  bool firstView = true;

  String extractUsername(String author) {
    // Разбиваем строку на части, используя пробел
    List<String> parts = author.split(' ');

    // Возвращаем вторую часть (username)
    return parts[1];
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light));
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
                        idVideo: videoResponse.allVideos[index].id,
                        videoPath: videoResponse.allVideos[index].videoFile,
                        thumbnail:
                            videoResponse.allVideos[index].videoPreview ?? "",
                        viewsCountPlus: (oneView) {
                          if (firstView) {
                            viewsCount =
                                videoResponse.allVideos[index].viewsCount;
                          }
                          setState(() {
                            firstView = false;
                            viewsCount++;
                          });
                        },
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
                                      widget.isAuthenticated
                                          ? context.pushNamed(
                                              AppRouterNames.otherProfile,
                                              extra: videoResponse
                                                  .allVideos[index].authorId,
                                            )
                                          : context.pushNamed(
                                              AppRouterNames.authPage);
                                    },
                                    name: extractUsername(
                                      videoResponse.allVideos[index].author,
                                    ),
                                    // isVisible: BlocProvider.of<HomeScreenCubit>(context).isInterfaceVisible,
                                  ),
                                  ActivityTapeHorizontal(
                                    likesCount: 2,
                                    viewsCount: firstView
                                        ? videoResponse
                                            .allVideos[index].viewsCount
                                        : viewsCount,
                                    onPressMessagesFunc: () {
                                      widget.isAuthenticated
                                          ? context.pushNamed(
                                              AppRouterNames.commentsPage,
                                              extra: videoResponse
                                                  .allVideos[index].id,
                                            )
                                          : context.pushNamed(
                                              AppRouterNames.authPage);
                                    },
                                    onTap: () {
                                      widget.isAuthenticated
                                          ? context.pushNamed(
                                              AppRouterNames.interestsPage)
                                          : context.pushNamed(
                                              AppRouterNames.authPage);
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
