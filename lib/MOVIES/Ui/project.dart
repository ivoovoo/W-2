import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Video Editor/UI/home.dart';
import '../Navigation_BLoC/navigation_bloc.dart';
import '../Navigation_BLoC/navigation_state.dart';
import 'list_of_films.dart';
import 'stack.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        if (state is NavigateToScreenA) {
          return const HomeWidget();
        } else if (state is NavigateToScreenB) {
          return  FilmScreen();
        }
        else if (state is NavigateToScreenC) {
          return const ListOfFilms();
        }
        return const Center(
          child: Text('error'),
        );
      },
    );
  }
}