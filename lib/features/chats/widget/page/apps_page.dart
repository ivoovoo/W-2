import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:social_network/features/chats/logics/apps_logic/apps_bloc.dart';
import 'package:social_network/features/chats/widget/plus_and_arrow_forward_icons.dart';
import 'package:social_network/features/chats/widget/widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../core/router/app_router_names.dart';
import '../../../../generated/l10n.dart';
import '../../models/apps_model/apps_model.dart';

class AppsPage extends StatefulWidget {
  const AppsPage({super.key});

  @override
  State<AppsPage> createState() => _AppsPageState();
}

class _AppsPageState extends State<AppsPage>
    with SingleTickerProviderStateMixin {
  AppsModel appsModel = const AppsModel(sites: []);
  late AnimationController _controller;
  int secondsLeft = 5; // Начальные 5 секунд

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _launchURLInApp(String url) async {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarIconBrightness: Brightness.dark,
    //   ),
    // );
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: WebViewConfiguration(
        enableJavaScript: false,
        enableDomStorage: false,
      ),
    )) {
      throw 'Could not launch $uri';
    }
  }

  void showChatDeletedSnackBar(BuildContext context, VoidCallback onUndo) {
    // Запускаем анимацию
    _controller.reset();
    _controller.forward();

    // Создание SnackBar
    final snackBar = SnackBar(
      backgroundColor: Colors.white,
      content: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          // Вычисляем оставшиеся секунды на основе прогресса анимации
          int remainingSeconds =
              secondsLeft - (_controller.value * secondsLeft).round();
          return Row(
            children: [
              Text('$remainingSeconds',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )),
              SizedBox(width: 15),
              Text('Чат удалён',
                  style: TextStyle(fontSize: 14, color: Color(0xffff7575))),
            ],
          );
        },
      ),
      action: SnackBarAction(
        textColor: Colors.black,
        label: S.of(context).cancel,
        onPressed: () {
          onUndo(); // Выполнить действие при нажатии "Отмена"
        },
      ),
      duration: const Duration(seconds: 5),
    );

    // Показать SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snackBar).closed.then((_) {
      setState(() {
        _controller.reverseDuration;
      });
    });
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
    return BlocBuilder<AppsBloc, AppsState>(
      builder: (context, state) {
        state.when(
          initial: () {},
          loadInProgress: () {},
          loadSuccess: (apps) {
            appsModel = apps;
          },
          loadFailure: (error) {},
        );
        if (state is AppsLoadInProgressState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is AppsLoadFailureState) {
          return Center(
            child: Text(state.error),
          );
        } else {
          return appsModel.sites.isEmpty
              ? Column(
                  children: [
                    const SizedBox(height: 16),
                    PlusAndArrowForwardIconsWidget(
                      onTapPlusIcon: () {
                        context.pushNamed(AppRouterNames.createApp);
                      },
                      onTapArrowForwardIcon: () {},
                    ),
                    Expanded(
                      child: Center(
                        child: Lottie.asset(
                          'assets/json/robot.json',
                          fit: BoxFit.fitHeight,
                          height: 300,
                        ),
                      ),
                    ),
                  ],
                )
              : ListView(
                  padding: EdgeInsets.zero,
                  // clipBehavior: Clip.none,
                  children: [
                    const SizedBox(height: 16),
                    PlusAndArrowForwardIconsWidget(
                      onTapPlusIcon: () {
                        context.pushNamed(AppRouterNames.createApp);
                      },
                      onTapArrowForwardIcon: () {
                        context.pushNamed(AppRouterNames.siteCategories);
                      },
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 18.0,
                      // горизонтальные отступы между элементами
                      runSpacing: 26.0,
                      // вертикальные отступы между рядами
                      children: [
                        for (int i = 0; i < appsModel.sites.length; i++)
                          Transform.translate(
                            offset: Offset(
                              0,
                              (i >
                                      appsModel.sites.length -
                                          (appsModel.sites.length % 3))
                                  ? 0
                                  : (i % 3 == 1)
                                      ? -50
                                      : 0,
                            ),
                            child: InkWell(
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onLongPress: () {
                                // showModalBottomSheet(
                                //   context: context,
                                //   backgroundColor: Colors.transparent,
                                //   isScrollControlled: false,
                                //   builder: (context) => DeleteBottomSheet(
                                //     url: '',
                                //     delete: () {},
                                //   ),
                                // );
                              },
                              onTap: () {
                                // _launchURLInApp(appsModel.sites[i].url);
                                context.pushNamed(
                                  AppRouterNames.customWebView,
                                  extra: appsModel.sites[i].url,
                                );
                              },
                              child: SizedBox(
                                height: 100,
                                width: 100,
                                child: Stack(
                                  alignment: Alignment.center,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      padding: const EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xff7fbbfb),
                                            Color(0xffff8bad),
                                          ],
                                        ),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Container(
                                        height: 92,
                                        width: 92,
                                        color: Colors.white,
                                        child:
                                            appsModel.sites[i].siteImage == null
                                                ? Lottie.asset(
                                                    'assets/json/avatar.json',
                                                    fit: BoxFit.cover,
                                                  )
                                                : Image.network(
                                                    'http://45.153.191.237/${appsModel.sites[i].siteImage!}',
                                                    fit: BoxFit.cover,
                                                  ),
                                      ),
                                    ),
                                    // (chats[i].unreadMessages != 0 &&
                                    //         chats[i].haveStories)
                                    false
                                        ? Container(
                                            alignment: Alignment.center,
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0xff7fbbfb)
                                                  .withOpacity(0.25),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Text(
                                              // '${chats[i].unreadMessages}',
                                              '4',
                                              style: const TextStyle(
                                                fontSize: 29,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        : SizedBox(),
                                    false
                                        ? Positioned(
                                            right: 85 / 2,
                                            left: 85 / 2,
                                            bottom: -7.5,
                                            child: Container(
                                              padding: const EdgeInsets.all(3),
                                              height: 15,
                                              width: 15,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xff6cffb9),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                            ),
                                          )
                                        : SizedBox.shrink(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                );
        }
      },
    );
  }
}
