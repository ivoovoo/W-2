import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/core/core.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/features/edit_profile/repository/edit_profile_repository.dart';

part 'edit_profile_event.dart';

part 'edit_profile_state.dart';

part 'edit_profile_bloc.freezed.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileRepository editProfileRepository;
  ILocalStorageDataProvider localStorageDataProvider;

  EditProfileBloc({
    required this.editProfileRepository,
    required this.localStorageDataProvider,
  }) : super(const EditProfileState.initial()) {
    on<EditProfileEvent>(
      (event, emit) => event.map(
        init: (event) => _onInit(emit),
        setBirthday: (event) => _onSetBirthday(event, emit),
      ),
    );
  }

  Future<void> _onInit(Emitter<EditProfileState> emit) async {
    emit(const EditProfileState.loadInProgress());
    try {
      String? birthday =
          localStorageDataProvider.getString(LocalStorageKeys.userBirthday);
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(EditProfileState.loadSuccess(birthday));
    } catch (e) {
      emit(
        EditProfileState.loadFailure(e.toString()),
      );
    }
  }

  Future<void> _onSetBirthday(
      EditProfileSetBirthdayEvent event, Emitter<EditProfileState> emit) async {
    emit(const EditProfileState.loadInProgress());
    try {
      int userId = localStorageDataProvider.getInt(LocalStorageKeys.userId)!;
      String token =
          localStorageDataProvider.getString(LocalStorageKeys.authToken)!;
      String csrfToken =
          localStorageDataProvider.getString(LocalStorageKeys.csrfToken)!;
      print(event.birthday);
      Map<String, String> birthday = {"birth_date": event.birthday};
      final responseModel = await editProfileRepository.setBirthday(
        birthday,
        userId,
        token,
        csrfToken,
      );
      await localStorageDataProvider.setString(
        LocalStorageKeys.userBirthday,
        event.birthday,
      );
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(EditProfileState.loadSuccess(event.birthday));
    } catch (e) {
      print("BLOC ERROR BIRTHDAY");
      emit(
        EditProfileState.loadFailure(e.toString()),
      );
    }
  }
}
