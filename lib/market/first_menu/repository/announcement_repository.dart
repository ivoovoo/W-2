import 'package:social_network/core/data/local_storage_data_provider.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/market/first_menu/data_provider/announcements_data_provider.dart';
import 'package:social_network/market/first_menu/model/announcement_model.dart';

class AnnouncementRepository {
  final ILocalStorageDataProvider localStorageDataProvider;
  final IAnnouncementDataProvider announcementDataProvider;

  AnnouncementRepository({
    required this.localStorageDataProvider,
    required this.announcementDataProvider,
  });

  Future<AnnouncementResponse> getAllAnnouncements() {
    return announcementDataProvider.getAllAnnouncement(
        localStorageDataProvider.getString(LocalStorageKeys.authToken)!);
  }
}
