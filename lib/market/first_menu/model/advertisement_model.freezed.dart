// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advertisement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdvertisementResponse _$AdvertisementResponseFromJson(
    Map<String, dynamic> json) {
  return _AdvertisementResponse.fromJson(json);
}

/// @nodoc
mixin _$AdvertisementResponse {
  @JsonKey(name: "my_ads")
  List<AdvertisementModel> get myAdvertisements =>
      throw _privateConstructorUsedError;

  /// Serializes this AdvertisementResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdvertisementResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdvertisementResponseCopyWith<AdvertisementResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementResponseCopyWith<$Res> {
  factory $AdvertisementResponseCopyWith(AdvertisementResponse value,
          $Res Function(AdvertisementResponse) then) =
      _$AdvertisementResponseCopyWithImpl<$Res, AdvertisementResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "my_ads") List<AdvertisementModel> myAdvertisements});
}

/// @nodoc
class _$AdvertisementResponseCopyWithImpl<$Res,
        $Val extends AdvertisementResponse>
    implements $AdvertisementResponseCopyWith<$Res> {
  _$AdvertisementResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdvertisementResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myAdvertisements = null,
  }) {
    return _then(_value.copyWith(
      myAdvertisements: null == myAdvertisements
          ? _value.myAdvertisements
          : myAdvertisements // ignore: cast_nullable_to_non_nullable
              as List<AdvertisementModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvertisementResponseImplCopyWith<$Res>
    implements $AdvertisementResponseCopyWith<$Res> {
  factory _$$AdvertisementResponseImplCopyWith(
          _$AdvertisementResponseImpl value,
          $Res Function(_$AdvertisementResponseImpl) then) =
      __$$AdvertisementResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "my_ads") List<AdvertisementModel> myAdvertisements});
}

/// @nodoc
class __$$AdvertisementResponseImplCopyWithImpl<$Res>
    extends _$AdvertisementResponseCopyWithImpl<$Res,
        _$AdvertisementResponseImpl>
    implements _$$AdvertisementResponseImplCopyWith<$Res> {
  __$$AdvertisementResponseImplCopyWithImpl(_$AdvertisementResponseImpl _value,
      $Res Function(_$AdvertisementResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisementResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myAdvertisements = null,
  }) {
    return _then(_$AdvertisementResponseImpl(
      myAdvertisements: null == myAdvertisements
          ? _value._myAdvertisements
          : myAdvertisements // ignore: cast_nullable_to_non_nullable
              as List<AdvertisementModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertisementResponseImpl implements _AdvertisementResponse {
  const _$AdvertisementResponseImpl(
      {@JsonKey(name: "my_ads")
      required final List<AdvertisementModel> myAdvertisements})
      : _myAdvertisements = myAdvertisements;

  factory _$AdvertisementResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertisementResponseImplFromJson(json);

  final List<AdvertisementModel> _myAdvertisements;
  @override
  @JsonKey(name: "my_ads")
  List<AdvertisementModel> get myAdvertisements {
    if (_myAdvertisements is EqualUnmodifiableListView)
      return _myAdvertisements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myAdvertisements);
  }

  @override
  String toString() {
    return 'AdvertisementResponse(myAdvertisements: $myAdvertisements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._myAdvertisements, _myAdvertisements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_myAdvertisements));

  /// Create a copy of AdvertisementResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementResponseImplCopyWith<_$AdvertisementResponseImpl>
      get copyWith => __$$AdvertisementResponseImplCopyWithImpl<
          _$AdvertisementResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertisementResponseImplToJson(
      this,
    );
  }
}

abstract class _AdvertisementResponse implements AdvertisementResponse {
  const factory _AdvertisementResponse(
          {@JsonKey(name: "my_ads")
          required final List<AdvertisementModel> myAdvertisements}) =
      _$AdvertisementResponseImpl;

  factory _AdvertisementResponse.fromJson(Map<String, dynamic> json) =
      _$AdvertisementResponseImpl.fromJson;

  @override
  @JsonKey(name: "my_ads")
  List<AdvertisementModel> get myAdvertisements;

  /// Create a copy of AdvertisementResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvertisementResponseImplCopyWith<_$AdvertisementResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdvertisementModel _$AdvertisementModelFromJson(Map<String, dynamic> json) {
  return _AdvertisementModel.fromJson(json);
}

/// @nodoc
mixin _$AdvertisementModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get author => throw _privateConstructorUsedError; // required City city,
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'ad_type')
  AdvertisementType get advertisementType => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  List<dynamic>? get videos => throw _privateConstructorUsedError;
  List<AdvertisementImage> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_category')
  Category get mainCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_category")
  Category? get additionalCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_category")
  SubCategory? get subCategory => throw _privateConstructorUsedError;
  Attribute? get attribute => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_attribute")
  AdditionalAttribute? get additionalAttribute =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "subattribute")
  SubAttribute? get subAttribute => throw _privateConstructorUsedError;

  /// Serializes this AdvertisementModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdvertisementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdvertisementModelCopyWith<AdvertisementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementModelCopyWith<$Res> {
  factory $AdvertisementModelCopyWith(
          AdvertisementModel value, $Res Function(AdvertisementModel) then) =
      _$AdvertisementModelCopyWithImpl<$Res, AdvertisementModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int author,
      double latitude,
      double longitude,
      @JsonKey(name: 'ad_type') AdvertisementType advertisementType,
      String price,
      List<dynamic>? videos,
      List<AdvertisementImage> images,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'main_category') Category mainCategory,
      @JsonKey(name: "additional_category") Category? additionalCategory,
      @JsonKey(name: "sub_category") SubCategory? subCategory,
      Attribute? attribute,
      @JsonKey(name: "additional_attribute")
      AdditionalAttribute? additionalAttribute,
      @JsonKey(name: "subattribute") SubAttribute? subAttribute});

  $AdvertisementTypeCopyWith<$Res> get advertisementType;
  $CategoryCopyWith<$Res> get mainCategory;
  $CategoryCopyWith<$Res>? get additionalCategory;
  $SubCategoryCopyWith<$Res>? get subCategory;
  $AttributeCopyWith<$Res>? get attribute;
  $AdditionalAttributeCopyWith<$Res>? get additionalAttribute;
  $SubAttributeCopyWith<$Res>? get subAttribute;
}

