// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoResponse _$VideoResponseFromJson(Map<String, dynamic> json) {
  return _VideoResponse.fromJson(json);
}

/// @nodoc
mixin _$VideoResponse {
  @JsonKey(name: 'all_videos')
  List<Video> get allVideos => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscribed_videos')
  List<Video>? get subscribedVideos => throw _privateConstructorUsedError;

  /// Serializes this VideoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoResponseCopyWith<VideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResponseCopyWith<$Res> {
  factory $VideoResponseCopyWith(
          VideoResponse value, $Res Function(VideoResponse) then) =
      _$VideoResponseCopyWithImpl<$Res, VideoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'all_videos') List<Video> allVideos,
      @JsonKey(name: 'subscribed_videos') List<Video>? subscribedVideos});
}

/// @nodoc
class _$VideoResponseCopyWithImpl<$Res, $Val extends VideoResponse>
    implements $VideoResponseCopyWith<$Res> {
  _$VideoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allVideos = null,
    Object? subscribedVideos = freezed,
  }) {
    return _then(_value.copyWith(
      allVideos: null == allVideos
          ? _value.allVideos
          : allVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      subscribedVideos: freezed == subscribedVideos
          ? _value.subscribedVideos
          : subscribedVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoResponseImplCopyWith<$Res>
    implements $VideoResponseCopyWith<$Res> {
  factory _$$VideoResponseImplCopyWith(
          _$VideoResponseImpl value, $Res Function(_$VideoResponseImpl) then) =
      __$$VideoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'all_videos') List<Video> allVideos,
      @JsonKey(name: 'subscribed_videos') List<Video>? subscribedVideos});
}

