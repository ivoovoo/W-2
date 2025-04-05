import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Movie_BLoC/movie_bloc.dart';
import '../Movie_BLoC/movie_state.dart';
import '../Models/row_column.dart';
import '../Widgets/nav_bar.dart';

class FilmScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FilmBloc, FilmState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          final film = state.films;

          return Stack(
            children: [
              PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: film.length,
                itemBuilder: (context, index) {
                  return FilmsColumn(film: film[index]);
                },
              ),
              const Positioned(
                bottom: 44,
                left: 0,
                right: 0,
                child: Center(child: NavBarWidget()),
              ),
              Positioned(
                right: 5,
                bottom: 100,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset('assets/like.svg'),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset('assets/list.svg'),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset('assets/play.svg'),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