/// @nodoc
class _$AdvertisementModelCopyWithImpl<$Res, $Val extends AdvertisementModel>
    implements $AdvertisementModelCopyWith<$Res> {
  _$AdvertisementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdvertisementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? author = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? advertisementType = null,
    Object? price = null,
    Object? videos = freezed,
    Object? images = null,
    Object? createdAt = null,
    Object? mainCategory = null,
    Object? additionalCategory = freezed,
    Object? subCategory = freezed,
    Object? attribute = freezed,
    Object? additionalAttribute = freezed,
    Object? subAttribute = freezed,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      advertisementType: null == advertisementType
          ? _value.advertisementType
          : advertisementType // ignore: cast_nullable_to_non_nullable
              as AdvertisementType,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<AdvertisementImage>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      mainCategory: null == mainCategory
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as Category,
      additionalCategory: freezed == additionalCategory
          ? _value.additionalCategory
          : additionalCategory // ignore: cast_nullable_to_non_nullable
              as Category?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
      attribute: freezed == attribute
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as Attribute?,
      additionalAttribute: freezed == additionalAttribute
          ? _value.additionalAttribute
          : additionalAttribute // ignore: cast_nullable_to_non_nullable
              as AdditionalAttribute?,
      subAttribute: freezed == subAttribute
          ? _value.subAttribute
          : subAttribute // ignore: cast_nullable_to_non_nullable
              as SubAttribute?,
    ) as $Val);
  }

  /// Create a copy of AdvertisementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdvertisementTypeCopyWith<$Res> get advertisementType {
    return $AdvertisementTypeCopyWith<$Res>(_value.advertisementType, (value) {
      return _then(_value.copyWith(advertisementType: value) as $Val);
    });
  }

  /// Create a copy of AdvertisementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get mainCategory {
    return $CategoryCopyWith<$Res>(_value.mainCategory, (value) {
      return _then(_value.copyWith(mainCategory: value) as $Val);
    });
  }

  /// Create a copy of AdvertisementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get additionalCategory {
    if (_value.additionalCategory == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.additionalCategory!, (value) {
      return _then(_value.copyWith(additionalCategory: value) as $Val);
    });
  }

  /// Create a copy of AdvertisementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubCategoryCopyWith<$Res>? get subCategory {
    if (_value.subCategory == null) {
      return null;
    }

    return $SubCategoryCopyWith<$Res>(_value.subCategory!, (value) {
      return _then(_value.copyWith(subCategory: value) as $Val);
    });
  }

  /// Create a copy of AdvertisementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttributeCopyWith<$Res>? get attribute {
    if (_value.attribute == null) {
      return null;
    }

    return $AttributeCopyWith<$Res>(_value.attribute!, (value) {
      return _then(_value.copyWith(attribute: value) as $Val);
    });
  }

  /// Create a copy of AdvertisementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdditionalAttributeCopyWith<$Res>? get additionalAttribute {
    if (_value.additionalAttribute == null) {
      return null;
    }

    return $AdditionalAttributeCopyWith<$Res>(_value.additionalAttribute!,
        (value) {
      return _then(_value.copyWith(additionalAttribute: value) as $Val);
    });
  }

  /// Create a copy of AdvertisementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubAttributeCopyWith<$Res>? get subAttribute {
    if (_value.subAttribute == null) {
      return null;
    }

    return $SubAttributeCopyWith<$Res>(_value.subAttribute!, (value) {
      return _then(_value.copyWith(subAttribute: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdvertisementModelImplCopyWith<$Res>
    implements $AdvertisementModelCopyWith<$Res> {
  factory _$$AdvertisementModelImplCopyWith(_$AdvertisementModelImpl value,
          $Res Function(_$AdvertisementModelImpl) then) =
      __$$AdvertisementModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int author,
      double latitude,
      double longitude,
      @JsonKey(name: 'ad_type') AdvertisementType advertisementType,
      String price,
      List<dynamic>? videos,
      List<AdvertisementImage> images,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'main_category') Category mainCategory,
      @JsonKey(name: "additional_category") Category? additionalCategory,
      @JsonKey(name: "sub_category") SubCategory? subCategory,
      Attribute? attribute,
      @JsonKey(name: "additional_attribute")
      AdditionalAttribute? additionalAttribute,
      @JsonKey(name: "subattribute") SubAttribute? subAttribute});

  @override
  $AdvertisementTypeCopyWith<$Res> get advertisementType;
  @override
  $CategoryCopyWith<$Res> get mainCategory;
  @override
  $CategoryCopyWith<$Res>? get additionalCategory;
  @override
  $SubCategoryCopyWith<$Res>? get subCategory;
  @override
  $AttributeCopyWith<$Res>? get attribute;
  @override
  $AdditionalAttributeCopyWith<$Res>? get additionalAttribute;
  @override
  $SubAttributeCopyWith<$Res>? get subAttribute;
}

/// @nodoc
class __$$AdvertisementModelImplCopyWithImpl<$Res>
    extends _$AdvertisementModelCopyWithImpl<$Res, _$AdvertisementModelImpl>
    implements _$$AdvertisementModelImplCopyWith<$Res> {
  __$$AdvertisementModelImplCopyWithImpl(_$AdvertisementModelImpl _value,
      $Res Function(_$AdvertisementModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? author = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? advertisementType = null,
    Object? price = null,
    Object? videos = freezed,
    Object? images = null,
    Object? createdAt = null,
    Object? mainCategory = null,
    Object? additionalCategory = freezed,
    Object? subCategory = freezed,
    Object? attribute = freezed,
    Object? additionalAttribute = freezed,
    Object? subAttribute = freezed,
  }) {
    return _then(_$AdvertisementModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      advertisementType: null == advertisementType
          ? _value.advertisementType
          : advertisementType // ignore: cast_nullable_to_non_nullable
              as AdvertisementType,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      videos: freezed == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<AdvertisementImage>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      mainCategory: null == mainCategory
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as Category,
      additionalCategory: freezed == additionalCategory
          ? _value.additionalCategory
          : additionalCategory // ignore: cast_nullable_to_non_nullable
              as Category?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
      attribute: freezed == attribute
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as Attribute?,
      additionalAttribute: freezed == additionalAttribute
          ? _value.additionalAttribute
          : additionalAttribute // ignore: cast_nullable_to_non_nullable
              as AdditionalAttribute?,
      subAttribute: freezed == subAttribute
          ? _value.subAttribute
          : subAttribute // ignore: cast_nullable_to_non_nullable
              as SubAttribute?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertisementModelImpl implements _AdvertisementModel {
  const _$AdvertisementModelImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.author,
      required this.latitude,
      required this.longitude,
      @JsonKey(name: 'ad_type') required this.advertisementType,
      required this.price,
      required final List<dynamic>? videos,
      required final List<AdvertisementImage> images,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'main_category') required this.mainCategory,
      @JsonKey(name: "additional_category") required this.additionalCategory,
      @JsonKey(name: "sub_category") required this.subCategory,
      required this.attribute,
      @JsonKey(name: "additional_attribute") required this.additionalAttribute,
      @JsonKey(name: "subattribute") required this.subAttribute})
      : _videos = videos,
        _images = images;

  factory _$AdvertisementModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertisementModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int author;
// required City city,
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  @JsonKey(name: 'ad_type')
  final AdvertisementType advertisementType;
  @override
  final String price;
  final List<dynamic>? _videos;
  @override
  List<dynamic>? get videos {
    final value = _videos;
    if (value == null) return null;
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AdvertisementImage> _images;
  @override
  List<AdvertisementImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'main_category')
  final Category mainCategory;
  @override
  @JsonKey(name: "additional_category")
  final Category? additionalCategory;
  @override
  @JsonKey(name: "sub_category")
  final SubCategory? subCategory;
  @override
  final Attribute? attribute;
  @override
  @JsonKey(name: "additional_attribute")
  final AdditionalAttribute? additionalAttribute;
  @override
  @JsonKey(name: "subattribute")
  final SubAttribute? subAttribute;

  @override
  String toString() {
    return 'AdvertisementModel(id: $id, name: $name, description: $description, author: $author, latitude: $latitude, longitude: $longitude, advertisementType: $advertisementType, price: $price, videos: $videos, images: $images, createdAt: $createdAt, mainCategory: $mainCategory, additionalCategory: $additionalCategory, subCategory: $subCategory, attribute: $attribute, additionalAttribute: $additionalAttribute, subAttribute: $subAttribute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.advertisementType, advertisementType) ||
                other.advertisementType == advertisementType) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.mainCategory, mainCategory) ||
                other.mainCategory == mainCategory) &&
            (identical(other.additionalCategory, additionalCategory) ||
                other.additionalCategory == additionalCategory) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.attribute, attribute) ||
                other.attribute == attribute) &&
            (identical(other.additionalAttribute, additionalAttribute) ||
                other.additionalAttribute == additionalAttribute) &&
            (identical(other.subAttribute, subAttribute) ||
                other.subAttribute == subAttribute));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      author,
      latitude,
      longitude,
      advertisementType,
      price,
      const DeepCollectionEquality().hash(_videos),
      const DeepCollectionEquality().hash(_images),
      createdAt,
      mainCategory,
      additionalCategory,
      subCategory,
      attribute,
      additionalAttribute,
      subAttribute);

  /// Create a copy of AdvertisementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementModelImplCopyWith<_$AdvertisementModelImpl> get copyWith =>
      __$$AdvertisementModelImplCopyWithImpl<_$AdvertisementModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertisementModelImplToJson(
      this,
    );
  }
}

