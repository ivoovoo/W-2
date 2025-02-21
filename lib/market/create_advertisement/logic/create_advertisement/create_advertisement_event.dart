part of 'create_advertisement_bloc.dart';

@freezed
class CreateAdvertisementEvent with _$CreateAdvertisementEvent {
  const factory CreateAdvertisementEvent.createAdvertisement(FormData data) =
      EventCreateAdvertisement;
}
