import 'package:social_network/core/core.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/market/create_advertisement/data_provider/categories_data_provider.dart';
import 'package:social_network/market/create_advertisement/models/category_model.dart';
import 'package:social_network/market/create_advertisement/models/category_model2.dart';

class CategoriesRepository {
  final ICategoriesDataProvider categoriesDataProvider;
  final ILocalStorageDataProvider localStorageDataProvider;

  CategoriesRepository({
    required this.categoriesDataProvider,
    required this.localStorageDataProvider,
  });

  Future<CategoryResponse> getCategories() {
    return categoriesDataProvider.getCategories(
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
    );
  }

  Future<CategoryResponse2> getSubCategories(int idMainCategory) {
    return categoriesDataProvider.getSubCategories(
      localStorageDataProvider.getString(LocalStorageKeys.authToken)!,
      idMainCategory,
    );
  }
}
