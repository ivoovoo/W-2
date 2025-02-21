part of 'create_advertisement_bloc.dart';

@freezed
class CreateAdvertisementState with _$CreateAdvertisementState {
  const factory CreateAdvertisementState.initial() =
      CreateAdvertisementInitialState;

  const factory CreateAdvertisementState.loadInProgress() =
      CreateAdvertisementLoadInProgressState;

  const factory CreateAdvertisementState.loadSuccess(dynamic response) =
      CreateAdvertisementLoadSuccessState;

  const factory CreateAdvertisementState.loadFailure(String error) =
      CreateAdvertisementLoadFailureState;
}
