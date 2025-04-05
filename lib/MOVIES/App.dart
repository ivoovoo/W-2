import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Movie_BLoC/movie_bloc.dart';
import 'Navigation_BLoC/navigation_bloc.dart';
import 'Ui/project.dart';

class AppMovies extends StatelessWidget {
  const AppMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => NavigationBloc()),
          BlocProvider(create: (context) => FilmBloc()
              // .add(LoadMovies())
          ),
        ],
        child: Project(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
