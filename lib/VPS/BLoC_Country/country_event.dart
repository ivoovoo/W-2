abstract class CountryEvent {}

class SetCountry extends CountryEvent {
  int countryId;

  SetCountry({
    required this.countryId,
});
}