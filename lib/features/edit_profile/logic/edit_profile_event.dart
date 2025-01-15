part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.init() = EditProfileInitEvent;

  const factory EditProfileEvent.setBirthday(String birthday) =
      EditProfileSetBirthdayEvent;
}
