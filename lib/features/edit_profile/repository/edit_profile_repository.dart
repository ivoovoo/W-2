import 'package:social_network/features/edit_profile/data_provider/edit_profile_data_provider.dart';

class EditProfileRepository {
  final IEditProfileDataProvider editProfileDataProvider;

  EditProfileRepository({required this.editProfileDataProvider});

  Future setBirthday(
    Map<String, String> birthday,
    int userId,
    String token,
    String csrfToken,
  ) {
    return editProfileDataProvider.setBirthday(
      birthday,
      userId,
      token,
      csrfToken,
    );
  }
}
