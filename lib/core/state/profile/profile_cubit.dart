import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:social_network/core/core.dart';
// import 'package:social_network/core/models/person_profile.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  User user = User(
    id: 1,
    nickname: 'username',
    age: 18,
    shortDescription: 'I am good!',
    mediaList: [],
  );

  List<Account> homeProfiles = [
    Account(
      id: 2,
      nickname: '@kkotovaa',
      age: 21,
      shortDescription: 'hi',
      mediaList: [
        Media(
          id: 23,
          mediaPath: Assets.videos.a1,
          thumbnail: 'assets/images/image_of_video2.jpg',
          likes: 1232,
          views: 15,
        ),
      ],
    ),
    Account(
      id: 3,
      nickname: '@tinykitty',
      age: 23,
      shortDescription: 'qwr',
      mediaList: [
        Media(
          id: 43,
          mediaPath: Assets.videos.a2,
          thumbnail: 'assets/images/image_of_video1.jpg',
          likes: 32,
          views: 32,
        ),
      ],
    )
  ];

  List<Account> datingFeedProfiles = [
    Account(
        id: 3,
        nickname: 'Tanya',
        age: 23,
        shortDescription: '',
        mediaList: [
          Media(id: 70, mediaPath: Assets.images.image1.path),
          Media(id: 43, mediaPath: Assets.videos.a2),
        ]),
    Account(
        id: 4,
        nickname: 'Horek',
        age: 19,
        shortDescription: 'shortDescription',
        isOnline: true,
        mediaList: [
          Media(id: 71, mediaPath: Assets.images.backImage01.path),
        ]),
    Account(
        id: 5,
        nickname: 'Sallie Hobbs',
        age: 21,
        shortDescription: '',
        mediaList: [
          Media(id: 72, mediaPath: Assets.images.backImage02.path),
        ]),
    // Account(id: 75, nickname: 'Kathryn Hutchinson', age: 23, shortDescription: 'wyg', mediaList: []),
    Account(
        id: 6,
        nickname: 'Mariya French',
        age: 24,
        shortDescription: '',
        isOnline: true,
        mediaList: [
          Media(id: 73, mediaPath: Assets.images.backImage03.path),
        ]),
    Account(
        id: 7,
        nickname: 'Steffan',
        age: 25,
        shortDescription: 'shortDesc',
        mediaList: [
          Media(id: 74, mediaPath: Assets.images.backImage04.path),
        ])
  ];

  void setChosenCategoriesToAccounts() {
    datingFeedProfiles[0].filters.setChosenFilterElement(1);
    datingFeedProfiles[0].filters.setChosenSubcategory(1, 1);
  }

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
