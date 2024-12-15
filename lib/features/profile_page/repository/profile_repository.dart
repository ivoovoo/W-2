import '../data_provider/profile_data_provider.dart';
import '../model/user_model.dart';

class ProfileRepository {
  final IProfileDataProvider profileDataProvider;

  ProfileRepository({required this.profileDataProvider});

  Future<UserModel> getProfile(int userId) {
    return profileDataProvider.getProfile(userId);
  }
}
