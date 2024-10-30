import 'package:social_network/core/core.dart';

abstract class IHomeDataProvider {
  List<Account> getAccounts();
}

class HomeDataProvider implements IHomeDataProvider {
  @override
  List<Account> getAccounts() {
    return [
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
      ),
      Account(
        id: 4,
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
        id: 5,
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
      ),
    ];
  }
}
