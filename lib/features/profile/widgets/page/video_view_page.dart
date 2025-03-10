import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/core/constants/colors.dart';
import 'package:social_network/core/router/app_router_names.dart';
import 'package:social_network/features/home_page/widgets/custom_video_player_widget.dart';
import 'package:social_network/features/home_page/widgets/profile_button.dart';

import '../../../../core/models/video_model.dart';
import '../../../home_page/widgets/activity_tape_horizontal.dart';

class VideoViewPage extends StatefulWidget {
  const VideoViewPage({
    super.key,
    required this.listOfVideo,
  });

  final List<Video> listOfVideo;

  @override
  State<VideoViewPage> createState() => _VideoViewPageState();
}

class _VideoViewPageState extends State<VideoViewPage> {
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
  void initState() {
    super.initState();
    videoResponse = VideoResponse(
      allVideos: widget.listOfVideo,
      subscribedVideos: [],
    );
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
    return Scaffold(
      body: Container(
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
                        viewsCount = videoResponse.allVideos[index].viewsCount;
                      }
                      setState(() {
                        firstView = false;
                        viewsCount++;
                      });
                    },
                  ),
                ),
                Positioned(
                  bottom: 60.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40.h,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              ProfileButton(
                                onTap: () {
                                  context.pushNamed(
                                    AppRouterNames.otherProfile,
                                    extra:
                                        videoResponse.allVideos[index].authorId,
                                  );
                                },
                                name: extractUsername(
                                  videoResponse.allVideos[index].author,
                                ),
                                // isVisible: BlocProvider.of<HomeScreenCubit>(context).isInterfaceVisible,
                              ),
                              ActivityTapeHorizontal(
                                likesCount: 2,
                                viewsCount: firstView
                                    ? videoResponse.allVideos[index].viewsCount
                                    : viewsCount,
                                onPressMessagesFunc: () {
                                  context.pushNamed(
                                    AppRouterNames.commentsPage,
                                    extra: videoResponse.allVideos[index].id,
                                  );
                                },
                                onTap: () {
                                  context.pushNamed(
                                    AppRouterNames.interestsPage,
                                    extra: true,
                                  );
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
      ),
    );
  }
}
