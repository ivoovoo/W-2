import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/profile/logic/profile_bloc.dart';
import '../features/profile/repository/profile_repository.dart';
import 'Components/game_board.dart';

class ChessApp extends StatelessWidget {
  const ChessApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => ProfileBloc(RepositoryProvider.of<ProfileRepository>(context),), // Создаем экземпляр ProfileBloc
      child: MaterialApp(
        home: GameBoard(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
