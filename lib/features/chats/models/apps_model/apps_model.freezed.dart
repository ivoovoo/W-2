// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apps_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppsModel _$AppsModelFromJson(Map<String, dynamic> json) {
  return _AppsModel.fromJson(json);
}

/// @nodoc
mixin _$AppsModel {
  List<AppModel> get sites => throw _privateConstructorUsedError;

  /// Serializes this AppsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppsModelCopyWith<AppsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppsModelCopyWith<$Res> {
  factory $AppsModelCopyWith(AppsModel value, $Res Function(AppsModel) then) =
      _$AppsModelCopyWithImpl<$Res, AppsModel>;
  @useResult
  $Res call({List<AppModel> sites});
}

/// @nodoc
class _$AppsModelCopyWithImpl<$Res, $Val extends AppsModel>
    implements $AppsModelCopyWith<$Res> {
  _$AppsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sites = null,
  }) {
    return _then(_value.copyWith(
      sites: null == sites
          ? _value.sites
          : sites // ignore: cast_nullable_to_non_nullable
              as List<AppModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppsModelImplCopyWith<$Res>
    implements $AppsModelCopyWith<$Res> {
  factory _$$AppsModelImplCopyWith(
          _$AppsModelImpl value, $Res Function(_$AppsModelImpl) then) =
      __$$AppsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppModel> sites});
}

/// @nodoc
class __$$AppsModelImplCopyWithImpl<$Res>
    extends _$AppsModelCopyWithImpl<$Res, _$AppsModelImpl>
    implements _$$AppsModelImplCopyWith<$Res> {
  __$$AppsModelImplCopyWithImpl(
      _$AppsModelImpl _value, $Res Function(_$AppsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sites = null,
  }) {
    return _then(_$AppsModelImpl(
      sites: null == sites
          ? _value._sites
          : sites // ignore: cast_nullable_to_non_nullable
              as List<AppModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppsModelImpl implements _AppsModel {
  const _$AppsModelImpl({required final List<AppModel> sites}) : _sites = sites;

  factory _$AppsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppsModelImplFromJson(json);

  final List<AppModel> _sites;
  @override
  List<AppModel> get sites {
    if (_sites is EqualUnmodifiableListView) return _sites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sites);
  }

  @override
  String toString() {
    return 'AppsModel(sites: $sites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppsModelImpl &&
            const DeepCollectionEquality().equals(other._sites, _sites));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sites));

  /// Create a copy of AppsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppsModelImplCopyWith<_$AppsModelImpl> get copyWith =>
      __$$AppsModelImplCopyWithImpl<_$AppsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppsModelImplToJson(
      this,
    );
  }
}

abstract class _AppsModel implements AppsModel {
  const factory _AppsModel({required final List<AppModel> sites}) =
      _$AppsModelImpl;

  factory _AppsModel.fromJson(Map<String, dynamic> json) =
      _$AppsModelImpl.fromJson;

  @override
  List<AppModel> get sites;

  /// Create a copy of AppsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppsModelImplCopyWith<_$AppsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppModel _$AppModelFromJson(Map<String, dynamic> json) {
  return _AppModel.fromJson(json);
}

/// @nodoc
mixin _$AppModel {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_image')
  String? get siteImage => throw _privateConstructorUsedError;
  int get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_site')
  List<int> get categorySite => throw _privateConstructorUsedError;

  /// Serializes this AppModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppModelCopyWith<AppModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppModelCopyWith<$Res> {
  factory $AppModelCopyWith(AppModel value, $Res Function(AppModel) then) =
      _$AppModelCopyWithImpl<$Res, AppModel>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? description,
      String url,
      @JsonKey(name: 'site_image') String? siteImage,
      int user,
      @JsonKey(name: 'category_site') List<int> categorySite});
}

/// @nodoc
class _$AppModelCopyWithImpl<$Res, $Val extends AppModel>
    implements $AppModelCopyWith<$Res> {
  _$AppModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? url = null,
    Object? siteImage = freezed,
    Object? user = null,
    Object? categorySite = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      siteImage: freezed == siteImage
          ? _value.siteImage
          : siteImage // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int,
      categorySite: null == categorySite
          ? _value.categorySite
          : categorySite // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppModelImplCopyWith<$Res>
    implements $AppModelCopyWith<$Res> {
  factory _$$AppModelImplCopyWith(
          _$AppModelImpl value, $Res Function(_$AppModelImpl) then) =
      __$$AppModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? description,
      String url,
      @JsonKey(name: 'site_image') String? siteImage,
      int user,
      @JsonKey(name: 'category_site') List<int> categorySite});
}

/// @nodoc
class __$$AppModelImplCopyWithImpl<$Res>
    extends _$AppModelCopyWithImpl<$Res, _$AppModelImpl>
    implements _$$AppModelImplCopyWith<$Res> {
  __$$AppModelImplCopyWithImpl(
      _$AppModelImpl _value, $Res Function(_$AppModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? url = null,
    Object? siteImage = freezed,
    Object? user = null,
    Object? categorySite = null,
  }) {
    return _then(_$AppModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      siteImage: freezed == siteImage
          ? _value.siteImage
          : siteImage // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int,
      categorySite: null == categorySite
          ? _value._categorySite
          : categorySite // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppModelImpl implements _AppModel {
  const _$AppModelImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.url,
      @JsonKey(name: 'site_image') required this.siteImage,
      required this.user,
      @JsonKey(name: 'category_site') required final List<int> categorySite})
      : _categorySite = categorySite;

  factory _$AppModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String url;
  @override
  @JsonKey(name: 'site_image')
  final String? siteImage;
  @override
  final int user;
  final List<int> _categorySite;
  @override
  @JsonKey(name: 'category_site')
  List<int> get categorySite {
    if (_categorySite is EqualUnmodifiableListView) return _categorySite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categorySite);
  }

  @override
  String toString() {
    return 'AppModel(id: $id, name: $name, description: $description, url: $url, siteImage: $siteImage, user: $user, categorySite: $categorySite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.siteImage, siteImage) ||
                other.siteImage == siteImage) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._categorySite, _categorySite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, url,
      siteImage, user, const DeepCollectionEquality().hash(_categorySite));

  /// Create a copy of AppModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppModelImplCopyWith<_$AppModelImpl> get copyWith =>
      __$$AppModelImplCopyWithImpl<_$AppModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppModelImplToJson(
      this,
    );
  }
}

abstract class _AppModel implements AppModel {
  const factory _AppModel(
      {required final int id,
      required final String? name,
      required final String? description,
      required final String url,
      @JsonKey(name: 'site_image') required final String? siteImage,
      required final int user,
      @JsonKey(name: 'category_site')
      required final List<int> categorySite}) = _$AppModelImpl;

  factory _AppModel.fromJson(Map<String, dynamic> json) =
      _$AppModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String get url;
  @override
  @JsonKey(name: 'site_image')
  String? get siteImage;
  @override
  int get user;
  @override
  @JsonKey(name: 'category_site')
  List<int> get categorySite;

  /// Create a copy of AppModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppModelImplCopyWith<_$AppModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
