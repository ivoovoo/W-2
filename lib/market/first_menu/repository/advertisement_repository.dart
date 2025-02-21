import 'package:social_network/core/data/local_storage_data_provider.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/market/first_menu/data_provider/advertisements_data_provider.dart';
import 'package:social_network/market/first_menu/model/advertisement_model.dart';

class AdvertisementRepository {
  final ILocalStorageDataProvider localStorageDataProvider;
  final IAdvertisementDataProvider advertisementDataProvider;

  AdvertisementRepository({
    required this.localStorageDataProvider,
    required this.advertisementDataProvider,
  });

  Future<AdvertisementResponse> getAllAdvertisements() {
    return advertisementDataProvider.getAllAdvertisements(
        localStorageDataProvider.getString(LocalStorageKeys.authToken)!);
  }
}
