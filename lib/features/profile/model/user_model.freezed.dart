// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_online')
  DateTime? get lastOnline => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_online')
  bool? get isOnline => throw _privateConstructorUsedError;
  @JsonKey(name: 'follow_you')
  bool get followYou => throw _privateConstructorUsedError;
  @JsonKey(name: 'follow_him')
  bool get followHim => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscribers_count')
  int get subscribersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscriptions_count')
  int get subscriptionsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_videos')
  List<Video> get userVideos => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_pictures")
  List<AvatarImage>? get profilePictures => throw _privateConstructorUsedError;
  @JsonKey(name: "average_rating")
  double get averageRating => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int id,
      String username,
      String? email,
      String? city,
      @JsonKey(name: 'last_online') DateTime? lastOnline,
      @JsonKey(name: 'is_online') bool? isOnline,
      @JsonKey(name: 'follow_you') bool followYou,
      @JsonKey(name: 'follow_him') bool followHim,
      @JsonKey(name: 'subscribers_count') int subscribersCount,
      @JsonKey(name: 'subscriptions_count') int subscriptionsCount,
      @JsonKey(name: 'user_videos') List<Video> userVideos,
      @JsonKey(name: "profile_pictures") List<AvatarImage>? profilePictures,
      @JsonKey(name: "average_rating") double averageRating});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = freezed,
    Object? city = freezed,
    Object? lastOnline = freezed,
    Object? isOnline = freezed,
    Object? followYou = null,
    Object? followHim = null,
    Object? subscribersCount = null,
    Object? subscriptionsCount = null,
    Object? userVideos = null,
    Object? profilePictures = freezed,
    Object? averageRating = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      lastOnline: freezed == lastOnline
          ? _value.lastOnline
          : lastOnline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isOnline: freezed == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      followYou: null == followYou
          ? _value.followYou
          : followYou // ignore: cast_nullable_to_non_nullable
              as bool,
      followHim: null == followHim
          ? _value.followHim
          : followHim // ignore: cast_nullable_to_non_nullable
              as bool,
      subscribersCount: null == subscribersCount
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int,
      subscriptionsCount: null == subscriptionsCount
          ? _value.subscriptionsCount
          : subscriptionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      userVideos: null == userVideos
          ? _value.userVideos
          : userVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      profilePictures: freezed == profilePictures
          ? _value.profilePictures
          : profilePictures // ignore: cast_nullable_to_non_nullable
              as List<AvatarImage>?,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      String? email,
      String? city,
      @JsonKey(name: 'last_online') DateTime? lastOnline,
      @JsonKey(name: 'is_online') bool? isOnline,
      @JsonKey(name: 'follow_you') bool followYou,
      @JsonKey(name: 'follow_him') bool followHim,
      @JsonKey(name: 'subscribers_count') int subscribersCount,
      @JsonKey(name: 'subscriptions_count') int subscriptionsCount,
      @JsonKey(name: 'user_videos') List<Video> userVideos,
      @JsonKey(name: "profile_pictures") List<AvatarImage>? profilePictures,
      @JsonKey(name: "average_rating") double averageRating});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = freezed,
    Object? city = freezed,
    Object? lastOnline = freezed,
    Object? isOnline = freezed,
    Object? followYou = null,
    Object? followHim = null,
    Object? subscribersCount = null,
    Object? subscriptionsCount = null,
    Object? userVideos = null,
    Object? profilePictures = freezed,
    Object? averageRating = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      lastOnline: freezed == lastOnline
          ? _value.lastOnline
          : lastOnline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isOnline: freezed == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      followYou: null == followYou
          ? _value.followYou
          : followYou // ignore: cast_nullable_to_non_nullable
              as bool,
      followHim: null == followHim
          ? _value.followHim
          : followHim // ignore: cast_nullable_to_non_nullable
              as bool,
      subscribersCount: null == subscribersCount
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int,
      subscriptionsCount: null == subscriptionsCount
          ? _value.subscriptionsCount
          : subscriptionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      userVideos: null == userVideos
          ? _value._userVideos
          : userVideos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      profilePictures: freezed == profilePictures
          ? _value._profilePictures
          : profilePictures // ignore: cast_nullable_to_non_nullable
              as List<AvatarImage>?,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.id,
      required this.username,
      required this.email,
      required this.city,
      @JsonKey(name: 'last_online') this.lastOnline,
      @JsonKey(name: 'is_online') required this.isOnline,
      @JsonKey(name: 'follow_you') required this.followYou,
      @JsonKey(name: 'follow_him') required this.followHim,
      @JsonKey(name: 'subscribers_count') required this.subscribersCount,
      @JsonKey(name: 'subscriptions_count') required this.subscriptionsCount,
      @JsonKey(name: 'user_videos') required final List<Video> userVideos,
      @JsonKey(name: "profile_pictures")
      required final List<AvatarImage>? profilePictures,
      @JsonKey(name: "average_rating") required this.averageRating})
      : _userVideos = userVideos,
        _profilePictures = profilePictures;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String? email;
  @override
  final String? city;
  @override
  @JsonKey(name: 'last_online')
  final DateTime? lastOnline;
  @override
  @JsonKey(name: 'is_online')
  final bool? isOnline;
  @override
  @JsonKey(name: 'follow_you')
  final bool followYou;
  @override
  @JsonKey(name: 'follow_him')
  final bool followHim;
  @override
  @JsonKey(name: 'subscribers_count')
  final int subscribersCount;
  @override
  @JsonKey(name: 'subscriptions_count')
  final int subscriptionsCount;
  final List<Video> _userVideos;
  @override
  @JsonKey(name: 'user_videos')
  List<Video> get userVideos {
    if (_userVideos is EqualUnmodifiableListView) return _userVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userVideos);
  }

  final List<AvatarImage>? _profilePictures;
  @override
  @JsonKey(name: "profile_pictures")
  List<AvatarImage>? get profilePictures {
    final value = _profilePictures;
    if (value == null) return null;
    if (_profilePictures is EqualUnmodifiableListView) return _profilePictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "average_rating")
  final double averageRating;

  @override
  String toString() {
    return 'UserModel(id: $id, username: $username, email: $email, city: $city, lastOnline: $lastOnline, isOnline: $isOnline, followYou: $followYou, followHim: $followHim, subscribersCount: $subscribersCount, subscriptionsCount: $subscriptionsCount, userVideos: $userVideos, profilePictures: $profilePictures, averageRating: $averageRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.lastOnline, lastOnline) ||
                other.lastOnline == lastOnline) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.followYou, followYou) ||
                other.followYou == followYou) &&
            (identical(other.followHim, followHim) ||
                other.followHim == followHim) &&
            (identical(other.subscribersCount, subscribersCount) ||
                other.subscribersCount == subscribersCount) &&
            (identical(other.subscriptionsCount, subscriptionsCount) ||
                other.subscriptionsCount == subscriptionsCount) &&
            const DeepCollectionEquality()
                .equals(other._userVideos, _userVideos) &&
            const DeepCollectionEquality()
                .equals(other._profilePictures, _profilePictures) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      email,
      city,
      lastOnline,
      isOnline,
      followYou,
      followHim,
      subscribersCount,
      subscriptionsCount,
      const DeepCollectionEquality().hash(_userVideos),
      const DeepCollectionEquality().hash(_profilePictures),
      averageRating);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final int id,
      required final String username,
      required final String? email,
      required final String? city,
      @JsonKey(name: 'last_online') final DateTime? lastOnline,
      @JsonKey(name: 'is_online') required final bool? isOnline,
      @JsonKey(name: 'follow_you') required final bool followYou,
      @JsonKey(name: 'follow_him') required final bool followHim,
      @JsonKey(name: 'subscribers_count') required final int subscribersCount,
      @JsonKey(name: 'subscriptions_count')
      required final int subscriptionsCount,
      @JsonKey(name: 'user_videos') required final List<Video> userVideos,
      @JsonKey(name: "profile_pictures")
      required final List<AvatarImage>? profilePictures,
      @JsonKey(name: "average_rating")
      required final double averageRating}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String? get email;
  @override
  String? get city;
  @override
  @JsonKey(name: 'last_online')
  DateTime? get lastOnline;
  @override
  @JsonKey(name: 'is_online')
  bool? get isOnline;
  @override
  @JsonKey(name: 'follow_you')
  bool get followYou;
  @override
  @JsonKey(name: 'follow_him')
  bool get followHim;
  @override
  @JsonKey(name: 'subscribers_count')
  int get subscribersCount;
  @override
  @JsonKey(name: 'subscriptions_count')
  int get subscriptionsCount;
  @override
  @JsonKey(name: 'user_videos')
  List<Video> get userVideos;
  @override
  @JsonKey(name: "profile_pictures")
  List<AvatarImage>? get profilePictures;
  @override
  @JsonKey(name: "average_rating")
  double get averageRating;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvatarImage _$AvatarImageFromJson(Map<String, dynamic> json) {
  return _AvatarImage.fromJson(json);
}

