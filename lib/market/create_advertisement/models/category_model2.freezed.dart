// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryResponse2 _$CategoryResponse2FromJson(Map<String, dynamic> json) {
  return _CategoryResponse2.fromJson(json);
}

/// @nodoc
mixin _$CategoryResponse2 {
  @JsonKey(name: 'current_category_main')
  MainCategory get currentCategoryMain => throw _privateConstructorUsedError;
  List<AdvertisementModel> get ads => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_category')
  List<AdditionalCategory> get additionalCategory =>
      throw _privateConstructorUsedError;
  List<Attribute> get attributes => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_attributes')
  List<AdditionalAttribute> get additionalAttributes =>
      throw _privateConstructorUsedError;
  List<Subattribute> get subattributes => throw _privateConstructorUsedError;

  /// Serializes this CategoryResponse2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryResponse2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryResponse2CopyWith<CategoryResponse2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponse2CopyWith<$Res> {
  factory $CategoryResponse2CopyWith(
          CategoryResponse2 value, $Res Function(CategoryResponse2) then) =
      _$CategoryResponse2CopyWithImpl<$Res, CategoryResponse2>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_category_main') MainCategory currentCategoryMain,
      List<AdvertisementModel> ads,
      @JsonKey(name: 'additional_category')
      List<AdditionalCategory> additionalCategory,
      List<Attribute> attributes,
      @JsonKey(name: 'additional_attributes')
      List<AdditionalAttribute> additionalAttributes,
      List<Subattribute> subattributes});

  $MainCategoryCopyWith<$Res> get currentCategoryMain;
}

