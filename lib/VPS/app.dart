import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'BLoC/bloc.dart';
import 'BLoC_Country/country_bloc.dart';
import 'UI/project.dart';

class AppVps extends StatelessWidget {
  const AppVps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => NavigationBloc()),
            BlocProvider(create: (context) => CountryBloc()),
          ],
          child: Project(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