/// @nodoc
mixin _$AvatarImage {
  String get image => throw _privateConstructorUsedError;

  /// Serializes this AvatarImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvatarImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvatarImageCopyWith<AvatarImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarImageCopyWith<$Res> {
  factory $AvatarImageCopyWith(
          AvatarImage value, $Res Function(AvatarImage) then) =
      _$AvatarImageCopyWithImpl<$Res, AvatarImage>;
  @useResult
  $Res call({String image});
}

/// @nodoc
class _$AvatarImageCopyWithImpl<$Res, $Val extends AvatarImage>
    implements $AvatarImageCopyWith<$Res> {
  _$AvatarImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvatarImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvatarImageImplCopyWith<$Res>
    implements $AvatarImageCopyWith<$Res> {
  factory _$$AvatarImageImplCopyWith(
          _$AvatarImageImpl value, $Res Function(_$AvatarImageImpl) then) =
      __$$AvatarImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image});
}

/// @nodoc
class __$$AvatarImageImplCopyWithImpl<$Res>
    extends _$AvatarImageCopyWithImpl<$Res, _$AvatarImageImpl>
    implements _$$AvatarImageImplCopyWith<$Res> {
  __$$AvatarImageImplCopyWithImpl(
      _$AvatarImageImpl _value, $Res Function(_$AvatarImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvatarImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$AvatarImageImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvatarImageImpl implements _AvatarImage {
  _$AvatarImageImpl({required this.image});

  factory _$AvatarImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvatarImageImplFromJson(json);

  @override
  final String image;

  @override
  String toString() {
    return 'AvatarImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of AvatarImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarImageImplCopyWith<_$AvatarImageImpl> get copyWith =>
      __$$AvatarImageImplCopyWithImpl<_$AvatarImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvatarImageImplToJson(
      this,
    );
  }
}

abstract class _AvatarImage implements AvatarImage {
  factory _AvatarImage({required final String image}) = _$AvatarImageImpl;

  factory _AvatarImage.fromJson(Map<String, dynamic> json) =
      _$AvatarImageImpl.fromJson;

  @override
  String get image;

  /// Create a copy of AvatarImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvatarImageImplCopyWith<_$AvatarImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
