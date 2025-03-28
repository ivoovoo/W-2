// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'site_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SiteCategoriesResponse _$SiteCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _SiteCategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$SiteCategoriesResponse {
  @JsonKey(name: 'site_categories')
  List<SiteCategory> get siteCategories => throw _privateConstructorUsedError;

  /// Serializes this SiteCategoriesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SiteCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiteCategoriesResponseCopyWith<SiteCategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteCategoriesResponseCopyWith<$Res> {
  factory $SiteCategoriesResponseCopyWith(SiteCategoriesResponse value,
          $Res Function(SiteCategoriesResponse) then) =
      _$SiteCategoriesResponseCopyWithImpl<$Res, SiteCategoriesResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'site_categories') List<SiteCategory> siteCategories});
}

/// @nodoc
class _$SiteCategoriesResponseCopyWithImpl<$Res,
        $Val extends SiteCategoriesResponse>
    implements $SiteCategoriesResponseCopyWith<$Res> {
  _$SiteCategoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiteCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteCategories = null,
  }) {
    return _then(_value.copyWith(
      siteCategories: null == siteCategories
          ? _value.siteCategories
          : siteCategories // ignore: cast_nullable_to_non_nullable
              as List<SiteCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SiteCategoriesResponseImplCopyWith<$Res>
    implements $SiteCategoriesResponseCopyWith<$Res> {
  factory _$$SiteCategoriesResponseImplCopyWith(
          _$SiteCategoriesResponseImpl value,
          $Res Function(_$SiteCategoriesResponseImpl) then) =
      __$$SiteCategoriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'site_categories') List<SiteCategory> siteCategories});
}

/// @nodoc
class __$$SiteCategoriesResponseImplCopyWithImpl<$Res>
    extends _$SiteCategoriesResponseCopyWithImpl<$Res,
        _$SiteCategoriesResponseImpl>
    implements _$$SiteCategoriesResponseImplCopyWith<$Res> {
  __$$SiteCategoriesResponseImplCopyWithImpl(
      _$SiteCategoriesResponseImpl _value,
      $Res Function(_$SiteCategoriesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiteCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteCategories = null,
  }) {
    return _then(_$SiteCategoriesResponseImpl(
      siteCategories: null == siteCategories
          ? _value._siteCategories
          : siteCategories // ignore: cast_nullable_to_non_nullable
              as List<SiteCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SiteCategoriesResponseImpl implements _SiteCategoriesResponse {
  const _$SiteCategoriesResponseImpl(
      {@JsonKey(name: 'site_categories')
      required final List<SiteCategory> siteCategories})
      : _siteCategories = siteCategories;

  factory _$SiteCategoriesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiteCategoriesResponseImplFromJson(json);

  final List<SiteCategory> _siteCategories;
  @override
  @JsonKey(name: 'site_categories')
  List<SiteCategory> get siteCategories {
    if (_siteCategories is EqualUnmodifiableListView) return _siteCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_siteCategories);
  }

  @override
  String toString() {
    return 'SiteCategoriesResponse(siteCategories: $siteCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteCategoriesResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._siteCategories, _siteCategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_siteCategories));

  /// Create a copy of SiteCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteCategoriesResponseImplCopyWith<_$SiteCategoriesResponseImpl>
      get copyWith => __$$SiteCategoriesResponseImplCopyWithImpl<
          _$SiteCategoriesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiteCategoriesResponseImplToJson(
      this,
    );
  }
}

abstract class _SiteCategoriesResponse implements SiteCategoriesResponse {
  const factory _SiteCategoriesResponse(
          {@JsonKey(name: 'site_categories')
          required final List<SiteCategory> siteCategories}) =
      _$SiteCategoriesResponseImpl;

  factory _SiteCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$SiteCategoriesResponseImpl.fromJson;

  @override
  @JsonKey(name: 'site_categories')
  List<SiteCategory> get siteCategories;

  /// Create a copy of SiteCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiteCategoriesResponseImplCopyWith<_$SiteCategoriesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SiteCategory _$SiteCategoryFromJson(Map<String, dynamic> json) {
  return _SiteCategory.fromJson(json);
}

/// @nodoc
mixin _$SiteCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SiteCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SiteCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiteCategoryCopyWith<SiteCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteCategoryCopyWith<$Res> {
  factory $SiteCategoryCopyWith(
          SiteCategory value, $Res Function(SiteCategory) then) =
      _$SiteCategoryCopyWithImpl<$Res, SiteCategory>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$SiteCategoryCopyWithImpl<$Res, $Val extends SiteCategory>
    implements $SiteCategoryCopyWith<$Res> {
  _$SiteCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiteCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SiteCategoryImplCopyWith<$Res>
    implements $SiteCategoryCopyWith<$Res> {
  factory _$$SiteCategoryImplCopyWith(
          _$SiteCategoryImpl value, $Res Function(_$SiteCategoryImpl) then) =
      __$$SiteCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$SiteCategoryImplCopyWithImpl<$Res>
    extends _$SiteCategoryCopyWithImpl<$Res, _$SiteCategoryImpl>
    implements _$$SiteCategoryImplCopyWith<$Res> {
  __$$SiteCategoryImplCopyWithImpl(
      _$SiteCategoryImpl _value, $Res Function(_$SiteCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiteCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$SiteCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SiteCategoryImpl implements _SiteCategory {
  const _$SiteCategoryImpl({required this.id, required this.name});

  factory _$SiteCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiteCategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'SiteCategory(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of SiteCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteCategoryImplCopyWith<_$SiteCategoryImpl> get copyWith =>
      __$$SiteCategoryImplCopyWithImpl<_$SiteCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiteCategoryImplToJson(
      this,
    );
  }
}

abstract class _SiteCategory implements SiteCategory {
  const factory _SiteCategory(
      {required final int id, required final String name}) = _$SiteCategoryImpl;

  factory _SiteCategory.fromJson(Map<String, dynamic> json) =
      _$SiteCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of SiteCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiteCategoryImplCopyWith<_$SiteCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
