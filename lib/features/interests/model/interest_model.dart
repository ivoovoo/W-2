import 'package:freezed_annotation/freezed_annotation.dart';

part 'interest_model.freezed.dart';
part 'interest_model.g.dart';

@freezed
class InterestResponse with _$InterestResponse {
  const factory InterestResponse({
    required List<Interest> interests,
  }) = _InterestResponse;

  factory InterestResponse.fromJson(Map<String, dynamic> json) =>
      _$InterestResponseFromJson(json);
}

@freezed
class Interest with _$Interest {
  const factory Interest({
    required int id,
    required String name,
    @JsonKey(name: 'image_interest') String? imageInterest,
  }) = _Interest;

  factory Interest.fromJson(Map<String, dynamic> json) =>
      _$InterestFromJson(json);
}