abstract class _AdvertisementModel implements AdvertisementModel {
  const factory _AdvertisementModel(
      {required final int id,
      required final String name,
      required final String description,
      required final int author,
      required final double latitude,
      required final double longitude,
      @JsonKey(name: 'ad_type')
      required final AdvertisementType advertisementType,
      required final String price,
      required final List<dynamic>? videos,
      required final List<AdvertisementImage> images,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'main_category') required final Category mainCategory,
      @JsonKey(name: "additional_category")
      required final Category? additionalCategory,
      @JsonKey(name: "sub_category") required final SubCategory? subCategory,
      required final Attribute? attribute,
      @JsonKey(name: "additional_attribute")
      required final AdditionalAttribute? additionalAttribute,
      @JsonKey(name: "subattribute")
      required final SubAttribute? subAttribute}) = _$AdvertisementModelImpl;

  factory _AdvertisementModel.fromJson(Map<String, dynamic> json) =
      _$AdvertisementModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get author; // required City city,
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(name: 'ad_type')
  AdvertisementType get advertisementType;
  @override
  String get price;
  @override
  List<dynamic>? get videos;
  @override
  List<AdvertisementImage> get images;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'main_category')
  Category get mainCategory;
  @override
  @JsonKey(name: "additional_category")
  Category? get additionalCategory;
  @override
  @JsonKey(name: "sub_category")
  SubCategory? get subCategory;
  @override
  Attribute? get attribute;
  @override
  @JsonKey(name: "additional_attribute")
  AdditionalAttribute? get additionalAttribute;
  @override
  @JsonKey(name: "subattribute")
  SubAttribute? get subAttribute;

  /// Create a copy of AdvertisementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvertisementModelImplCopyWith<_$AdvertisementModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "city_name")
  String get cityName => throw _privateConstructorUsedError;

  /// Serializes this City to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call({int id, @JsonKey(name: "city_name") String cityName});
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cityName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityImplCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$CityImplCopyWith(
          _$CityImpl value, $Res Function(_$CityImpl) then) =
      __$$CityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: "city_name") String cityName});
}

