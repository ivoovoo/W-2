part of 'announcement_bloc.dart';

@freezed
class AnnouncementState with _$AnnouncementState {
  const factory AnnouncementState.initial() = AnnouncementInitialState;

  const factory AnnouncementState.loadInProgress() =
      AnnouncementLoadInProgressState;

  const factory AnnouncementState.loadSuccess(
      AnnouncementResponse announcements) = AnnouncementLoadSuccessState;

  const factory AnnouncementState.loadFailure(String error) =
      AnnouncementLoadFailureState;
}
