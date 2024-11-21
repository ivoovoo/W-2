part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitialState;

  const factory HomeState.loadInProgress() = HomeLoadInProgressState;

  const factory HomeState.loadSuccess(VideoResponse listOfAccounts) =
      HomeLoadSuccessState;

  const factory HomeState.loadFailure(String error) = HomeLoadFailureState;
}
