import 'package:social_network/core/core.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/market/create_advertisement/data_provider/create_advertisement_data_provider.dart';

class CreateAdvertisementRepository {
  final ICreateAdvertisementDataProvider createAdvertisementDataProvider;
  final ILocalStorageDataProvider localStorageDataProvider;

  CreateAdvertisementRepository({
    required this.createAdvertisementDataProvider,
    required this.localStorageDataProvider,
  });

  Future createAdvertisement(dynamic data) {
    return createAdvertisementDataProvider.createAdvertisement(
      data,
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
      localStorageDataProvider.getString(LocalStorageKeys.csrfToken)!,
    );
  }
}
