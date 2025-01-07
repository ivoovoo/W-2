import 'package:freezed_annotation/freezed_annotation.dart';

part 'apps_model.freezed.dart';

part 'apps_model.g.dart';

@freezed
class AppsModel with _$AppsModel {
  const factory AppsModel({
    required List<AppModel> sites,
  }) = _AppsModel;

  factory AppsModel.fromJson(Map<String, dynamic> json) =>
      _$AppsModelFromJson(json);
}

@freezed
class AppModel with _$AppModel {
  const factory AppModel({
    required int id,
    required String? name,
    required String? description,
    required String url,
    @JsonKey(name: 'site_image') required String? siteImage,
    required int user,
    @JsonKey(name: 'category_site') required List<int> categorySite,
  }) = _AppModel;

  factory AppModel.fromJson(Map<String, dynamic> json) =>
      _$AppModelFromJson(json);
}
