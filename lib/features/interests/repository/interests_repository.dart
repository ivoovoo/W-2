import 'package:social_network/features/interests/data_provider/interests_data_provider.dart';

import '../model/interest_model.dart';

class InterestsRepository {
  final IInterestsDataProvider interestsDataProvider;

  InterestsRepository({required this.interestsDataProvider});

  Future<InterestResponse> getAllInterests() {
    return interestsDataProvider.getAllInterests();
  }
}

// class InterestsRepository {
//   static const interests = <String>[
//     '🔥 Страсть',
//     '🍹 Вечеринка',
//     '👼🏻 Семья',
//     '🎮  Игры',
//     '🎨 Творчество',
//     '🦄 Обменяться подарками',
//     '🦋 Развитие',
//     '💵 Бизнес',
//     '🔋️ Технологии',
//     '🕊 Поделиться историей ',
//     '⛵️ Приключение',
//     '🏖 Совместный Chill',
//     '🔥 Страсть',
//     '🍹 Вечеринка',
//     '👼🏻 Семья',
//     '🎮  Игры',
//     '🎨 Творчество',
//     '🦄 Обменяться подарками',
//     '🦋 Развитие',
//     '💵 Бизнес',
//     '🔋️ Технологии',
//     '🕊 Поделиться историей ',
//     '⛵️ Приключение',
//     '🏖 Совместный Chill',
//   ];
// }
