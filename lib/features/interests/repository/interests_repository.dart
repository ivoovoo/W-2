import 'package:social_network/core/core.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/features/interests/data_provider/interests_data_provider.dart';

import '../model/interest_model.dart';

class InterestsRepository {
  final IInterestsDataProvider interestsDataProvider;
  final ILocalStorageDataProvider localStorageDataProvider;

  InterestsRepository({
    required this.interestsDataProvider,
    required this.localStorageDataProvider,
  });

  Future<InterestResponse> getAllInterests() {
    return interestsDataProvider.getAllInterests(
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
    );
  }
}
