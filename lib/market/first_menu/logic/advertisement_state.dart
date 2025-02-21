part of 'advertisement_bloc.dart';

@freezed
class AdvertisementState with _$AdvertisementState {
  const factory AdvertisementState.initial() = AdvertisementInitialState;

  const factory AdvertisementState.loadInProgress() =
      AdvertisementLoadInProgressState;

  const factory AdvertisementState.loadSuccess(
      AdvertisementResponse advertisements) = AdvertisementLoadSuccessState;

  const factory AdvertisementState.loadFailure(String error) =
      AdvertisementLoadFailureState;
}
