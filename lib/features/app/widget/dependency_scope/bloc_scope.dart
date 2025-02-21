import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:social_network/core/blocs/keyboard_cubit/keyboard_cubit.dart';
import 'package:social_network/core/core.dart';
import 'package:social_network/core/language/language_bloc.dart';
import 'package:social_network/features/chats/logics/apps_logic/apps_bloc.dart';
import 'package:social_network/features/chats/logics/groups_logic/groups_bloc.dart';
import 'package:social_network/features/chats/repositories/apps_repository/apps_repository.dart';
import 'package:social_network/features/chats/repositories/groups_repository/groups_repository.dart';
import 'package:social_network/features/home_page/logic/home_bloc.dart';
import 'package:social_network/features/home_page/repository/home_repository.dart';
import 'package:social_network/features/profile/logic/profile_bloc.dart';
import 'package:social_network/features/profile/repository/profile_repository.dart';
import 'package:social_network/market/create_advertisement/notifiers/notifier_of_menu.dart';

class BlocScope extends StatelessWidget {
  const BlocScope({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NotifierOfMenu()),
        BlocProvider<LanguageBloc>(
          create: (context) =>
              LanguageBloc(context.read<ILocalStorageDataProvider>())
                ..add(const LanguageEvent.init()),
        ),
        BlocProvider(
          lazy: false,
          create: (BuildContext context) => HomeBloc(
            context.read<HomeRepository>(),
          )..add(const HomeEventInit()),
        ),
        BlocProvider<KeyboardCubit>(
            create: (BuildContext context) => KeyboardCubit()),
        BlocProvider<HomeScreenAndProfileScreenCubit>(
            create: (BuildContext context) =>
                HomeScreenAndProfileScreenCubit()),
        BlocProvider<HomeScreenCubit>(
            create: (BuildContext context) => HomeScreenCubit()),
        BlocProvider<ProfileCubit>(
            create: (BuildContext context) => ProfileCubit()),
        BlocProvider<GroupsBloc>(
          create: (BuildContext context) => GroupsBloc(
            context.read<GroupsRepository>(),
          )..add(const GroupsEvent.init()),
        ),
        BlocProvider<AppsBloc>(
          create: (BuildContext context) => AppsBloc(
            context.read<AppsRepository>(),
          )..add(const AppsEvent.init()),
        ),
        BlocProvider<ProfileBloc>(
          create: (BuildContext context) => ProfileBloc(
            context.read<ProfileRepository>(),
          ),
        ),
      ],
      child: child,
    );
  }
}