/// @nodoc
class __$$CityImplCopyWithImpl<$Res>
    extends _$CityCopyWithImpl<$Res, _$CityImpl>
    implements _$$CityImplCopyWith<$Res> {
  __$$CityImplCopyWithImpl(_$CityImpl _value, $Res Function(_$CityImpl) _then)
      : super(_value, _then);

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cityName = null,
  }) {
    return _then(_$CityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityImpl implements _City {
  const _$CityImpl(
      {required this.id, @JsonKey(name: "city_name") required this.cityName});

  factory _$CityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "city_name")
  final String cityName;

  @override
  String toString() {
    return 'City(id: $id, cityName: $cityName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, cityName);

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      __$$CityImplCopyWithImpl<_$CityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityImplToJson(
      this,
    );
  }
}

abstract class _City implements City {
  const factory _City(
      {required final int id,
      @JsonKey(name: "city_name") required final String cityName}) = _$CityImpl;

  factory _City.fromJson(Map<String, dynamic> json) = _$CityImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "city_name")
  String get cityName;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdvertisementType _$AdvertisementTypeFromJson(Map<String, dynamic> json) {
  return _AdvertisementType.fromJson(json);
}

/// @nodoc
mixin _$AdvertisementType {
  String get type => throw _privateConstructorUsedError;

  /// Serializes this AdvertisementType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdvertisementType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdvertisementTypeCopyWith<AdvertisementType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementTypeCopyWith<$Res> {
  factory $AdvertisementTypeCopyWith(
          AdvertisementType value, $Res Function(AdvertisementType) then) =
      _$AdvertisementTypeCopyWithImpl<$Res, AdvertisementType>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class _$AdvertisementTypeCopyWithImpl<$Res, $Val extends AdvertisementType>
    implements $AdvertisementTypeCopyWith<$Res> {
  _$AdvertisementTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdvertisementType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvertisementTypeImplCopyWith<$Res>
    implements $AdvertisementTypeCopyWith<$Res> {
  factory _$$AdvertisementTypeImplCopyWith(_$AdvertisementTypeImpl value,
          $Res Function(_$AdvertisementTypeImpl) then) =
      __$$AdvertisementTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$AdvertisementTypeImplCopyWithImpl<$Res>
    extends _$AdvertisementTypeCopyWithImpl<$Res, _$AdvertisementTypeImpl>
    implements _$$AdvertisementTypeImplCopyWith<$Res> {
  __$$AdvertisementTypeImplCopyWithImpl(_$AdvertisementTypeImpl _value,
      $Res Function(_$AdvertisementTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisementType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$AdvertisementTypeImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertisementTypeImpl implements _AdvertisementType {
  const _$AdvertisementTypeImpl({required this.type});

  factory _$AdvertisementTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertisementTypeImplFromJson(json);

  @override
  final String type;

  @override
  String toString() {
    return 'AdvertisementType(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementTypeImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AdvertisementType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementTypeImplCopyWith<_$AdvertisementTypeImpl> get copyWith =>
      __$$AdvertisementTypeImplCopyWithImpl<_$AdvertisementTypeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertisementTypeImplToJson(
      this,
    );
  }
}

abstract class _AdvertisementType implements AdvertisementType {
  const factory _AdvertisementType({required final String type}) =
      _$AdvertisementTypeImpl;

  factory _AdvertisementType.fromJson(Map<String, dynamic> json) =
      _$AdvertisementTypeImpl.fromJson;

  @override
  String get type;

  /// Create a copy of AdvertisementType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvertisementTypeImplCopyWith<_$AdvertisementTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdvertisementImage _$AdvertisementImageFromJson(Map<String, dynamic> json) {
  return _AdvertisementImage.fromJson(json);
}

/// @nodoc
mixin _$AdvertisementImage {
  int get id => throw _privateConstructorUsedError;
  int get ad => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this AdvertisementImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdvertisementImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdvertisementImageCopyWith<AdvertisementImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementImageCopyWith<$Res> {
  factory $AdvertisementImageCopyWith(
          AdvertisementImage value, $Res Function(AdvertisementImage) then) =
      _$AdvertisementImageCopyWithImpl<$Res, AdvertisementImage>;
  @useResult
  $Res call({int id, int ad, String image});
}

/// @nodoc
class _$AdvertisementImageCopyWithImpl<$Res, $Val extends AdvertisementImage>
    implements $AdvertisementImageCopyWith<$Res> {
  _$AdvertisementImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdvertisementImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ad = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ad: null == ad
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvertisementImageImplCopyWith<$Res>
    implements $AdvertisementImageCopyWith<$Res> {
  factory _$$AdvertisementImageImplCopyWith(_$AdvertisementImageImpl value,
          $Res Function(_$AdvertisementImageImpl) then) =
      __$$AdvertisementImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int ad, String image});
}

/// @nodoc
class __$$AdvertisementImageImplCopyWithImpl<$Res>
    extends _$AdvertisementImageCopyWithImpl<$Res, _$AdvertisementImageImpl>
    implements _$$AdvertisementImageImplCopyWith<$Res> {
  __$$AdvertisementImageImplCopyWithImpl(_$AdvertisementImageImpl _value,
      $Res Function(_$AdvertisementImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisementImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ad = null,
    Object? image = null,
  }) {
    return _then(_$AdvertisementImageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ad: null == ad
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertisementImageImpl implements _AdvertisementImage {
  const _$AdvertisementImageImpl(
      {required this.id, required this.ad, required this.image});

  factory _$AdvertisementImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertisementImageImplFromJson(json);

  @override
  final int id;
  @override
  final int ad;
  @override
  final String image;

  @override
  String toString() {
    return 'AdvertisementImage(id: $id, ad: $ad, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ad, ad) || other.ad == ad) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, ad, image);

  /// Create a copy of AdvertisementImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementImageImplCopyWith<_$AdvertisementImageImpl> get copyWith =>
      __$$AdvertisementImageImplCopyWithImpl<_$AdvertisementImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertisementImageImplToJson(
      this,
    );
  }
}

abstract class _AdvertisementImage implements AdvertisementImage {
  const factory _AdvertisementImage(
      {required final int id,
      required final int ad,
      required final String image}) = _$AdvertisementImageImpl;

  factory _AdvertisementImage.fromJson(Map<String, dynamic> json) =
      _$AdvertisementImageImpl.fromJson;

  @override
  int get id;
  @override
  int get ad;
  @override
  String get image;

  /// Create a copy of AdvertisementImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvertisementImageImplCopyWith<_$AdvertisementImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Category
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
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CategoryImpl(
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
class _$CategoryImpl implements _Category {
  const _$CategoryImpl({required this.id, required this.name});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Category(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category({required final int id, required final String name}) =
      _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) {
  return _SubCategory.fromJson(json);
}

/// @nodoc
mixin _$SubCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_category")
  Category get additionalCategory => throw _privateConstructorUsedError;

  /// Serializes this SubCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubCategoryCopyWith<SubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryCopyWith<$Res> {
  factory $SubCategoryCopyWith(
          SubCategory value, $Res Function(SubCategory) then) =
      _$SubCategoryCopyWithImpl<$Res, SubCategory>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "additional_category") Category additionalCategory});

  $CategoryCopyWith<$Res> get additionalCategory;
}

/// @nodoc
class _$SubCategoryCopyWithImpl<$Res, $Val extends SubCategory>
    implements $SubCategoryCopyWith<$Res> {
  _$SubCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? additionalCategory = null,
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
      additionalCategory: null == additionalCategory
          ? _value.additionalCategory
          : additionalCategory // ignore: cast_nullable_to_non_nullable
              as Category,
    ) as $Val);
  }

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get additionalCategory {
    return $CategoryCopyWith<$Res>(_value.additionalCategory, (value) {
      return _then(_value.copyWith(additionalCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubCategoryImplCopyWith<$Res>
    implements $SubCategoryCopyWith<$Res> {
  factory _$$SubCategoryImplCopyWith(
          _$SubCategoryImpl value, $Res Function(_$SubCategoryImpl) then) =
      __$$SubCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "additional_category") Category additionalCategory});

  @override
  $CategoryCopyWith<$Res> get additionalCategory;
}

/// @nodoc
class __$$SubCategoryImplCopyWithImpl<$Res>
    extends _$SubCategoryCopyWithImpl<$Res, _$SubCategoryImpl>
    implements _$$SubCategoryImplCopyWith<$Res> {
  __$$SubCategoryImplCopyWithImpl(
      _$SubCategoryImpl _value, $Res Function(_$SubCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? additionalCategory = null,
  }) {
    return _then(_$SubCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      additionalCategory: null == additionalCategory
          ? _value.additionalCategory
          : additionalCategory // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubCategoryImpl implements _SubCategory {
  const _$SubCategoryImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: "additional_category") required this.additionalCategory});

  factory _$SubCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: "additional_category")
  final Category additionalCategory;

  @override
  String toString() {
    return 'SubCategory(id: $id, name: $name, additionalCategory: $additionalCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.additionalCategory, additionalCategory) ||
                other.additionalCategory == additionalCategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, additionalCategory);

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoryImplCopyWith<_$SubCategoryImpl> get copyWith =>
      __$$SubCategoryImplCopyWithImpl<_$SubCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubCategoryImplToJson(
      this,
    );
  }
}

abstract class _SubCategory implements SubCategory {
  const factory _SubCategory(
      {required final int id,
      required final String name,
      @JsonKey(name: "additional_category")
      required final Category additionalCategory}) = _$SubCategoryImpl;

  factory _SubCategory.fromJson(Map<String, dynamic> json) =
      _$SubCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: "additional_category")
  Category get additionalCategory;

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubCategoryImplCopyWith<_$SubCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attribute _$AttributeFromJson(Map<String, dynamic> json) {
  return _Attribute.fromJson(json);
}

/// @nodoc
mixin _$Attribute {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "main_category")
  Category get mainCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_category")
  Category get additionalCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "subcategory")
  SubCategory get subCategory => throw _privateConstructorUsedError;

  /// Serializes this Attribute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributeCopyWith<Attribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeCopyWith<$Res> {
  factory $AttributeCopyWith(Attribute value, $Res Function(Attribute) then) =
      _$AttributeCopyWithImpl<$Res, Attribute>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "main_category") Category mainCategory,
      @JsonKey(name: "additional_category") Category additionalCategory,
      @JsonKey(name: "subcategory") SubCategory subCategory});

  $CategoryCopyWith<$Res> get mainCategory;
  $CategoryCopyWith<$Res> get additionalCategory;
  $SubCategoryCopyWith<$Res> get subCategory;
}

/// @nodoc
class _$AttributeCopyWithImpl<$Res, $Val extends Attribute>
    implements $AttributeCopyWith<$Res> {
  _$AttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mainCategory = null,
    Object? additionalCategory = null,
    Object? subCategory = null,
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
      mainCategory: null == mainCategory
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as Category,
      additionalCategory: null == additionalCategory
          ? _value.additionalCategory
          : additionalCategory // ignore: cast_nullable_to_non_nullable
              as Category,
      subCategory: null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory,
    ) as $Val);
  }

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get mainCategory {
    return $CategoryCopyWith<$Res>(_value.mainCategory, (value) {
      return _then(_value.copyWith(mainCategory: value) as $Val);
    });
  }

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get additionalCategory {
    return $CategoryCopyWith<$Res>(_value.additionalCategory, (value) {
      return _then(_value.copyWith(additionalCategory: value) as $Val);
    });
  }

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubCategoryCopyWith<$Res> get subCategory {
    return $SubCategoryCopyWith<$Res>(_value.subCategory, (value) {
      return _then(_value.copyWith(subCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttributeImplCopyWith<$Res>
    implements $AttributeCopyWith<$Res> {
  factory _$$AttributeImplCopyWith(
          _$AttributeImpl value, $Res Function(_$AttributeImpl) then) =
      __$$AttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "main_category") Category mainCategory,
      @JsonKey(name: "additional_category") Category additionalCategory,
      @JsonKey(name: "subcategory") SubCategory subCategory});

  @override
  $CategoryCopyWith<$Res> get mainCategory;
  @override
  $CategoryCopyWith<$Res> get additionalCategory;
  @override
  $SubCategoryCopyWith<$Res> get subCategory;
}

/// @nodoc
class __$$AttributeImplCopyWithImpl<$Res>
    extends _$AttributeCopyWithImpl<$Res, _$AttributeImpl>
    implements _$$AttributeImplCopyWith<$Res> {
  __$$AttributeImplCopyWithImpl(
      _$AttributeImpl _value, $Res Function(_$AttributeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mainCategory = null,
    Object? additionalCategory = null,
    Object? subCategory = null,
  }) {
    return _then(_$AttributeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mainCategory: null == mainCategory
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as Category,
      additionalCategory: null == additionalCategory
          ? _value.additionalCategory
          : additionalCategory // ignore: cast_nullable_to_non_nullable
              as Category,
      subCategory: null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributeImpl implements _Attribute {
  const _$AttributeImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: "main_category") required this.mainCategory,
      @JsonKey(name: "additional_category") required this.additionalCategory,
      @JsonKey(name: "subcategory") required this.subCategory});

  factory _$AttributeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: "main_category")
  final Category mainCategory;
  @override
  @JsonKey(name: "additional_category")
  final Category additionalCategory;
  @override
  @JsonKey(name: "subcategory")
  final SubCategory subCategory;

  @override
  String toString() {
    return 'Attribute(id: $id, name: $name, mainCategory: $mainCategory, additionalCategory: $additionalCategory, subCategory: $subCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mainCategory, mainCategory) ||
                other.mainCategory == mainCategory) &&
            (identical(other.additionalCategory, additionalCategory) ||
                other.additionalCategory == additionalCategory) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, mainCategory, additionalCategory, subCategory);

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeImplCopyWith<_$AttributeImpl> get copyWith =>
      __$$AttributeImplCopyWithImpl<_$AttributeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeImplToJson(
      this,
    );
  }
}

