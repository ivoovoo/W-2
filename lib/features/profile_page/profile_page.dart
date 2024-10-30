import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_network/features/profile_page/widgets/floating_button.dart';
import 'package:social_network/features/profile_page/widgets/header_widget.dart';
import 'package:social_network/features/profile_page/widgets/id_row_widget.dart';
import 'package:social_network/features/profile_page/widgets/photo_list_widget.dart';
import 'package:social_network/features/profile_page/widgets/profile_main_widget.dart';
import 'package:provider/provider.dart';

import 'package:social_network/data.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static List<String> items = ['Сцена', 'Видео', 'Музыка', 'Новости'];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark));
    return ChangeNotifierProvider(
      create: (context) => CustomCarouselSliderState(),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  ListView(children: [
                    // const IdRowWidget(),
                    const HeaderWidget(),
                    ProfileMainWidget(
                      isStorisExist: true,
                    ),
                    const PhotoListWidget(),
                    TabsListWidget(items: items),
                    StaggeredGridWidget(items: [
                      [
                        /*'assets/stag1.png',
                        'assets/stag2.png',
                        'assets/stag3.png',
                        'assets/stag4.png'*/
                        Assets.images.stag1.path,
                        Assets.images.stag2.path,
                        Assets.images.stag3.path,
                        Assets.images.stag4.path
                      ]
                    ], leftCoef: 0.3, rightCoef: 0.53),
                    /*Padding(
                      padding: EdgeInsets.fromLTRB(20, 30, 20, 8 * rw(context)),
                      child: const FloatingButton(),
                    )*/
                  ]),
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
}
