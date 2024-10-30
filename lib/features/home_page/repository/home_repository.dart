import 'package:social_network/core/core.dart';
import 'package:social_network/features/home_page/data_provider/home_data_provider.dart';

class HomeRepository {
  final IHomeDataProvider homeDataProvider;

  HomeRepository({required this.homeDataProvider});

  List<Account> getAccounts() {
    return homeDataProvider.getAccounts();
  }
}
