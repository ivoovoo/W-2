// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_app_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryAppModel _$CategoryAppModelFromJson(Map<String, dynamic> json) {
  return _CategoryAppModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryAppModel {
  @JsonKey(name: 'site_categories')
  List<AppCategory> get siteCategories => throw _privateConstructorUsedError;

  /// Serializes this CategoryAppModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryAppModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryAppModelCopyWith<CategoryAppModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryAppModelCopyWith<$Res> {
  factory $CategoryAppModelCopyWith(
          CategoryAppModel value, $Res Function(CategoryAppModel) then) =
      _$CategoryAppModelCopyWithImpl<$Res, CategoryAppModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'site_categories') List<AppCategory> siteCategories});
}

/// @nodoc
class _$CategoryAppModelCopyWithImpl<$Res, $Val extends CategoryAppModel>
    implements $CategoryAppModelCopyWith<$Res> {
  _$CategoryAppModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryAppModel
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
              as List<AppCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryAppModelImplCopyWith<$Res>
    implements $CategoryAppModelCopyWith<$Res> {
  factory _$$CategoryAppModelImplCopyWith(_$CategoryAppModelImpl value,
          $Res Function(_$CategoryAppModelImpl) then) =
      __$$CategoryAppModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'site_categories') List<AppCategory> siteCategories});
}

/// @nodoc
class __$$CategoryAppModelImplCopyWithImpl<$Res>
    extends _$CategoryAppModelCopyWithImpl<$Res, _$CategoryAppModelImpl>
    implements _$$CategoryAppModelImplCopyWith<$Res> {
  __$$CategoryAppModelImplCopyWithImpl(_$CategoryAppModelImpl _value,
      $Res Function(_$CategoryAppModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryAppModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteCategories = null,
  }) {
    return _then(_$CategoryAppModelImpl(
      siteCategories: null == siteCategories
          ? _value._siteCategories
          : siteCategories // ignore: cast_nullable_to_non_nullable
              as List<AppCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryAppModelImpl implements _CategoryAppModel {
  const _$CategoryAppModelImpl(
      {@JsonKey(name: 'site_categories')
      required final List<AppCategory> siteCategories})
      : _siteCategories = siteCategories;

  factory _$CategoryAppModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryAppModelImplFromJson(json);

  final List<AppCategory> _siteCategories;
  @override
  @JsonKey(name: 'site_categories')
  List<AppCategory> get siteCategories {
    if (_siteCategories is EqualUnmodifiableListView) return _siteCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_siteCategories);
  }

  @override
  String toString() {
    return 'CategoryAppModel(siteCategories: $siteCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryAppModelImpl &&
            const DeepCollectionEquality()
                .equals(other._siteCategories, _siteCategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_siteCategories));

  /// Create a copy of CategoryAppModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryAppModelImplCopyWith<_$CategoryAppModelImpl> get copyWith =>
      __$$CategoryAppModelImplCopyWithImpl<_$CategoryAppModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryAppModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryAppModel implements CategoryAppModel {
  const factory _CategoryAppModel(
          {@JsonKey(name: 'site_categories')
          required final List<AppCategory> siteCategories}) =
      _$CategoryAppModelImpl;

  factory _CategoryAppModel.fromJson(Map<String, dynamic> json) =
      _$CategoryAppModelImpl.fromJson;

  @override
  @JsonKey(name: 'site_categories')
  List<AppCategory> get siteCategories;

  /// Create a copy of CategoryAppModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryAppModelImplCopyWith<_$CategoryAppModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppCategory _$AppCategoryFromJson(Map<String, dynamic> json) {
  return _AppCategory.fromJson(json);
}

/// @nodoc
mixin _$AppCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this AppCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppCategoryCopyWith<AppCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppCategoryCopyWith<$Res> {
  factory $AppCategoryCopyWith(
          AppCategory value, $Res Function(AppCategory) then) =
      _$AppCategoryCopyWithImpl<$Res, AppCategory>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$AppCategoryCopyWithImpl<$Res, $Val extends AppCategory>
    implements $AppCategoryCopyWith<$Res> {
  _$AppCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppCategory
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
abstract class _$$AppCategoryImplCopyWith<$Res>
    implements $AppCategoryCopyWith<$Res> {
  factory _$$AppCategoryImplCopyWith(
          _$AppCategoryImpl value, $Res Function(_$AppCategoryImpl) then) =
      __$$AppCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$AppCategoryImplCopyWithImpl<$Res>
    extends _$AppCategoryCopyWithImpl<$Res, _$AppCategoryImpl>
    implements _$$AppCategoryImplCopyWith<$Res> {
  __$$AppCategoryImplCopyWithImpl(
      _$AppCategoryImpl _value, $Res Function(_$AppCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$AppCategoryImpl(
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
class _$AppCategoryImpl implements _AppCategory {
  const _$AppCategoryImpl({required this.id, required this.name});

  factory _$AppCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppCategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'AppCategory(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of AppCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppCategoryImplCopyWith<_$AppCategoryImpl> get copyWith =>
      __$$AppCategoryImplCopyWithImpl<_$AppCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppCategoryImplToJson(
      this,
    );
  }
}

abstract class _AppCategory implements AppCategory {
  const factory _AppCategory(
      {required final int id, required final String name}) = _$AppCategoryImpl;

  factory _AppCategory.fromJson(Map<String, dynamic> json) =
      _$AppCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of AppCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppCategoryImplCopyWith<_$AppCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
