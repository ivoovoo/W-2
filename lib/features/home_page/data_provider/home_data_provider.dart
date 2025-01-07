import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:social_network/core/models/video_model.dart';

import '../../../core/helpers/catch_exception.dart';

abstract class IHomeDataProvider {
  Future<VideoResponse> getVideos();
}

class HomeDataProvider implements IHomeDataProvider {
  ApiRequester apiRequester = ApiRequester();
  @override
  Future<VideoResponse> getVideos() async {
    try {
      Response response = await apiRequester.toGetUnAuthorized('videos/', {});
      print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');

      if (response.statusCode == 200) {
        log("${response.statusCode}");
        log("VIDEOS result== ${response.data}");
        if (response.data != null && response.data is Map<String, dynamic>) {
          return VideoResponse.fromJson(response.data);
        } else {
          throw Exception('Invalid response data');
        }
      }

      throw response;
    } catch (e) {
      print('ERROR GET VIDEOSSSSSSSSSSSSSSSSSSS $e');

      throw CatchException.convertException(e);
    }
  }
}
