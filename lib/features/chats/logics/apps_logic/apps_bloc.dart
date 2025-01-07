import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/features/chats/models/apps_model/apps_model.dart';
import 'package:social_network/features/chats/repositories/apps_repository/apps_repository.dart';

part 'apps_event.dart';
part 'apps_state.dart';
part 'apps_bloc.freezed.dart';

class AppsBloc extends Bloc<AppsEvent, AppsState> {
  final AppsRepository appsRepository;
  AppsBloc(this.appsRepository) : super(const AppsState.initial()) {
    on<AppsEvent>((event, emit) async {
      await event.map(
        init: (initEvent) async {
          emit(const AppsState.loadInProgress());
          try {
            final response = await appsRepository.getApps();

            emit(AppsState.loadSuccess(response));
          } catch (e) {
            emit(AppsState.loadFailure(e.toString()));
          }
        },
        createApp: (createGroupChatEvent) async {
          emit(const AppsState.loadInProgress());
          // var userId = await appsRepository.getUserId();
          try {
            // final data = {
            //   "name": createGroupChatEvent.groupName,
            //   "description": createGroupChatEvent.description,
            //   "url": createGroupChatEvent.url,
            //   "user": userId,
            //   "category_site": []
            // };

            print("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD");
            print(createGroupChatEvent.formDataApp.toString());
            final response = await appsRepository
                .createApp(createGroupChatEvent.formDataApp);

            emit(AppsState.loadSuccess(response));
          } catch (e) {
            emit(AppsState.loadFailure(e.toString()));
          }
        },
      );
    });
  }
}