/// @nodoc
class __$$VideoResponseImplCopyWithImpl<$Res>
    extends _$VideoResponseCopyWithImpl<$Res, _$VideoResponseImpl>
    implements _$$VideoResponseImplCopyWith<$Res> {
  __$$VideoResponseImplCopyWithImpl(
      _$VideoResponseImpl _value, $Res Function(_$VideoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allVideos = null,
    Object? subscribedVideos = freezed,
  }) {
    return _then(_$VideoResponseImpl(
      allVideos: null == allVideos
          ? _value._allVideos
          : allVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      subscribedVideos: freezed == subscribedVideos
          ? _value._subscribedVideos
          : subscribedVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoResponseImpl implements _VideoResponse {
  _$VideoResponseImpl(
      {@JsonKey(name: 'all_videos') required final List<Video> allVideos,
      @JsonKey(name: 'subscribed_videos')
      required final List<Video>? subscribedVideos})
      : _allVideos = allVideos,
        _subscribedVideos = subscribedVideos;

  factory _$VideoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoResponseImplFromJson(json);

  final List<Video> _allVideos;
  @override
  @JsonKey(name: 'all_videos')
  List<Video> get allVideos {
    if (_allVideos is EqualUnmodifiableListView) return _allVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allVideos);
  }

  final List<Video>? _subscribedVideos;
  @override
  @JsonKey(name: 'subscribed_videos')
  List<Video>? get subscribedVideos {
    final value = _subscribedVideos;
    if (value == null) return null;
    if (_subscribedVideos is EqualUnmodifiableListView)
      return _subscribedVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VideoResponse(allVideos: $allVideos, subscribedVideos: $subscribedVideos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._allVideos, _allVideos) &&
            const DeepCollectionEquality()
                .equals(other._subscribedVideos, _subscribedVideos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allVideos),
      const DeepCollectionEquality().hash(_subscribedVideos));

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoResponseImplCopyWith<_$VideoResponseImpl> get copyWith =>
      __$$VideoResponseImplCopyWithImpl<_$VideoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoResponseImplToJson(
      this,
    );
  }
}

abstract class _VideoResponse implements VideoResponse {
  factory _VideoResponse(
      {@JsonKey(name: 'all_videos') required final List<Video> allVideos,
      @JsonKey(name: 'subscribed_videos')
      required final List<Video>? subscribedVideos}) = _$VideoResponseImpl;

  factory _VideoResponse.fromJson(Map<String, dynamic> json) =
      _$VideoResponseImpl.fromJson;

  @override
  @JsonKey(name: 'all_videos')
  List<Video> get allVideos;
  @override
  @JsonKey(name: 'subscribed_videos')
  List<Video>? get subscribedVideos;

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoResponseImplCopyWith<_$VideoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
mixin _$Video {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_video')
  CategoryVideo? get categoryVideo => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_file')
  String get videoFile => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_id')
  int get authorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'views_count')
  int get viewsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_preview')
  String? get videoPreview => throw _privateConstructorUsedError;

  /// Serializes this Video to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'category_video') CategoryVideo? categoryVideo,
      @JsonKey(name: 'video_file') String videoFile,
      String author,
      @JsonKey(name: 'author_id') int authorId,
      @JsonKey(name: 'views_count') int viewsCount,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'video_preview') String? videoPreview});

  $CategoryVideoCopyWith<$Res>? get categoryVideo;
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryVideo = freezed,
    Object? videoFile = null,
    Object? author = null,
    Object? authorId = null,
    Object? viewsCount = null,
    Object? createdAt = null,
    Object? videoPreview = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryVideo: freezed == categoryVideo
          ? _value.categoryVideo
          : categoryVideo // ignore: cast_nullable_to_non_nullable
              as CategoryVideo?,
      videoFile: null == videoFile
          ? _value.videoFile
          : videoFile // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
      viewsCount: null == viewsCount
          ? _value.viewsCount
          : viewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      videoPreview: freezed == videoPreview
          ? _value.videoPreview
          : videoPreview // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryVideoCopyWith<$Res>? get categoryVideo {
    if (_value.categoryVideo == null) {
      return null;
    }

    return $CategoryVideoCopyWith<$Res>(_value.categoryVideo!, (value) {
      return _then(_value.copyWith(categoryVideo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoImplCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$$VideoImplCopyWith(
          _$VideoImpl value, $Res Function(_$VideoImpl) then) =
      __$$VideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'category_video') CategoryVideo? categoryVideo,
      @JsonKey(name: 'video_file') String videoFile,
      String author,
      @JsonKey(name: 'author_id') int authorId,
      @JsonKey(name: 'views_count') int viewsCount,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'video_preview') String? videoPreview});

  @override
  $CategoryVideoCopyWith<$Res>? get categoryVideo;
}

/// @nodoc
class __$$VideoImplCopyWithImpl<$Res>
    extends _$VideoCopyWithImpl<$Res, _$VideoImpl>
    implements _$$VideoImplCopyWith<$Res> {
  __$$VideoImplCopyWithImpl(
      _$VideoImpl _value, $Res Function(_$VideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryVideo = freezed,
    Object? videoFile = null,
    Object? author = null,
    Object? authorId = null,
    Object? viewsCount = null,
    Object? createdAt = null,
    Object? videoPreview = freezed,
  }) {
    return _then(_$VideoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryVideo: freezed == categoryVideo
          ? _value.categoryVideo
          : categoryVideo // ignore: cast_nullable_to_non_nullable
              as CategoryVideo?,
      videoFile: null == videoFile
          ? _value.videoFile
          : videoFile // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
      viewsCount: null == viewsCount
          ? _value.viewsCount
          : viewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      videoPreview: freezed == videoPreview
          ? _value.videoPreview
          : videoPreview // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoImpl implements _Video {
  _$VideoImpl(
      {required this.id,
      @JsonKey(name: 'category_video') required this.categoryVideo,
      @JsonKey(name: 'video_file') required this.videoFile,
      required this.author,
      @JsonKey(name: 'author_id') required this.authorId,
      @JsonKey(name: 'views_count') required this.viewsCount,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'video_preview') required this.videoPreview});

  factory _$VideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'category_video')
  final CategoryVideo? categoryVideo;
  @override
  @JsonKey(name: 'video_file')
  final String videoFile;
  @override
  final String author;
  @override
  @JsonKey(name: 'author_id')
  final int authorId;
  @override
  @JsonKey(name: 'views_count')
  final int viewsCount;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'video_preview')
  final String? videoPreview;

  @override
  String toString() {
    return 'Video(id: $id, categoryVideo: $categoryVideo, videoFile: $videoFile, author: $author, authorId: $authorId, viewsCount: $viewsCount, createdAt: $createdAt, videoPreview: $videoPreview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryVideo, categoryVideo) ||
                other.categoryVideo == categoryVideo) &&
            (identical(other.videoFile, videoFile) ||
                other.videoFile == videoFile) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.viewsCount, viewsCount) ||
                other.viewsCount == viewsCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.videoPreview, videoPreview) ||
                other.videoPreview == videoPreview));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryVideo, videoFile,
      author, authorId, viewsCount, createdAt, videoPreview);

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      __$$VideoImplCopyWithImpl<_$VideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoImplToJson(
      this,
    );
  }
}