/// @nodoc
class _$CategoryResponse2CopyWithImpl<$Res, $Val extends CategoryResponse2>
    implements $CategoryResponse2CopyWith<$Res> {
  _$CategoryResponse2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryResponse2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentCategoryMain = null,
    Object? ads = null,
    Object? additionalCategory = null,
    Object? attributes = null,
    Object? additionalAttributes = null,
    Object? subattributes = null,
  }) {
    return _then(_value.copyWith(
      currentCategoryMain: null == currentCategoryMain
          ? _value.currentCategoryMain
          : currentCategoryMain // ignore: cast_nullable_to_non_nullable
              as MainCategory,
      ads: null == ads
          ? _value.ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<AdvertisementModel>,
      additionalCategory: null == additionalCategory
          ? _value.additionalCategory
          : additionalCategory // ignore: cast_nullable_to_non_nullable
              as List<AdditionalCategory>,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<Attribute>,
      additionalAttributes: null == additionalAttributes
          ? _value.additionalAttributes
          : additionalAttributes // ignore: cast_nullable_to_non_nullable
              as List<AdditionalAttribute>,
      subattributes: null == subattributes
          ? _value.subattributes
          : subattributes // ignore: cast_nullable_to_non_nullable
              as List<Subattribute>,
    ) as $Val);
  }

  /// Create a copy of CategoryResponse2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainCategoryCopyWith<$Res> get currentCategoryMain {
    return $MainCategoryCopyWith<$Res>(_value.currentCategoryMain, (value) {
      return _then(_value.copyWith(currentCategoryMain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryResponse2ImplCopyWith<$Res>
    implements $CategoryResponse2CopyWith<$Res> {
  factory _$$CategoryResponse2ImplCopyWith(_$CategoryResponse2Impl value,
          $Res Function(_$CategoryResponse2Impl) then) =
      __$$CategoryResponse2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_category_main') MainCategory currentCategoryMain,
      List<AdvertisementModel> ads,
      @JsonKey(name: 'additional_category')
      List<AdditionalCategory> additionalCategory,
      List<Attribute> attributes,
      @JsonKey(name: 'additional_attributes')
      List<AdditionalAttribute> additionalAttributes,
      List<Subattribute> subattributes});

  @override
  $MainCategoryCopyWith<$Res> get currentCategoryMain;
}

/// @nodoc
class __$$CategoryResponse2ImplCopyWithImpl<$Res>
    extends _$CategoryResponse2CopyWithImpl<$Res, _$CategoryResponse2Impl>
    implements _$$CategoryResponse2ImplCopyWith<$Res> {
  __$$CategoryResponse2ImplCopyWithImpl(_$CategoryResponse2Impl _value,
      $Res Function(_$CategoryResponse2Impl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryResponse2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentCategoryMain = null,
    Object? ads = null,
    Object? additionalCategory = null,
    Object? attributes = null,
    Object? additionalAttributes = null,
    Object? subattributes = null,
  }) {
    return _then(_$CategoryResponse2Impl(
      currentCategoryMain: null == currentCategoryMain
          ? _value.currentCategoryMain
          : currentCategoryMain // ignore: cast_nullable_to_non_nullable
              as MainCategory,
      ads: null == ads
          ? _value._ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<AdvertisementModel>,
      additionalCategory: null == additionalCategory
          ? _value._additionalCategory
          : additionalCategory // ignore: cast_nullable_to_non_nullable
              as List<AdditionalCategory>,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<Attribute>,
      additionalAttributes: null == additionalAttributes
          ? _value._additionalAttributes
          : additionalAttributes // ignore: cast_nullable_to_non_nullable
              as List<AdditionalAttribute>,
      subattributes: null == subattributes
          ? _value._subattributes
          : subattributes // ignore: cast_nullable_to_non_nullable
              as List<Subattribute>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryResponse2Impl implements _CategoryResponse2 {
  const _$CategoryResponse2Impl(
      {@JsonKey(name: 'current_category_main')
      required this.currentCategoryMain,
      required final List<AdvertisementModel> ads,
      @JsonKey(name: 'additional_category')
      required final List<AdditionalCategory> additionalCategory,
      required final List<Attribute> attributes,
      @JsonKey(name: 'additional_attributes')
      required final List<AdditionalAttribute> additionalAttributes,
      required final List<Subattribute> subattributes})
      : _ads = ads,
        _additionalCategory = additionalCategory,
        _attributes = attributes,
        _additionalAttributes = additionalAttributes,
        _subattributes = subattributes;

  factory _$CategoryResponse2Impl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryResponse2ImplFromJson(json);

  @override
  @JsonKey(name: 'current_category_main')
  final MainCategory currentCategoryMain;
  final List<AdvertisementModel> _ads;
  @override
  List<AdvertisementModel> get ads {
    if (_ads is EqualUnmodifiableListView) return _ads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ads);
  }

  final List<AdditionalCategory> _additionalCategory;
  @override
  @JsonKey(name: 'additional_category')
  List<AdditionalCategory> get additionalCategory {
    if (_additionalCategory is EqualUnmodifiableListView)
      return _additionalCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_additionalCategory);
  }

  final List<Attribute> _attributes;
  @override
  List<Attribute> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  final List<AdditionalAttribute> _additionalAttributes;
  @override
  @JsonKey(name: 'additional_attributes')
  List<AdditionalAttribute> get additionalAttributes {
    if (_additionalAttributes is EqualUnmodifiableListView)
      return _additionalAttributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_additionalAttributes);
  }

  final List<Subattribute> _subattributes;
  @override
  List<Subattribute> get subattributes {
    if (_subattributes is EqualUnmodifiableListView) return _subattributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subattributes);
  }

  @override
  String toString() {
    return 'CategoryResponse2(currentCategoryMain: $currentCategoryMain, ads: $ads, additionalCategory: $additionalCategory, attributes: $attributes, additionalAttributes: $additionalAttributes, subattributes: $subattributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryResponse2Impl &&
            (identical(other.currentCategoryMain, currentCategoryMain) ||
                other.currentCategoryMain == currentCategoryMain) &&
            const DeepCollectionEquality().equals(other._ads, _ads) &&
            const DeepCollectionEquality()
                .equals(other._additionalCategory, _additionalCategory) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality()
                .equals(other._additionalAttributes, _additionalAttributes) &&
            const DeepCollectionEquality()
                .equals(other._subattributes, _subattributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentCategoryMain,
      const DeepCollectionEquality().hash(_ads),
      const DeepCollectionEquality().hash(_additionalCategory),
      const DeepCollectionEquality().hash(_attributes),
      const DeepCollectionEquality().hash(_additionalAttributes),
      const DeepCollectionEquality().hash(_subattributes));

  /// Create a copy of CategoryResponse2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryResponse2ImplCopyWith<_$CategoryResponse2Impl> get copyWith =>
      __$$CategoryResponse2ImplCopyWithImpl<_$CategoryResponse2Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryResponse2ImplToJson(
      this,
    );
  }
}

abstract class _CategoryResponse2 implements CategoryResponse2 {
  const factory _CategoryResponse2(
          {@JsonKey(name: 'current_category_main')
          required final MainCategory currentCategoryMain,
          required final List<AdvertisementModel> ads,
          @JsonKey(name: 'additional_category')
          required final List<AdditionalCategory> additionalCategory,
          required final List<Attribute> attributes,
          @JsonKey(name: 'additional_attributes')
          required final List<AdditionalAttribute> additionalAttributes,
          required final List<Subattribute> subattributes}) =
      _$CategoryResponse2Impl;

  factory _CategoryResponse2.fromJson(Map<String, dynamic> json) =
      _$CategoryResponse2Impl.fromJson;

  @override
  @JsonKey(name: 'current_category_main')
  MainCategory get currentCategoryMain;
  @override
  List<AdvertisementModel> get ads;
  @override
  @JsonKey(name: 'additional_category')
  List<AdditionalCategory> get additionalCategory;
  @override
  List<Attribute> get attributes;
  @override
  @JsonKey(name: 'additional_attributes')
  List<AdditionalAttribute> get additionalAttributes;
  @override
  List<Subattribute> get subattributes;

  /// Create a copy of CategoryResponse2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryResponse2ImplCopyWith<_$CategoryResponse2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdditionalCategory _$AdditionalCategoryFromJson(Map<String, dynamic> json) {
  return _AdditionalCategory.fromJson(json);
}

/// @nodoc
mixin _$AdditionalCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_category')
  MainCategory get mainCategory => throw _privateConstructorUsedError;

  /// Serializes this AdditionalCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdditionalCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdditionalCategoryCopyWith<AdditionalCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalCategoryCopyWith<$Res> {
  factory $AdditionalCategoryCopyWith(
          AdditionalCategory value, $Res Function(AdditionalCategory) then) =
      _$AdditionalCategoryCopyWithImpl<$Res, AdditionalCategory>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'main_category') MainCategory mainCategory});

  $MainCategoryCopyWith<$Res> get mainCategory;
}

