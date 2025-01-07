part of 'apps_bloc.dart';

@freezed
class AppsEvent with _$AppsEvent {
  const factory AppsEvent.init() = AppsEventInit;

  const factory AppsEvent.createApp({
    required dynamic formDataApp,
    // required String groupName,
    // required String description,
    // required String url,
  }) = CreateAppEvent;
}
