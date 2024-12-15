import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:social_network/core/core.dart';
// import 'package:social_network/core/models/person_profile.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileeState> {
  ProfileCubit() : super(ProfileInitial());

  User user = User(
    id: 1,
    nickname: 'username',
    age: 18,
    shortDescription: 'I am good!',
    mediaList: [],
  );

  void setChosenStatesToFilterElement(int index) {
    // CustomFilterElements.setChosenFilterElement(index);
    user.filters.setChosenFilterElement(index);
    emit(ProfileInitial());
  }

  void setChosenStatesToSubcategory(int categoryIndex, int subIndex) {
    // CustomFilterElements.setChosenSubcategory(index, subIndex);
    user.filters.setChosenSubcategory(categoryIndex, subIndex);
    emit(ProfileInitial());
  }
}
