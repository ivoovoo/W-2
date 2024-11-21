import 'package:social_network/core/models/video_model.dart';
import 'package:social_network/features/home_page/data_provider/home_data_provider.dart';

class HomeRepository {
  final IHomeDataProvider homeDataProvider;

  HomeRepository({required this.homeDataProvider});

  Future<VideoResponse> getVideos() {
    return homeDataProvider.getVideos();
  }
}
