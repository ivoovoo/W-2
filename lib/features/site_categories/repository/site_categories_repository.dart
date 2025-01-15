import 'package:social_network/core/core.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/features/site_categories/data_provider/site_categories_data_provider.dart';
import 'package:social_network/features/site_categories/model/site_categories_model.dart';

class SiteCategoriesRepository {
  final ISiteCategoriesDataProvider siteCategoriesDataProvider;
  final ILocalStorageDataProvider localStorageDataProvider;

  SiteCategoriesRepository({
    required this.siteCategoriesDataProvider,
    required this.localStorageDataProvider,
  });

  Future<SiteCategoriesResponse> getAllSiteCategories() {
    return siteCategoriesDataProvider.getAllSiteCategories(
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
    );
  }
}