abstract class _Video implements Video {
  factory _Video(
      {required final int id,
      @JsonKey(name: 'category_video')
      required final CategoryVideo? categoryVideo,
      @JsonKey(name: 'video_file') required final String videoFile,
      required final String author,
      @JsonKey(name: 'author_id') required final int authorId,
      @JsonKey(name: 'views_count') required final int viewsCount,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'video_preview')
      required final String? videoPreview}) = _$VideoImpl;

  factory _Video.fromJson(Map<String, dynamic> json) = _$VideoImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'category_video')
  CategoryVideo? get categoryVideo;
  @override
  @JsonKey(name: 'video_file')
  String get videoFile;
  @override
  String get author;
  @override
  @JsonKey(name: 'author_id')
  int get authorId;
  @override
  @JsonKey(name: 'views_count')
  int get viewsCount;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'video_preview')
  String? get videoPreview;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryVideo _$CategoryVideoFromJson(Map<String, dynamic> json) {
  return _CategoryVideo.fromJson(json);
}

/// @nodoc
mixin _$CategoryVideo {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this CategoryVideo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryVideo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryVideoCopyWith<CategoryVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryVideoCopyWith<$Res> {
  factory $CategoryVideoCopyWith(
          CategoryVideo value, $Res Function(CategoryVideo) then) =
      _$CategoryVideoCopyWithImpl<$Res, CategoryVideo>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CategoryVideoCopyWithImpl<$Res, $Val extends CategoryVideo>
    implements $CategoryVideoCopyWith<$Res> {
  _$CategoryVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryVideo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryVideoImplCopyWith<$Res>
    implements $CategoryVideoCopyWith<$Res> {
  factory _$$CategoryVideoImplCopyWith(
          _$CategoryVideoImpl value, $Res Function(_$CategoryVideoImpl) then) =
      __$$CategoryVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CategoryVideoImplCopyWithImpl<$Res>
    extends _$CategoryVideoCopyWithImpl<$Res, _$CategoryVideoImpl>
    implements _$$CategoryVideoImplCopyWith<$Res> {
  __$$CategoryVideoImplCopyWithImpl(
      _$CategoryVideoImpl _value, $Res Function(_$CategoryVideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryVideo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CategoryVideoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryVideoImpl implements _CategoryVideo {
  _$CategoryVideoImpl({required this.name});

  factory _$CategoryVideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryVideoImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'CategoryVideo(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryVideoImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of CategoryVideo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryVideoImplCopyWith<_$CategoryVideoImpl> get copyWith =>
      __$$CategoryVideoImplCopyWithImpl<_$CategoryVideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryVideoImplToJson(
      this,
    );
  }
}

abstract class _CategoryVideo implements CategoryVideo {
  factory _CategoryVideo({required final String name}) = _$CategoryVideoImpl;

  factory _CategoryVideo.fromJson(Map<String, dynamic> json) =
      _$CategoryVideoImpl.fromJson;

  @override
  String get name;

  /// Create a copy of CategoryVideo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryVideoImplCopyWith<_$CategoryVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
