import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_network/core/router/app_router.dart';
import 'package:social_network/features/home_page/data_provider/home_data_provider.dart';
import 'package:social_network/features/home_page/logic/home_bloc.dart';
import 'package:social_network/features/home_page/repository/home_repository.dart';
import 'data.dart';

void main() {
  return runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (BuildContext context) => HomeBloc(
          HomeRepository(homeDataProvider: HomeDataProvider()),
        )..add(const HomeEventInit()),
      ),
      BlocProvider<HomeScreenAndProfileScreenCubit>(
          create: (BuildContext context) => HomeScreenAndProfileScreenCubit()),
      BlocProvider<HomeScreenCubit>(
          create: (BuildContext context) => HomeScreenCubit()),
      BlocProvider<ProfileCubit>(
          create: (BuildContext context) => ProfileCubit())
    ],
    child: TranslationProvider(child: const MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        locale: TranslationProvider.of(context).flutterLocale,
      ),
    );
  }
}