/// @nodoc
class _$AdditionalCategoryCopyWithImpl<$Res, $Val extends AdditionalCategory>
    implements $AdditionalCategoryCopyWith<$Res> {
  _$AdditionalCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdditionalCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mainCategory = null,
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
              as MainCategory,
    ) as $Val);
  }

  /// Create a copy of AdditionalCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainCategoryCopyWith<$Res> get mainCategory {
    return $MainCategoryCopyWith<$Res>(_value.mainCategory, (value) {
      return _then(_value.copyWith(mainCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdditionalCategoryImplCopyWith<$Res>
    implements $AdditionalCategoryCopyWith<$Res> {
  factory _$$AdditionalCategoryImplCopyWith(_$AdditionalCategoryImpl value,
          $Res Function(_$AdditionalCategoryImpl) then) =
      __$$AdditionalCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'main_category') MainCategory mainCategory});

  @override
  $MainCategoryCopyWith<$Res> get mainCategory;
}

/// @nodoc
class __$$AdditionalCategoryImplCopyWithImpl<$Res>
    extends _$AdditionalCategoryCopyWithImpl<$Res, _$AdditionalCategoryImpl>
    implements _$$AdditionalCategoryImplCopyWith<$Res> {
  __$$AdditionalCategoryImplCopyWithImpl(_$AdditionalCategoryImpl _value,
      $Res Function(_$AdditionalCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mainCategory = null,
  }) {
    return _then(_$AdditionalCategoryImpl(
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
              as MainCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionalCategoryImpl implements _AdditionalCategory {
  const _$AdditionalCategoryImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'main_category') required this.mainCategory});

  factory _$AdditionalCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdditionalCategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'main_category')
  final MainCategory mainCategory;

  @override
  String toString() {
    return 'AdditionalCategory(id: $id, name: $name, mainCategory: $mainCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mainCategory, mainCategory) ||
                other.mainCategory == mainCategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, mainCategory);

  /// Create a copy of AdditionalCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalCategoryImplCopyWith<_$AdditionalCategoryImpl> get copyWith =>
      __$$AdditionalCategoryImplCopyWithImpl<_$AdditionalCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalCategoryImplToJson(
      this,
    );
  }
}

