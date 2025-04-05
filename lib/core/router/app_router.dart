import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/core/core.dart';
import 'package:social_network/core/models/video_model.dart';
import 'package:social_network/core/widgets/unauthorized_dialog_box.dart';
import 'package:social_network/features/auth_screen/auth_screen.dart';
import 'package:social_network/features/auth_screen/widgets/page/registration_screen.dart';
import 'package:social_network/features/center/widgets/page/center_page.dart';
import 'package:social_network/features/chats/models/apps_model/apps_model.dart';
import 'package:social_network/features/chats/widget/page/chat_page.dart';
import 'package:social_network/features/chats/widget/page/chat_tab.dart';
import 'package:social_network/features/chats/widget/page/chat_with_ai.dart';
import 'package:social_network/features/chats/widget/page/content_page.dart';
import 'package:social_network/features/chats/widget/page/create_app_page.dart';
import 'package:social_network/features/chats/widget/page/custom_web_view.dart';
import 'package:social_network/features/comments/widget/page/comments_page.dart';
import 'package:social_network/features/chats/widget/page/creat_group_chat_page.dart';
import 'package:social_network/features/dating_feed_screen/dating_feed_screen.dart';
import 'package:social_network/features/edit_profile/widget/page/edit_profile_page.dart';
import 'package:social_network/features/info/widget/page/info_page.dart';
import 'package:social_network/features/interests/widget/page/interests_page.dart';
import 'package:social_network/features/profile/widgets/page/video_view_page.dart';
import 'package:social_network/market/create_advertisement/create_advertisement_screen.dart';
import 'package:social_network/market/detail_produk/widget/page/model_of_house.dart';
import 'package:social_network/market/first_menu/model/advertisement_model.dart';
import 'package:social_network/market/home_screen/home_screen_of_market.dart';
import 'package:social_network/market/map/widget/page/map_page.dart';
import 'package:social_network/features/other_profile/other_profile.dart';
import 'package:social_network/features/profile/model/user_model.dart';
import 'package:social_network/features/profile/profile_page.dart';
import 'package:social_network/features/profile/widgets/page/avatars_page.dart';
import 'package:social_network/features/site_categories/widget/page/site_categories_page.dart';

import '../../features/home_page/home_page.dart';
import '../../music/NavBar/main_menu.dart';
import 'app_router_names.dart';

class AppNotifier extends ChangeNotifier {
  bool _isAuthenticated;
  bool _isMarketPage;
  bool isCenterPage = true;
  bool secondMenuOfMarket = false;

  AppNotifier(
    this._isAuthenticated,
    this._isMarketPage,
  );

  bool get isMarketPage {
    return _isMarketPage;
  }

  void switchingToSecondMenu() {
    secondMenuOfMarket = true;
    print(secondMenuOfMarket);
    print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTPPPPPPPPPPPPPPPPPPPPPPP');
    notifyListeners();
  }

  void switchingToMarket() {
    _isMarketPage = true;
    isCenterPage = false;
    notifyListeners();
  }

  void switchingToCenterPage() {
    _isMarketPage = false;
    isCenterPage = true;
    notifyListeners();
  }

  bool get isAuthenticated {
    return _isAuthenticated;
  }

  void signIn() async {
    print('SignIn');
    _isAuthenticated = true;
    notifyListeners();
  }

  void signOut() async {
    print("SignOut");
    _isAuthenticated = false;
    notifyListeners();
  }
}

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

