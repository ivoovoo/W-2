part of 'users_bloc.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const factory UsersEvent.init({
    String? interest,
    int? age_min,
    int? age_max,
    int? city,
  }) = UsersEventInit;
}
