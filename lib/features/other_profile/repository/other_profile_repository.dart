import 'package:social_network/features/other_profile/data_provider/other_profile_data_provider.dart';
import 'package:social_network/features/profile_page/model/user_model.dart';

class OtherProfileRepository {
  final IOtherProfileDataProvider otherProfileDataProvider;

  OtherProfileRepository({required this.otherProfileDataProvider});

  Future<UserModel> getOtherProfile(int userId) {
    return otherProfileDataProvider.getOtherProfile(userId);
  }

  Future<String> subscribe(int userId) {
    return otherProfileDataProvider.subscribe(userId);
  }

  Future<String> unsubscribe(int userId) {
    return otherProfileDataProvider.unsubscribe(userId);
  }
}