late AppNotifier appNotifier;
late bool isAuthenticated;

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/home',
  redirect: (BuildContext context, GoRouterState state) {
    isAuthenticated = appNotifier.isAuthenticated;
    print(state.fullPath);
    print(isAuthenticated);
    if (!isAuthenticated) {
      if (state.fullPath == '/centerTab' ||
          state.fullPath == '/chatTab' ||
          state.fullPath == '/userProfile') {
        return '/registrationPage/authPage';
      } else if (state.fullPath == '/registrationPage/authPage') {
        return '/registrationPage/authPage';
      } else if (state.fullPath == '/home') {
        return '/home';
      } else if (state.fullPath == '/datingFeedScreen') {
        return '/datingFeedScreen';
      }
    } else if (isAuthenticated &&
            state.fullPath == '/registrationPage/authPage' ||
        state.fullPath == '/registrationPage') {
      return '/home';
    }

    return null;
  },
  refreshListenable: appNotifier,
  // Подписка на изменения
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state,
          StatefulNavigationShell navigationShell) {
        return CustomBottomNavBar(
          navigationShell: navigationShell,
          child: navigationShell,
        );
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: AppRouterNames.home,
              path: '/home',
              builder: (BuildContext context, GoRouterState state) =>
                  HomePage(isAuthenticated: isAuthenticated),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: AppRouterNames.datingFeedScreen,
              path: '/datingFeedScreen',
              builder: (BuildContext context, GoRouterState state) =>
                  DatingFeedScreen(isAuthenticated: isAuthenticated),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: AppRouterNames.centerTab,
              path: '/centerTab',
              redirect: (BuildContext context, GoRouterState state) {
                if (appNotifier.isMarketPage) {
                  if (appNotifier.secondMenuOfMarket) {
                    return '/centerTab/secondMenuOfMarket';
                  }
                  return '/centerTab/marketPage';
                } else if (appNotifier.isCenterPage) {
                  return '/centerTab/addVideo';
                }
                return null;
              },
              builder: (BuildContext context, GoRouterState state) {
                return isAuthenticated
                    ? appNotifier.isMarketPage
                        ? appNotifier.secondMenuOfMarket
                            ? const CreateAdvertisementScreen()
                            : const HomeScreenOfMarket()
                        : const CenterPage()
                    : const UnauthorizedDialogPage();
              },
              routes: [
                GoRoute(
                  path: 'marketPage',
                  name: AppRouterNames.marketPage,
                  builder: (BuildContext context, GoRouterState state) =>
                      const HomeScreenOfMarket(),
                ),
                GoRoute(
                  path: 'secondMenuOfMarket',
                  name: AppRouterNames.secondMenuOfMarket,
                  builder: (BuildContext context, GoRouterState state) =>
                      const CreateAdvertisementScreen(),
                ),
                GoRoute(
                  path: 'addVideo',
                  name: AppRouterNames.addVideo,
                  builder: (BuildContext context, GoRouterState state) =>
                      const CenterPage(),
                ),
                // GoRoute(
                //   path: 'addVideo',
                //   name: AppRouterNames.addVideo,
                //   builder: (BuildContext context, GoRouterState state) =>
                //   const CenterPage(),
                // ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: AppRouterNames.chatTab,
              path: '/chatTab',
              builder: (BuildContext context, GoRouterState state) {
                return const ChatTab();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: AppRouterNames.userProfile,
              path: '/userProfile',
              builder: (BuildContext context, GoRouterState state) {
                return const ProfilePage();
              },
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/interestPage',
      name: AppRouterNames.interestsPage,
      builder: (BuildContext context, GoRouterState state) =>
          const InterestsPage(),
    ),
    GoRoute(
      path: '/modelOfHouse/:exchangeRate/:currency',
      name: AppRouterNames.modelOfHouse,
      builder: (BuildContext context, GoRouterState state) {
        return ModelOfHouse(
          advertisementModel: state.extra as AdvertisementModel,
          exchangeRate: state.pathParameters['exchangeRate'] as String,
          currency: state.pathParameters['currency'] as String,
        );
      },
    ),
    GoRoute(
      path: '/siteCategories',
      name: AppRouterNames.siteCategories,
      builder: (BuildContext context, GoRouterState state) =>
          const SiteCategoriesPage(),
    ),
    GoRoute(
      path: '/videoView',
      name: AppRouterNames.videoView,
      builder: (BuildContext context, GoRouterState state) =>
          VideoViewPage(listOfVideo: state.extra as List<Video>),
    ),
    GoRoute(
      path: '/infoPage',
      name: AppRouterNames.infoPage,
      builder: (BuildContext context, GoRouterState state) =>
          InfoPage(birthDate: state.extra as String),
    ),
    // GoRoute(
    //   path: '/customWebView',
    //   name: AppRouterNames.customWebView,
    //   builder: (BuildContext context, GoRouterState state) {
    //     AppModel appModel = state.extra as AppModel;
    //     return CustomWebView(appModel: appModel);
    //   },
    // ),
    GoRoute(
      path: '/customWebView',
      name: AppRouterNames.customWebView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        AppModel appModel = state.extra as AppModel;

        return CustomTransitionPage(
          child: CustomWebView(appModel: appModel),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0); // Начальная позиция (снизу экрана)
            const end = Offset.zero; // Конечная позиция (на экране)
            const curve = Curves.easeInOut; // Кривая анимации

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
          transitionDuration: Duration(milliseconds: 600),
          reverseTransitionDuration: Duration(milliseconds: 600),
        );
      },
    ),

    GoRoute(
      path: '/avatarsPage',
      name: AppRouterNames.avatarsPage,
      builder: (BuildContext context, GoRouterState state) {
        List<AvatarImage> avatars = state.extra as List<AvatarImage>;
        return AvatarsPage(profilePictures: avatars);
      },
    ),
    GoRoute(
      path: '/chatsDetail/:type_of_chat/:user_name',
      name: AppRouterNames.chatsDetail,
      builder: (BuildContext context, GoRouterState state) {
        int chatId = state.extra as int;
        String typeOfChat = state.pathParameters['type_of_chat'] as String;
        String userName = state.pathParameters['user_name'] as String;
        return ChatScreen(
          chatId: chatId,
          typeOfChat: typeOfChat,
          userName: userName,
        );
      },
    ),
    GoRoute(
      path: '/content',
      name: AppRouterNames.content,
      builder: (BuildContext context, GoRouterState state) {
        String pathToImage = state.extra as String;
        return ContentPage(pathToImage: pathToImage);
      },
    ),
    GoRoute(
      path: '/commentsPage',
      name: AppRouterNames.commentsPage,
      builder: (BuildContext context, GoRouterState state) {
        int videoId = state.extra as int;
        return CommentsPage(videoId: videoId);
      },
    ),
    GoRoute(
      path: '/registrationPage',
      name: AppRouterNames.registrationPage,
      builder: (BuildContext context, GoRouterState state) =>
          RegistrationScreen(),
      routes: [
        GoRoute(
          path: 'authPage',
          name: AppRouterNames.authPage,
          builder: (BuildContext context, GoRouterState state) =>
              const AuthScreen(),
        ),
      ],
    ),
    GoRoute(
      name: AppRouterNames.otherProfile,
      path: '/otherProfile',
      builder: (BuildContext context, GoRouterState state) {
        int userId = state.extra as int;
        return OtherProfilePage(userId: userId);
      },
    ),
    GoRoute(
      name: AppRouterNames.createGroupChat,
      path: '/createGroupChat',
      builder: (BuildContext context, GoRouterState state) {
        return const CreateGroupChatPage();
      },
    ),
    GoRoute(
      name: AppRouterNames.createApp,
      path: '/createApp',
      builder: (BuildContext context, GoRouterState state) {
        return const CreateAppPage();
      },
    ),
    GoRoute(
      name: AppRouterNames.editProfile,
      path: '/editProfile',
      builder: (BuildContext context, GoRouterState state) {
        return const EditProfilePage();
      },
    ),
    GoRoute(
      name: AppRouterNames.mapPage,
      path: '/mapPage',
      builder: (BuildContext context, GoRouterState state) {
        return MapPage(cityName: state.extra as String);
      },
    ),
    GoRoute(
      name: AppRouterNames.chatWithAi,
      path: '/chatWithAi',
      builder: (BuildContext context, GoRouterState state) {
        return ChatWithAiScreen();
      },
    ),
    GoRoute(
      name: AppRouterNames.unauthorizedDialog,
      path: '/unauthorizedDialog',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const UnauthorizedDialogPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0); // Анимация снизу вверх
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      name: AppRouterNames.navBarMusic,
      path: '/music',
      builder: (context, state) => MainMusicScreen(),
    ),
  ],
);