abstract class _AdditionalCategory implements AdditionalCategory {
  const factory _AdditionalCategory(
      {required final int id,
      required final String name,
      @JsonKey(name: 'main_category')
      required final MainCategory mainCategory}) = _$AdditionalCategoryImpl;

  factory _AdditionalCategory.fromJson(Map<String, dynamic> json) =
      _$AdditionalCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'main_category')
  MainCategory get mainCategory;

  /// Create a copy of AdditionalCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdditionalCategoryImplCopyWith<_$AdditionalCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attribute _$AttributeFromJson(Map<String, dynamic> json) {
  return _Attribute.fromJson(json);
}

/// @nodoc
mixin _$Attribute {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_category')
  MainCategory get mainCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_category')
  AdditionalCategory get additionalCategory =>
      throw _privateConstructorUsedError;
  Subcategory get subcategory => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'main_category') MainCategory mainCategory,
      @JsonKey(name: 'additional_category')
      AdditionalCategory additionalCategory,
      Subcategory subcategory});

  $MainCategoryCopyWith<$Res> get mainCategory;
  $AdditionalCategoryCopyWith<$Res> get additionalCategory;
  $SubcategoryCopyWith<$Res> get subcategory;
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
    Object? subcategory = null,
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
              as MainCategory,
      additionalCategory: null == additionalCategory
          ? _value.additionalCategory
          : additionalCategory // ignore: cast_nullable_to_non_nullable
              as AdditionalCategory,
      subcategory: null == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as Subcategory,
    ) as $Val);
  }

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainCategoryCopyWith<$Res> get mainCategory {
    return $MainCategoryCopyWith<$Res>(_value.mainCategory, (value) {
      return _then(_value.copyWith(mainCategory: value) as $Val);
    });
  }

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdditionalCategoryCopyWith<$Res> get additionalCategory {
    return $AdditionalCategoryCopyWith<$Res>(_value.additionalCategory,
        (value) {
      return _then(_value.copyWith(additionalCategory: value) as $Val);
    });
  }

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubcategoryCopyWith<$Res> get subcategory {
    return $SubcategoryCopyWith<$Res>(_value.subcategory, (value) {
      return _then(_value.copyWith(subcategory: value) as $Val);
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
      @JsonKey(name: 'main_category') MainCategory mainCategory,
      @JsonKey(name: 'additional_category')
      AdditionalCategory additionalCategory,
      Subcategory subcategory});

  @override
  $MainCategoryCopyWith<$Res> get mainCategory;
  @override
  $AdditionalCategoryCopyWith<$Res> get additionalCategory;
  @override
  $SubcategoryCopyWith<$Res> get subcategory;
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
    Object? subcategory = null,
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
              as MainCategory,
      additionalCategory: null == additionalCategory
          ? _value.additionalCategory
          : additionalCategory // ignore: cast_nullable_to_non_nullable
              as AdditionalCategory,
      subcategory: null == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as Subcategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributeImpl implements _Attribute {
  const _$AttributeImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'main_category') required this.mainCategory,
      @JsonKey(name: 'additional_category') required this.additionalCategory,
      required this.subcategory});

  factory _$AttributeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'main_category')
  final MainCategory mainCategory;
  @override
  @JsonKey(name: 'additional_category')
  final AdditionalCategory additionalCategory;
  @override
  final Subcategory subcategory;

  @override
  String toString() {
    return 'Attribute(id: $id, name: $name, mainCategory: $mainCategory, additionalCategory: $additionalCategory, subcategory: $subcategory)';
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
            (identical(other.subcategory, subcategory) ||
                other.subcategory == subcategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, mainCategory, additionalCategory, subcategory);

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
      @JsonKey(name: 'main_category') required final MainCategory mainCategory,
      @JsonKey(name: 'additional_category')
      required final AdditionalCategory additionalCategory,
      required final Subcategory subcategory}) = _$AttributeImpl;

  factory _Attribute.fromJson(Map<String, dynamic> json) =
      _$AttributeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'main_category')
  MainCategory get mainCategory;
  @override
  @JsonKey(name: 'additional_category')
  AdditionalCategory get additionalCategory;
  @override
  Subcategory get subcategory;

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeImplCopyWith<_$AttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Subcategory _$SubcategoryFromJson(Map<String, dynamic> json) {
  return _Subcategory.fromJson(json);
}