abstract class _Attribute implements Attribute {
  const factory _Attribute(
      {required final int id,
      required final String name,
      @JsonKey(name: "main_category") required final Category mainCategory,
      @JsonKey(name: "additional_category")
      required final Category additionalCategory,
      @JsonKey(name: "subcategory")
      required final SubCategory subCategory}) = _$AttributeImpl;

  factory _Attribute.fromJson(Map<String, dynamic> json) =
      _$AttributeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: "main_category")
  Category get mainCategory;
  @override
  @JsonKey(name: "additional_category")
  Category get additionalCategory;
  @override
  @JsonKey(name: "subcategory")
  SubCategory get subCategory;

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeImplCopyWith<_$AttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdditionalAttribute _$AdditionalAttributeFromJson(Map<String, dynamic> json) {
  return _AdditionalAttribute.fromJson(json);
}

/// @nodoc
mixin _$AdditionalAttribute {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Attribute get attribute => throw _privateConstructorUsedError;

  /// Serializes this AdditionalAttribute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdditionalAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdditionalAttributeCopyWith<AdditionalAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalAttributeCopyWith<$Res> {
  factory $AdditionalAttributeCopyWith(
          AdditionalAttribute value, $Res Function(AdditionalAttribute) then) =
      _$AdditionalAttributeCopyWithImpl<$Res, AdditionalAttribute>;
  @useResult
  $Res call({int id, String name, Attribute attribute});

  $AttributeCopyWith<$Res> get attribute;
}