final List<String> buttonTitles = [
  'Music',
  'Chess',
  'Cloud',
  'Concert',
  'Course',
  'Cryptology',
  'Exchange',
  'Flight',
  'Island',
  'Learning',
  'Market',
  'Meditation',
  'Movies',
  'NP',
  'NW',
  'Taxi',
  'Editor',
  'VPS',
  'Wallet'
];

// 2. Список путей для навигации
final List<String> screensPaths = [
  '/music',
  '/chess',
  '/cloud',
  '/map',
  '/course',
  '/cryptology',
  '/exchange',
  '/flight',
  '/start',
  '/learning',
  '/market',
  '/meditation',
  '/movies',
  '/browser',
  '/nwapp',
  '/taxi',
  '/editor',
  '/vps',
  '/wallet',
];

// final List<Widget> screensWidget = [
//   // ChessApp(),
//   // MainScreenCloud(),
//   // MapView(),
//   // OnboardingCourseScreen(),
//   // OnboardingCryptology(),
//   // MainScreenExchange(),
//   // MainMenuScreenFlight(),
//   // StartScreen(),
//   // OnboardingLearning(),
//   // MainScreenMarket(),
//   // MeditationApp(),
//   // AppMovies(),
//   // MainScreenBrowser(),
//   // NWApp(),
//   // TaxiApp(),
//   // EditorApp(),
//   // AppVps(),
//   // OnboardingScreenWallet(),
//
// ];

