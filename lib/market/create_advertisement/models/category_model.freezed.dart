// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) {
  return _CategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryResponse {
  @JsonKey(name: 'main_categories')
  List<MainCategory> get mainCategories => throw _privateConstructorUsedError;

  /// Serializes this CategoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryResponseCopyWith<CategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponseCopyWith<$Res> {
  factory $CategoryResponseCopyWith(
          CategoryResponse value, $Res Function(CategoryResponse) then) =
      _$CategoryResponseCopyWithImpl<$Res, CategoryResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'main_categories') List<MainCategory> mainCategories});
}

/// @nodoc
class _$CategoryResponseCopyWithImpl<$Res, $Val extends CategoryResponse>
    implements $CategoryResponseCopyWith<$Res> {
  _$CategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainCategories = null,
  }) {
    return _then(_value.copyWith(
      mainCategories: null == mainCategories
          ? _value.mainCategories
          : mainCategories // ignore: cast_nullable_to_non_nullable
              as List<MainCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryResponseImplCopyWith<$Res>
    implements $CategoryResponseCopyWith<$Res> {
  factory _$$CategoryResponseImplCopyWith(_$CategoryResponseImpl value,
          $Res Function(_$CategoryResponseImpl) then) =
      __$$CategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'main_categories') List<MainCategory> mainCategories});
}

/// @nodoc
class __$$CategoryResponseImplCopyWithImpl<$Res>
    extends _$CategoryResponseCopyWithImpl<$Res, _$CategoryResponseImpl>
    implements _$$CategoryResponseImplCopyWith<$Res> {
  __$$CategoryResponseImplCopyWithImpl(_$CategoryResponseImpl _value,
      $Res Function(_$CategoryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainCategories = null,
  }) {
    return _then(_$CategoryResponseImpl(
      mainCategories: null == mainCategories
          ? _value._mainCategories
          : mainCategories // ignore: cast_nullable_to_non_nullable
              as List<MainCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryResponseImpl implements _CategoryResponse {
  const _$CategoryResponseImpl(
      {@JsonKey(name: 'main_categories')
      required final List<MainCategory> mainCategories})
      : _mainCategories = mainCategories;

  factory _$CategoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryResponseImplFromJson(json);

  final List<MainCategory> _mainCategories;
  @override
  @JsonKey(name: 'main_categories')
  List<MainCategory> get mainCategories {
    if (_mainCategories is EqualUnmodifiableListView) return _mainCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mainCategories);
  }

  @override
  String toString() {
    return 'CategoryResponse(mainCategories: $mainCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._mainCategories, _mainCategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_mainCategories));

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryResponseImplCopyWith<_$CategoryResponseImpl> get copyWith =>
      __$$CategoryResponseImplCopyWithImpl<_$CategoryResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryResponseImplToJson(
      this,
    );
  }
}

abstract class _CategoryResponse implements CategoryResponse {
  const factory _CategoryResponse(
          {@JsonKey(name: 'main_categories')
          required final List<MainCategory> mainCategories}) =
      _$CategoryResponseImpl;

  factory _CategoryResponse.fromJson(Map<String, dynamic> json) =
      _$CategoryResponseImpl.fromJson;

  @override
  @JsonKey(name: 'main_categories')
  List<MainCategory> get mainCategories;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryResponseImplCopyWith<_$CategoryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainCategory _$MainCategoryFromJson(Map<String, dynamic> json) {
  return _MainCategory.fromJson(json);
}

/// @nodoc
mixin _$MainCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this MainCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MainCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainCategoryCopyWith<MainCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCategoryCopyWith<$Res> {
  factory $MainCategoryCopyWith(
          MainCategory value, $Res Function(MainCategory) then) =
      _$MainCategoryCopyWithImpl<$Res, MainCategory>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$MainCategoryCopyWithImpl<$Res, $Val extends MainCategory>
    implements $MainCategoryCopyWith<$Res> {
  _$MainCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainCategory
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
abstract class _$$MainCategoryImplCopyWith<$Res>
    implements $MainCategoryCopyWith<$Res> {
  factory _$$MainCategoryImplCopyWith(
          _$MainCategoryImpl value, $Res Function(_$MainCategoryImpl) then) =
      __$$MainCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$MainCategoryImplCopyWithImpl<$Res>
    extends _$MainCategoryCopyWithImpl<$Res, _$MainCategoryImpl>
    implements _$$MainCategoryImplCopyWith<$Res> {
  __$$MainCategoryImplCopyWithImpl(
      _$MainCategoryImpl _value, $Res Function(_$MainCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$MainCategoryImpl(
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
class _$MainCategoryImpl implements _MainCategory {
  const _$MainCategoryImpl({required this.id, required this.name});

  factory _$MainCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainCategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'MainCategory(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of MainCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainCategoryImplCopyWith<_$MainCategoryImpl> get copyWith =>
      __$$MainCategoryImplCopyWithImpl<_$MainCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainCategoryImplToJson(
      this,
    );
  }
}

abstract class _MainCategory implements MainCategory {
  const factory _MainCategory(
      {required final int id, required final String name}) = _$MainCategoryImpl;

  factory _MainCategory.fromJson(Map<String, dynamic> json) =
      _$MainCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of MainCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainCategoryImplCopyWith<_$MainCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
