import 'package:flutter_bloc/flutter_bloc.dart';

import 'country_event.dart';
import 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryBloc() : super(CountryState(countryId: 4)) {
    on<SetCountry>((event, emit) {
      emit(CountryState(countryId: event.countryId));
    });
  }
}