final List<List<Color>> gradientColors = [
  [Colors.red, Colors.orange],
  [Colors.blue, Colors.green],
  [Colors.purple, Colors.pink],
  [Colors.teal, Colors.cyan],
  [Colors.amber, Colors.deepOrange],
  [Colors.indigo, Colors.blueAccent],
  [Colors.lightGreen, Colors.lime],
  [Colors.deepPurple, Colors.purpleAccent],
  [Colors.blueGrey, Colors.grey],
  [Colors.brown, Colors.orange],
  [Colors.green, Colors.lightGreen],
  [Colors.pink, Colors.redAccent],
  [Colors.cyan, Colors.tealAccent],
  [Colors.orange, Colors.amber],
  [Colors.purple, Colors.deepPurple],
  [Colors.lime, Colors.yellow],
  [Colors.teal, Colors.blue],
  [Colors.red, Colors.pink],
  [Colors.red, Colors.orange],
];




void openFullScreenModal(BuildContext context) {
  final router = GoRouter.of(context);
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return StatefulBuilder(builder: (context, setState) {
        return DraggableScrollableSheet(
            initialChildSize: 0.5,
            minChildSize: 0.3,
            maxChildSize: 0.9,
            snap: true,
            snapSizes: const [0.3, 0.5, 0.9],
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 16.0,
                    left: 16,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 40,
                        height: 5,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Expanded(
                        child: GridView.builder(
                          controller: scrollController,
                          shrinkWrap: true,
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.8,
                          ),
                          itemCount: screensPaths.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                HapticFeedback.lightImpact();
                                router.pushReplacement(
                                  screensPaths[index], // Ваши пути из GoRouter
                                  // extra: {            // Дополнительные параметры если нужно
                                  //   'index': index,
                                  //   'title': buttonTitles[index],
                                  // },
                                );
                                Navigator.pop(context);
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        gradient: LinearGradient(
                                          colors: gradientColors[index],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    buttonTitles[index],
                                    style: const TextStyle(fontSize: 14),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      });
    },
  );
}
