import 'package:social_network/features/dating_feed_screen/data_provider/users_data_provider.dart';
import 'package:social_network/features/dating_feed_screen/models/users_model.dart';

class UsersRepository {
  final IUsersDataProvider usersDataProvider;

  UsersRepository({required this.usersDataProvider});

  Future<UserListResponse> getUsers([
    String? interest,
    int? age_min,
    int? age_max,
    int? city,
  ]) {
    return usersDataProvider.getUsers(interest, age_min, age_max, city);
  }
}