/// @nodoc
mixin _$Subcategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_category')
  AdditionalCategory get additionalCategory =>
      throw _privateConstructorUsedError;

  /// Serializes this Subcategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubcategoryCopyWith<Subcategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubcategoryCopyWith<$Res> {
  factory $SubcategoryCopyWith(
          Subcategory value, $Res Function(Subcategory) then) =
      _$SubcategoryCopyWithImpl<$Res, Subcategory>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'additional_category')
      AdditionalCategory additionalCategory});

  $AdditionalCategoryCopyWith<$Res> get additionalCategory;
}

/// @nodoc
class _$SubcategoryCopyWithImpl<$Res, $Val extends Subcategory>
    implements $SubcategoryCopyWith<$Res> {
  _$SubcategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subcategory
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
              as AdditionalCategory,
    ) as $Val);
  }

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdditionalCategoryCopyWith<$Res> get additionalCategory {
    return $AdditionalCategoryCopyWith<$Res>(_value.additionalCategory,
        (value) {
      return _then(_value.copyWith(additionalCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubcategoryImplCopyWith<$Res>
    implements $SubcategoryCopyWith<$Res> {
  factory _$$SubcategoryImplCopyWith(
          _$SubcategoryImpl value, $Res Function(_$SubcategoryImpl) then) =
      __$$SubcategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'additional_category')
      AdditionalCategory additionalCategory});

  @override
  $AdditionalCategoryCopyWith<$Res> get additionalCategory;
}

/// @nodoc
class __$$SubcategoryImplCopyWithImpl<$Res>
    extends _$SubcategoryCopyWithImpl<$Res, _$SubcategoryImpl>
    implements _$$SubcategoryImplCopyWith<$Res> {
  __$$SubcategoryImplCopyWithImpl(
      _$SubcategoryImpl _value, $Res Function(_$SubcategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? additionalCategory = null,
  }) {
    return _then(_$SubcategoryImpl(
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
              as AdditionalCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubcategoryImpl implements _Subcategory {
  const _$SubcategoryImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'additional_category') required this.additionalCategory});

  factory _$SubcategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubcategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'additional_category')
  final AdditionalCategory additionalCategory;

  @override
  String toString() {
    return 'Subcategory(id: $id, name: $name, additionalCategory: $additionalCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubcategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.additionalCategory, additionalCategory) ||
                other.additionalCategory == additionalCategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, additionalCategory);

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubcategoryImplCopyWith<_$SubcategoryImpl> get copyWith =>
      __$$SubcategoryImplCopyWithImpl<_$SubcategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubcategoryImplToJson(
      this,
    );
  }
}

abstract class _Subcategory implements Subcategory {
  const factory _Subcategory(
          {required final int id,
          required final String name,
          @JsonKey(name: 'additional_category')
          required final AdditionalCategory additionalCategory}) =
      _$SubcategoryImpl;

  factory _Subcategory.fromJson(Map<String, dynamic> json) =
      _$SubcategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'additional_category')
  AdditionalCategory get additionalCategory;

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubcategoryImplCopyWith<_$SubcategoryImpl> get copyWith =>
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

Subattribute _$SubattributeFromJson(Map<String, dynamic> json) {
  return _Subattribute.fromJson(json);
}

/// @nodoc
mixin _$Subattribute {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_attribute')
  AdditionalAttribute get additionalAttribute =>
      throw _privateConstructorUsedError;

  /// Serializes this Subattribute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subattribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubattributeCopyWith<Subattribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubattributeCopyWith<$Res> {
  factory $SubattributeCopyWith(
          Subattribute value, $Res Function(Subattribute) then) =
      _$SubattributeCopyWithImpl<$Res, Subattribute>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'additional_attribute')
      AdditionalAttribute additionalAttribute});

  $AdditionalAttributeCopyWith<$Res> get additionalAttribute;
}

