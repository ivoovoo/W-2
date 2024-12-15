part of 'other_profile_bloc.dart';

@freezed
class OtherProfileState with _$OtherProfileState {
  const factory OtherProfileState.initial() = OtherProfileInitialState;

  const factory OtherProfileState.loadInProgress() =
      OtherProfileLoadInProgressState;

  const factory OtherProfileState.loadSuccess(UserModel? user,
      [String? subscriptionResponse]) = OtherProfileLoadSuccessState;

  const factory OtherProfileState.loadFailure(String error) =
      OtherProfileLoadFailureState;
}
