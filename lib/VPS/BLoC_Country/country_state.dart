class CountryState {
  int countryId;

  CountryState({
    required this.countryId,
  });

  CountryState copyWith(
    int countryId,
  ) {
    return CountryState(
      countryId: countryId,
    );
  }
}