/// @nodoc
class _$SubattributeCopyWithImpl<$Res, $Val extends Subattribute>
    implements $SubattributeCopyWith<$Res> {
  _$SubattributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subattribute
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

  /// Create a copy of Subattribute
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
abstract class _$$SubattributeImplCopyWith<$Res>
    implements $SubattributeCopyWith<$Res> {
  factory _$$SubattributeImplCopyWith(
          _$SubattributeImpl value, $Res Function(_$SubattributeImpl) then) =
      __$$SubattributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'additional_attribute')
      AdditionalAttribute additionalAttribute});

  @override
  $AdditionalAttributeCopyWith<$Res> get additionalAttribute;
}

/// @nodoc
class __$$SubattributeImplCopyWithImpl<$Res>
    extends _$SubattributeCopyWithImpl<$Res, _$SubattributeImpl>
    implements _$$SubattributeImplCopyWith<$Res> {
  __$$SubattributeImplCopyWithImpl(
      _$SubattributeImpl _value, $Res Function(_$SubattributeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subattribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? additionalAttribute = null,
  }) {
    return _then(_$SubattributeImpl(
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
class _$SubattributeImpl implements _Subattribute {
  const _$SubattributeImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'additional_attribute')
      required this.additionalAttribute});

  factory _$SubattributeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubattributeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'additional_attribute')
  final AdditionalAttribute additionalAttribute;

  @override
  String toString() {
    return 'Subattribute(id: $id, name: $name, additionalAttribute: $additionalAttribute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubattributeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.additionalAttribute, additionalAttribute) ||
                other.additionalAttribute == additionalAttribute));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, additionalAttribute);

  /// Create a copy of Subattribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubattributeImplCopyWith<_$SubattributeImpl> get copyWith =>
      __$$SubattributeImplCopyWithImpl<_$SubattributeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubattributeImplToJson(
      this,
    );
  }
}

abstract class _Subattribute implements Subattribute {
  const factory _Subattribute(
          {required final int id,
          required final String name,
          @JsonKey(name: 'additional_attribute')
          required final AdditionalAttribute additionalAttribute}) =
      _$SubattributeImpl;

  factory _Subattribute.fromJson(Map<String, dynamic> json) =
      _$SubattributeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'additional_attribute')
  AdditionalAttribute get additionalAttribute;

  /// Create a copy of Subattribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubattributeImplCopyWith<_$SubattributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
