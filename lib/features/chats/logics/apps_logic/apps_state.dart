part of 'apps_bloc.dart';

@freezed
class AppsState with _$AppsState {
  const factory AppsState.initial() = AppsInitialState;

  const factory AppsState.loadInProgress() = AppsLoadInProgressState;

  const factory AppsState.loadSuccess(AppsModel apps) = AppsLoadSuccessState;

  const factory AppsState.loadFailure(String error) = AppsLoadFailureState;
}