/// @nodoc
class _$AdditionalAttributeCopyWithImpl<$Res, $Val extends AdditionalAttribute>
    implements $AdditionalAttributeCopyWith<$Res> {
  _$AdditionalAttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdditionalAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? attribute = null,
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
      attribute: null == attribute
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as Attribute,
    ) as $Val);
  }

  /// Create a copy of AdditionalAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttributeCopyWith<$Res> get attribute {
    return $AttributeCopyWith<$Res>(_value.attribute, (value) {
      return _then(_value.copyWith(attribute: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdditionalAttributeImplCopyWith<$Res>
    implements $AdditionalAttributeCopyWith<$Res> {
  factory _$$AdditionalAttributeImplCopyWith(_$AdditionalAttributeImpl value,
          $Res Function(_$AdditionalAttributeImpl) then) =
      __$$AdditionalAttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, Attribute attribute});

  @override
  $AttributeCopyWith<$Res> get attribute;
}

/// @nodoc
class __$$AdditionalAttributeImplCopyWithImpl<$Res>
    extends _$AdditionalAttributeCopyWithImpl<$Res, _$AdditionalAttributeImpl>
    implements _$$AdditionalAttributeImplCopyWith<$Res> {
  __$$AdditionalAttributeImplCopyWithImpl(_$AdditionalAttributeImpl _value,
      $Res Function(_$AdditionalAttributeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? attribute = null,
  }) {
    return _then(_$AdditionalAttributeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attribute: null == attribute
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as Attribute,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionalAttributeImpl implements _AdditionalAttribute {
  const _$AdditionalAttributeImpl(
      {required this.id, required this.name, required this.attribute});

  factory _$AdditionalAttributeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdditionalAttributeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final Attribute attribute;

  @override
  String toString() {
    return 'AdditionalAttribute(id: $id, name: $name, attribute: $attribute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalAttributeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.attribute, attribute) ||
                other.attribute == attribute));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, attribute);

  /// Create a copy of AdditionalAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalAttributeImplCopyWith<_$AdditionalAttributeImpl> get copyWith =>
      __$$AdditionalAttributeImplCopyWithImpl<_$AdditionalAttributeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalAttributeImplToJson(
      this,
    );
  }
}

abstract class _AdditionalAttribute implements AdditionalAttribute {
  const factory _AdditionalAttribute(
      {required final int id,
      required final String name,
      required final Attribute attribute}) = _$AdditionalAttributeImpl;

  factory _AdditionalAttribute.fromJson(Map<String, dynamic> json) =
      _$AdditionalAttributeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  Attribute get attribute;

  /// Create a copy of AdditionalAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdditionalAttributeImplCopyWith<_$AdditionalAttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubAttribute _$SubAttributeFromJson(Map<String, dynamic> json) {
  return _SubAttribute.fromJson(json);
}

/// @nodoc
mixin _$SubAttribute {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_attribute")
  AdditionalAttribute get additionalAttribute =>
      throw _privateConstructorUsedError;

  /// Serializes this SubAttribute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubAttributeCopyWith<SubAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubAttributeCopyWith<$Res> {
  factory $SubAttributeCopyWith(
          SubAttribute value, $Res Function(SubAttribute) then) =
      _$SubAttributeCopyWithImpl<$Res, SubAttribute>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "additional_attribute")
      AdditionalAttribute additionalAttribute});

  $AdditionalAttributeCopyWith<$Res> get additionalAttribute;
}

