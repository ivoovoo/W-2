import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../BLoC/bloc.dart';
import '../BLoC/bloc_state.dart';
import '../Widgets/countries.dart';
import '../Widgets/on_off_widget.dart';
import '../Widgets/subscription.dart';

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        if (state is NavigateToScreenA) {
          return const OnOffWidget();
        } else if (state is NavigateToScreenB) {
          return const Countries();
        } else if (state is NavigateToScreenC) {
          return const Subscription();
        }
        return const Center(
          child: Text('error'),
        );
      },
    );
  }
}