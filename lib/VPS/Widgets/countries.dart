import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../BLoC/bloc.dart';
import '../BLoC/bloc_events.dart';
import '../BLoC_Country/country_bloc.dart';
import '../BLoC_Country/country_event.dart';
import '../BLoC_Country/country_state.dart';
import '../Models/country_model.dart';
import '../Models/model_model.dart';
import '../Models/nav_bar_model.dart';
import '../Models/row_model.dart';

class Countries extends StatefulWidget {
  const Countries({
    super.key,
  });

  @override
  State<Countries> createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  int? _selectedOption;

  @override
  void initState() {
    _selectedOption = context.read<CountryBloc>().state.countryId;
  }

  void _updateSelectedOption(int? value) {
    setState(() {
      _selectedOption = value;
    });
    if (context.read<CountryBloc>().state.countryId != _selectedOption) {
      context
          .read<CountryBloc>()
          .add(SetCountry(countryId: _selectedOption!));
    }
    context.read<NavigationBloc>().add(GoToScreenA());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryBloc, CountryState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: RowWidget(),
              ),
              Expanded(
                child: ListView(
                  children: [
                    for (int i = 0; i < listOfCountries.length; i++)
                      RadioListTile(
                        title: CountryModel(
                          countryImage: listOfCountries[i].flag,
                          text: listOfCountries[i].name,
                          status: 'assets/signal 1.svg',
                        ),
                        value: i,
                        groupValue: _selectedOption,
                        onChanged: _updateSelectedOption,
                      ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: NavBarModel(),
                  )),
            ],
          ),
        );
      },
    );
  }
}