/// @nodoc
class _$SubAttributeCopyWithImpl<$Res, $Val extends SubAttribute>
    implements $SubAttributeCopyWith<$Res> {
  _$SubAttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? additionalAttribute = null,
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
      additionalAttribute: null == additionalAttribute
          ? _value.additionalAttribute
          : additionalAttribute // ignore: cast_nullable_to_non_nullable
              as AdditionalAttribute,
    ) as $Val);
  }

  /// Create a copy of SubAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdditionalAttributeCopyWith<$Res> get additionalAttribute {
    return $AdditionalAttributeCopyWith<$Res>(_value.additionalAttribute,
        (value) {
      return _then(_value.copyWith(additionalAttribute: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubAttributeImplCopyWith<$Res>
    implements $SubAttributeCopyWith<$Res> {
  factory _$$SubAttributeImplCopyWith(
          _$SubAttributeImpl value, $Res Function(_$SubAttributeImpl) then) =
      __$$SubAttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "additional_attribute")
      AdditionalAttribute additionalAttribute});

  @override
  $AdditionalAttributeCopyWith<$Res> get additionalAttribute;
}

/// @nodoc
class __$$SubAttributeImplCopyWithImpl<$Res>
    extends _$SubAttributeCopyWithImpl<$Res, _$SubAttributeImpl>
    implements _$$SubAttributeImplCopyWith<$Res> {
  __$$SubAttributeImplCopyWithImpl(
      _$SubAttributeImpl _value, $Res Function(_$SubAttributeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? additionalAttribute = null,
  }) {
    return _then(_$SubAttributeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      additionalAttribute: null == additionalAttribute
          ? _value.additionalAttribute
          : additionalAttribute // ignore: cast_nullable_to_non_nullable
              as AdditionalAttribute,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubAttributeImpl implements _SubAttribute {
  const _$SubAttributeImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: "additional_attribute")
      required this.additionalAttribute});

  factory _$SubAttributeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubAttributeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: "additional_attribute")
  final AdditionalAttribute additionalAttribute;

  @override
  String toString() {
    return 'SubAttribute(id: $id, name: $name, additionalAttribute: $additionalAttribute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubAttributeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.additionalAttribute, additionalAttribute) ||
                other.additionalAttribute == additionalAttribute));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, additionalAttribute);

  /// Create a copy of SubAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubAttributeImplCopyWith<_$SubAttributeImpl> get copyWith =>
      __$$SubAttributeImplCopyWithImpl<_$SubAttributeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubAttributeImplToJson(
      this,
    );
  }
}

abstract class _SubAttribute implements SubAttribute {
  const factory _SubAttribute(
          {required final int id,
          required final String name,
          @JsonKey(name: "additional_attribute")
          required final AdditionalAttribute additionalAttribute}) =
      _$SubAttributeImpl;

  factory _SubAttribute.fromJson(Map<String, dynamic> json) =
      _$SubAttributeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: "additional_attribute")
  AdditionalAttribute get additionalAttribute;

  /// Create a copy of SubAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubAttributeImplCopyWith<_$SubAttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
