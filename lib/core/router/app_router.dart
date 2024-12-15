import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/core/core.dart';
import 'package:social_network/core/utils/token_funcs.dart';
import 'package:social_network/features/auth_screen/auth_screen.dart';
import 'package:social_network/features/auth_screen/widgets/page/registration_screen.dart';
import 'package:social_network/features/center/widgets/page/center_page.dart';
import 'package:social_network/features/chats/widget/page/chat_page.dart';
import 'package:social_network/features/chats/widget/page/chats_page.dart';
import 'package:social_network/features/chats/widget/page/content_page.dart';
import 'package:social_network/features/comments/widget/page/comments_page.dart';
import 'package:social_network/features/dating_feed_screen/dating_feed_screen.dart';
import 'package:social_network/features/interests/widget/page/interests_page.dart';
import 'package:social_network/features/other_profile/other_profile.dart';
import 'package:social_network/features/profile_page/profile_page.dart';

import '../../features/home_page/home_page.dart';
import 'app_router_names.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

late AuthNotifier authNotifier;

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/registrationPage/authPage',
  redirect: (BuildContext context, GoRouterState state) {
    final isAuthenticated = authNotifier.isAuthenticated;

    if (!isAuthenticated && state.fullPath != '/registrationPage/authPage') {
      return '/registrationPage/authPage';
    }

    if (isAuthenticated && state.fullPath == '/registrationPage/authPage') {
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
                  HomePage(),
              routes: [
                GoRoute(
                  name: AppRouterNames.otherProfile,
                  path: 'otherProfile',
                  builder: (BuildContext context, GoRouterState state) {
                    int userId = state.extra as int;
                    return OtherProfilePage(userId: userId);
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: AppRouterNames.datingFeedScreen,
              path: '/datingFeedScreen',
              builder: (BuildContext context, GoRouterState state) =>
                  const DatingFeedScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: AppRouterNames.centerTab,
              path: '/centerTab',
              builder: (BuildContext context, GoRouterState state) {
                return const CenterPage();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: AppRouterNames.chats,
              path: '/chats',
              builder: (BuildContext context, GoRouterState state) =>
                  const ChatsPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: AppRouterNames.userProfile,
              path: '/userProfile',
              builder: (BuildContext context, GoRouterState state) =>
                  const ProfilePage(),
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
          builder: (BuildContext context, GoRouterState state) => AuthScreen(),
        ),
      ],
    ),
  ],
);
