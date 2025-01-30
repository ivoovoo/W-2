import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/core/core.dart';
import 'package:social_network/core/widgets/unauthorized_dialog_box.dart';
import 'package:social_network/features/auth_screen/auth_screen.dart';
import 'package:social_network/features/auth_screen/widgets/page/registration_screen.dart';
import 'package:social_network/features/center/widgets/page/center_page.dart';
import 'package:social_network/features/chats/models/apps_model/apps_model.dart';
import 'package:social_network/features/chats/widget/page/chat_page.dart';
import 'package:social_network/features/chats/widget/page/chat_tab.dart';
import 'package:social_network/features/chats/widget/page/content_page.dart';
import 'package:social_network/features/chats/widget/page/create_app_page.dart';
import 'package:social_network/features/chats/widget/page/custom_web_view.dart';
import 'package:social_network/features/comments/widget/page/comments_page.dart';
import 'package:social_network/features/chats/widget/page/creat_group_chat_page.dart';
import 'package:social_network/features/dating_feed_screen/dating_feed_screen.dart';
import 'package:social_network/features/edit_profile/widget/page/edit_profile_page.dart';
import 'package:social_network/features/interests/widget/page/interests_page.dart';
import 'package:social_network/market/detail_produk/widget/page/model_of_house.dart';
import 'package:social_network/market/first_menu/model/announcement_model.dart';
import 'package:social_network/market/map/widget/page/map_page.dart';
import 'package:social_network/market/second_menu/widget/page/second_menu.dart';
import 'package:social_network/features/other_profile/other_profile.dart';
import 'package:social_network/features/profile/model/user_model.dart';
import 'package:social_network/features/profile/profile_page.dart';
import 'package:social_network/features/profile/widgets/page/avatars_page.dart';
import 'package:social_network/features/site_categories/widget/page/site_categories_page.dart';

import '../../features/home_page/home_page.dart';
import '../../market/first_menu/widget/page/first_menu.dart';
import 'app_router_names.dart';

class AuthNotifier extends ChangeNotifier {
  bool _isAuthenticated;
  bool _isMarketPage;
  bool? isCenterPage;
  bool? secondMenuOfMarket;

  AuthNotifier(
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

late AuthNotifier authNotifier;
late bool isAuthenticated;

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/home',
  redirect: (BuildContext context, GoRouterState state) {
    isAuthenticated = authNotifier.isAuthenticated;
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
  refreshListenable: authNotifier,
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
                if (authNotifier.isMarketPage) {
                  if (authNotifier.secondMenuOfMarket ?? false) {
                    return '/centerTab/secondMenuOfMarket';
                  }
                  return '/centerTab/marketPage';
                } else if (authNotifier.isCenterPage ?? false) {
                  return '/centerTab/addVideo';
                }
                return null;
              },
              builder: (BuildContext context, GoRouterState state) {
                print('ssssssssssssssssssssss ${authNotifier.isMarketPage}');
                return isAuthenticated
                    ? const CenterPage()
                    : const UnauthorizedDialogPage();
              },
              routes: [
                GoRoute(
                  path: 'marketPage',
                  name: AppRouterNames.marketPage,
                  builder: (BuildContext context, GoRouterState state) =>
                      const FirstMenuScreen(),
                ),
                GoRoute(
                  path: 'secondMenuOfMarket',
                  name: AppRouterNames.secondMenuOfMarket,
                  builder: (BuildContext context, GoRouterState state) =>
                      const SecondMenuScreen(),
                ),
                GoRoute(
                  path: 'addVideo',
                  name: AppRouterNames.addVideo,
                  builder: (BuildContext context, GoRouterState state) =>
                      const CenterPage(),
                ),
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
      path: '/modelOfHouse',
      name: AppRouterNames.modelOfHouse,
      builder: (BuildContext context, GoRouterState state) {
        return ModelOfHouse(
            announcementModel: state.extra as AnnouncementModel);
      },
    ),
    GoRoute(
      path: '/siteCategories',
      name: AppRouterNames.siteCategories,
      builder: (BuildContext context, GoRouterState state) =>
          const SiteCategoriesPage(),
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
        return const MapPage();
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
  ],
);
