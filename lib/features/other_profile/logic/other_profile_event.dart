part of 'other_profile_bloc.dart';

@freezed
class OtherProfileEvent with _$OtherProfileEvent {
  const factory OtherProfileEvent.init(int otherUserId) = OtherProfileEventInit;

  const factory OtherProfileEvent.subscribe(int otherUserId) =
      OtherProfileEventSubscribe;

  const factory OtherProfileEvent.unsubscribe(int otherUserId) =
      OtherProfileEventUnsubscribe;
}
