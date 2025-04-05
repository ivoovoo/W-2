import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Video_BLoC/video_bloc.dart';

import 'Nav_BLoC/nav_bloc.dart';
import 'UI/project.dart';

class EditorApp extends StatelessWidget {
  const EditorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => NavigationBloc()),
          // BlocProvider(create: (context) => VideoBloc()),
        ],
        child: Project(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}