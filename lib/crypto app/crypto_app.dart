import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_network/crypto%20app/navigation/main_bar.dart';

import '../features/profile/logic/profile_bloc.dart';
import '../features/profile/repository/profile_repository.dart';

class CryptoApp extends StatelessWidget {
  const CryptoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => ProfileBloc(RepositoryProvider.of<ProfileRepository>(context),), // Создаем экземпляр ProfileBloc
      child: MaterialApp(
        home: MainScreenExchange(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}