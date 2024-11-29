import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/core/core.dart';
import 'package:social_network/core/utils/token_funcs.dart';
import 'package:social_network/features/auth_screen/auth_screen.dart';
import 'package:social_network/features/auth_screen/widgets/page/registration_screen.dart';
import 'package:social_network/features/chats/widget/page/chat_page.dart';
import 'package:social_network/features/chats/widget/page/chats_page.dart';
import 'package:social_network/features/comments/widget/page/comments_page.dart';
import 'package:social_network/features/dating_feed_screen/dating_feed_screen.dart';
import 'package:social_network/features/interests/widget/page/interests_page.dart';
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
  refreshListenable: authNotifier, // Подписка на изменения
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
                  builder: (BuildContext context, GoRouterState state) =>
                      const ProfilePage(),
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
              builder: (BuildContext context, GoRouterState state) => Container(
                color: Colors.green,
                child: const Center(
                  child: Text('Main'),
                ),
              ),
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
      path: '/chatsDetail',
      name: AppRouterNames.chatsDetail,
      builder: (BuildContext context, GoRouterState state) {
        int chatId = state.extra as int;
        return ChatScreen(chatId: chatId);
      },
    ),
    GoRoute(
      path: '/commentsPage',
      name: AppRouterNames.commentsPage,
      builder: (BuildContext context, GoRouterState state) => CommentsPage(),
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
