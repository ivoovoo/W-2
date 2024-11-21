import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
class VideoResponse with _$VideoResponse {
  const factory VideoResponse({
    required List<Video> videos,
  }) = _VideoResponse;

  factory VideoResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoResponseFromJson(json);
}

@freezed
class Video with _$Video {
  const factory Video({
    @JsonKey(name: 'category_video') required CategoryVideo categoryVideo,
    @JsonKey(name: 'video_file') required String videoFile,
    @JsonKey(name: 'author') required int author,
    @JsonKey(name: 'views_count') required int viewsCount,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}

@freezed
class CategoryVideo with _$CategoryVideo {
  const factory CategoryVideo({
    required String name,
  }) = _CategoryVideo;

  factory CategoryVideo.fromJson(Map<String, dynamic> json) =>
      _$CategoryVideoFromJson(json);
}
