part of 'interests_bloc.dart';

@freezed
class InterestsState with _$InterestsState {
  const factory InterestsState.initial() = InterestsInitialState;

  const factory InterestsState.loadInProgress() = InterestsLoadInProgressState;

  const factory InterestsState.loadSuccess(InterestResponse interests) =
      InterestsLoadSuccessState;

  const factory InterestsState.loadFailure(String error) =
      InterestsLoadFailureState;
}
