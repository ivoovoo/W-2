// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int idOfMainCategory) getSubCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int idOfMainCategory)? getSubCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int idOfMainCategory)? getSubCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesInitEvent value) init,
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesInitEvent value)? init,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesInitEvent value)? init,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res, CategoriesEvent>;
}

/// @nodoc
class _$CategoriesEventCopyWithImpl<$Res, $Val extends CategoriesEvent>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CategoriesInitEventImplCopyWith<$Res> {
  factory _$$CategoriesInitEventImplCopyWith(_$CategoriesInitEventImpl value,
          $Res Function(_$CategoriesInitEventImpl) then) =
      __$$CategoriesInitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoriesInitEventImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$CategoriesInitEventImpl>
    implements _$$CategoriesInitEventImplCopyWith<$Res> {
  __$$CategoriesInitEventImplCopyWithImpl(_$CategoriesInitEventImpl _value,
      $Res Function(_$CategoriesInitEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoriesInitEventImpl implements CategoriesInitEvent {
  const _$CategoriesInitEventImpl();

  @override
  String toString() {
    return 'CategoriesEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesInitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int idOfMainCategory) getSubCategories,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int idOfMainCategory)? getSubCategories,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int idOfMainCategory)? getSubCategories,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesInitEvent value) init,
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesInitEvent value)? init,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesInitEvent value)? init,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class CategoriesInitEvent implements CategoriesEvent {
  const factory CategoriesInitEvent() = _$CategoriesInitEventImpl;
}

/// @nodoc
abstract class _$$GetSubCategoriesEventImplCopyWith<$Res> {
  factory _$$GetSubCategoriesEventImplCopyWith(
          _$GetSubCategoriesEventImpl value,
          $Res Function(_$GetSubCategoriesEventImpl) then) =
      __$$GetSubCategoriesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idOfMainCategory});
}

/// @nodoc
class __$$GetSubCategoriesEventImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$GetSubCategoriesEventImpl>
    implements _$$GetSubCategoriesEventImplCopyWith<$Res> {
  __$$GetSubCategoriesEventImplCopyWithImpl(_$GetSubCategoriesEventImpl _value,
      $Res Function(_$GetSubCategoriesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idOfMainCategory = null,
  }) {
    return _then(_$GetSubCategoriesEventImpl(
      null == idOfMainCategory
          ? _value.idOfMainCategory
          : idOfMainCategory // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSubCategoriesEventImpl implements GetSubCategoriesEvent {
  const _$GetSubCategoriesEventImpl(this.idOfMainCategory);

  @override
  final int idOfMainCategory;

  @override
  String toString() {
    return 'CategoriesEvent.getSubCategories(idOfMainCategory: $idOfMainCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubCategoriesEventImpl &&
            (identical(other.idOfMainCategory, idOfMainCategory) ||
                other.idOfMainCategory == idOfMainCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idOfMainCategory);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubCategoriesEventImplCopyWith<_$GetSubCategoriesEventImpl>
      get copyWith => __$$GetSubCategoriesEventImplCopyWithImpl<
          _$GetSubCategoriesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int idOfMainCategory) getSubCategories,
  }) {
    return getSubCategories(idOfMainCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int idOfMainCategory)? getSubCategories,
  }) {
    return getSubCategories?.call(idOfMainCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int idOfMainCategory)? getSubCategories,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(idOfMainCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesInitEvent value) init,
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
  }) {
    return getSubCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesInitEvent value)? init,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
  }) {
    return getSubCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesInitEvent value)? init,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(this);
    }
    return orElse();
  }
}

abstract class GetSubCategoriesEvent implements CategoriesEvent {
  const factory GetSubCategoriesEvent(final int idOfMainCategory) =
      _$GetSubCategoriesEventImpl;

  int get idOfMainCategory;

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSubCategoriesEventImplCopyWith<_$GetSubCategoriesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(CategoryResponse categories) loadSuccess,
    required TResult Function(CategoryResponse2 additionalCategories)
        loadSuccess2,
    required TResult Function(String error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(CategoryResponse categories)? loadSuccess,
    TResult? Function(CategoryResponse2 additionalCategories)? loadSuccess2,
    TResult? Function(String error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(CategoryResponse categories)? loadSuccess,
    TResult Function(CategoryResponse2 additionalCategories)? loadSuccess2,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesInitialState value) initial,
    required TResult Function(CategoriesLoadInProgressState value)
        loadInProgress,
    required TResult Function(CategoriesLoadSuccessState value) loadSuccess,
    required TResult Function(CategoriesLoadSuccessState2 value) loadSuccess2,
    required TResult Function(CategoriesLoadFailureState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesInitialState value)? initial,
    TResult? Function(CategoriesLoadInProgressState value)? loadInProgress,
    TResult? Function(CategoriesLoadSuccessState value)? loadSuccess,
    TResult? Function(CategoriesLoadSuccessState2 value)? loadSuccess2,
    TResult? Function(CategoriesLoadFailureState value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesInitialState value)? initial,
    TResult Function(CategoriesLoadInProgressState value)? loadInProgress,
    TResult Function(CategoriesLoadSuccessState value)? loadSuccess,
    TResult Function(CategoriesLoadSuccessState2 value)? loadSuccess2,
    TResult Function(CategoriesLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CategoriesInitialStateImplCopyWith<$Res> {
  factory _$$CategoriesInitialStateImplCopyWith(
          _$CategoriesInitialStateImpl value,
          $Res Function(_$CategoriesInitialStateImpl) then) =
      __$$CategoriesInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoriesInitialStateImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoriesInitialStateImpl>
    implements _$$CategoriesInitialStateImplCopyWith<$Res> {
  __$$CategoriesInitialStateImplCopyWithImpl(
      _$CategoriesInitialStateImpl _value,
      $Res Function(_$CategoriesInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoriesInitialStateImpl implements CategoriesInitialState {
  const _$CategoriesInitialStateImpl();

  @override
  String toString() {
    return 'CategoriesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(CategoryResponse categories) loadSuccess,
    required TResult Function(CategoryResponse2 additionalCategories)
        loadSuccess2,
    required TResult Function(String error) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(CategoryResponse categories)? loadSuccess,
    TResult? Function(CategoryResponse2 additionalCategories)? loadSuccess2,
    TResult? Function(String error)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(CategoryResponse categories)? loadSuccess,
    TResult Function(CategoryResponse2 additionalCategories)? loadSuccess2,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesInitialState value) initial,
    required TResult Function(CategoriesLoadInProgressState value)
        loadInProgress,
    required TResult Function(CategoriesLoadSuccessState value) loadSuccess,
    required TResult Function(CategoriesLoadSuccessState2 value) loadSuccess2,
    required TResult Function(CategoriesLoadFailureState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesInitialState value)? initial,
    TResult? Function(CategoriesLoadInProgressState value)? loadInProgress,
    TResult? Function(CategoriesLoadSuccessState value)? loadSuccess,
    TResult? Function(CategoriesLoadSuccessState2 value)? loadSuccess2,
    TResult? Function(CategoriesLoadFailureState value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesInitialState value)? initial,
    TResult Function(CategoriesLoadInProgressState value)? loadInProgress,
    TResult Function(CategoriesLoadSuccessState value)? loadSuccess,
    TResult Function(CategoriesLoadSuccessState2 value)? loadSuccess2,
    TResult Function(CategoriesLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CategoriesInitialState implements CategoriesState {
  const factory CategoriesInitialState() = _$CategoriesInitialStateImpl;
}

/// @nodoc
abstract class _$$CategoriesLoadInProgressStateImplCopyWith<$Res> {
  factory _$$CategoriesLoadInProgressStateImplCopyWith(
          _$CategoriesLoadInProgressStateImpl value,
          $Res Function(_$CategoriesLoadInProgressStateImpl) then) =
      __$$CategoriesLoadInProgressStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoriesLoadInProgressStateImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res,
        _$CategoriesLoadInProgressStateImpl>
    implements _$$CategoriesLoadInProgressStateImplCopyWith<$Res> {
  __$$CategoriesLoadInProgressStateImplCopyWithImpl(
      _$CategoriesLoadInProgressStateImpl _value,
      $Res Function(_$CategoriesLoadInProgressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoriesLoadInProgressStateImpl
    implements CategoriesLoadInProgressState {
  const _$CategoriesLoadInProgressStateImpl();

  @override
  String toString() {
    return 'CategoriesState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesLoadInProgressStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(CategoryResponse categories) loadSuccess,
    required TResult Function(CategoryResponse2 additionalCategories)
        loadSuccess2,
    required TResult Function(String error) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(CategoryResponse categories)? loadSuccess,
    TResult? Function(CategoryResponse2 additionalCategories)? loadSuccess2,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(CategoryResponse categories)? loadSuccess,
    TResult Function(CategoryResponse2 additionalCategories)? loadSuccess2,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesInitialState value) initial,
    required TResult Function(CategoriesLoadInProgressState value)
        loadInProgress,
    required TResult Function(CategoriesLoadSuccessState value) loadSuccess,
    required TResult Function(CategoriesLoadSuccessState2 value) loadSuccess2,
    required TResult Function(CategoriesLoadFailureState value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesInitialState value)? initial,
    TResult? Function(CategoriesLoadInProgressState value)? loadInProgress,
    TResult? Function(CategoriesLoadSuccessState value)? loadSuccess,
    TResult? Function(CategoriesLoadSuccessState2 value)? loadSuccess2,
    TResult? Function(CategoriesLoadFailureState value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesInitialState value)? initial,
    TResult Function(CategoriesLoadInProgressState value)? loadInProgress,
    TResult Function(CategoriesLoadSuccessState value)? loadSuccess,
    TResult Function(CategoriesLoadSuccessState2 value)? loadSuccess2,
    TResult Function(CategoriesLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class CategoriesLoadInProgressState implements CategoriesState {
  const factory CategoriesLoadInProgressState() =
      _$CategoriesLoadInProgressStateImpl;
}

/// @nodoc
abstract class _$$CategoriesLoadSuccessStateImplCopyWith<$Res> {
  factory _$$CategoriesLoadSuccessStateImplCopyWith(
          _$CategoriesLoadSuccessStateImpl value,
          $Res Function(_$CategoriesLoadSuccessStateImpl) then) =
      __$$CategoriesLoadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryResponse categories});

  $CategoryResponseCopyWith<$Res> get categories;
}

/// @nodoc
class __$$CategoriesLoadSuccessStateImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res,
        _$CategoriesLoadSuccessStateImpl>
    implements _$$CategoriesLoadSuccessStateImplCopyWith<$Res> {
  __$$CategoriesLoadSuccessStateImplCopyWithImpl(
      _$CategoriesLoadSuccessStateImpl _value,
      $Res Function(_$CategoriesLoadSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategoriesLoadSuccessStateImpl(
      null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryResponse,
    ));
  }

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryResponseCopyWith<$Res> get categories {
    return $CategoryResponseCopyWith<$Res>(_value.categories, (value) {
      return _then(_value.copyWith(categories: value));
    });
  }
}

/// @nodoc

class _$CategoriesLoadSuccessStateImpl implements CategoriesLoadSuccessState {
  const _$CategoriesLoadSuccessStateImpl(this.categories);

  @override
  final CategoryResponse categories;

  @override
  String toString() {
    return 'CategoriesState.loadSuccess(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesLoadSuccessStateImpl &&
            (identical(other.categories, categories) ||
                other.categories == categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categories);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesLoadSuccessStateImplCopyWith<_$CategoriesLoadSuccessStateImpl>
      get copyWith => __$$CategoriesLoadSuccessStateImplCopyWithImpl<
          _$CategoriesLoadSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(CategoryResponse categories) loadSuccess,
    required TResult Function(CategoryResponse2 additionalCategories)
        loadSuccess2,
    required TResult Function(String error) loadFailure,
  }) {
    return loadSuccess(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(CategoryResponse categories)? loadSuccess,
    TResult? Function(CategoryResponse2 additionalCategories)? loadSuccess2,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadSuccess?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(CategoryResponse categories)? loadSuccess,
    TResult Function(CategoryResponse2 additionalCategories)? loadSuccess2,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesInitialState value) initial,
    required TResult Function(CategoriesLoadInProgressState value)
        loadInProgress,
    required TResult Function(CategoriesLoadSuccessState value) loadSuccess,
    required TResult Function(CategoriesLoadSuccessState2 value) loadSuccess2,
    required TResult Function(CategoriesLoadFailureState value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesInitialState value)? initial,
    TResult? Function(CategoriesLoadInProgressState value)? loadInProgress,
    TResult? Function(CategoriesLoadSuccessState value)? loadSuccess,
    TResult? Function(CategoriesLoadSuccessState2 value)? loadSuccess2,
    TResult? Function(CategoriesLoadFailureState value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesInitialState value)? initial,
    TResult Function(CategoriesLoadInProgressState value)? loadInProgress,
    TResult Function(CategoriesLoadSuccessState value)? loadSuccess,
    TResult Function(CategoriesLoadSuccessState2 value)? loadSuccess2,
    TResult Function(CategoriesLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class CategoriesLoadSuccessState implements CategoriesState {
  const factory CategoriesLoadSuccessState(final CategoryResponse categories) =
      _$CategoriesLoadSuccessStateImpl;

  CategoryResponse get categories;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesLoadSuccessStateImplCopyWith<_$CategoriesLoadSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesLoadSuccessState2ImplCopyWith<$Res> {
  factory _$$CategoriesLoadSuccessState2ImplCopyWith(
          _$CategoriesLoadSuccessState2Impl value,
          $Res Function(_$CategoriesLoadSuccessState2Impl) then) =
      __$$CategoriesLoadSuccessState2ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryResponse2 additionalCategories});

  $CategoryResponse2CopyWith<$Res> get additionalCategories;
}

/// @nodoc
class __$$CategoriesLoadSuccessState2ImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res,
        _$CategoriesLoadSuccessState2Impl>
    implements _$$CategoriesLoadSuccessState2ImplCopyWith<$Res> {
  __$$CategoriesLoadSuccessState2ImplCopyWithImpl(
      _$CategoriesLoadSuccessState2Impl _value,
      $Res Function(_$CategoriesLoadSuccessState2Impl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additionalCategories = null,
  }) {
    return _then(_$CategoriesLoadSuccessState2Impl(
      null == additionalCategories
          ? _value.additionalCategories
          : additionalCategories // ignore: cast_nullable_to_non_nullable
              as CategoryResponse2,
    ));
  }

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryResponse2CopyWith<$Res> get additionalCategories {
    return $CategoryResponse2CopyWith<$Res>(_value.additionalCategories,
        (value) {
      return _then(_value.copyWith(additionalCategories: value));
    });
  }
}

/// @nodoc

class _$CategoriesLoadSuccessState2Impl implements CategoriesLoadSuccessState2 {
  const _$CategoriesLoadSuccessState2Impl(this.additionalCategories);

  @override
  final CategoryResponse2 additionalCategories;

  @override
  String toString() {
    return 'CategoriesState.loadSuccess2(additionalCategories: $additionalCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesLoadSuccessState2Impl &&
            (identical(other.additionalCategories, additionalCategories) ||
                other.additionalCategories == additionalCategories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, additionalCategories);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesLoadSuccessState2ImplCopyWith<_$CategoriesLoadSuccessState2Impl>
      get copyWith => __$$CategoriesLoadSuccessState2ImplCopyWithImpl<
          _$CategoriesLoadSuccessState2Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(CategoryResponse categories) loadSuccess,
    required TResult Function(CategoryResponse2 additionalCategories)
        loadSuccess2,
    required TResult Function(String error) loadFailure,
  }) {
    return loadSuccess2(additionalCategories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(CategoryResponse categories)? loadSuccess,
    TResult? Function(CategoryResponse2 additionalCategories)? loadSuccess2,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadSuccess2?.call(additionalCategories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(CategoryResponse categories)? loadSuccess,
    TResult Function(CategoryResponse2 additionalCategories)? loadSuccess2,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess2 != null) {
      return loadSuccess2(additionalCategories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesInitialState value) initial,
    required TResult Function(CategoriesLoadInProgressState value)
        loadInProgress,
    required TResult Function(CategoriesLoadSuccessState value) loadSuccess,
    required TResult Function(CategoriesLoadSuccessState2 value) loadSuccess2,
    required TResult Function(CategoriesLoadFailureState value) loadFailure,
  }) {
    return loadSuccess2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesInitialState value)? initial,
    TResult? Function(CategoriesLoadInProgressState value)? loadInProgress,
    TResult? Function(CategoriesLoadSuccessState value)? loadSuccess,
    TResult? Function(CategoriesLoadSuccessState2 value)? loadSuccess2,
    TResult? Function(CategoriesLoadFailureState value)? loadFailure,
  }) {
    return loadSuccess2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesInitialState value)? initial,
    TResult Function(CategoriesLoadInProgressState value)? loadInProgress,
    TResult Function(CategoriesLoadSuccessState value)? loadSuccess,
    TResult Function(CategoriesLoadSuccessState2 value)? loadSuccess2,
    TResult Function(CategoriesLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess2 != null) {
      return loadSuccess2(this);
    }
    return orElse();
  }
}

abstract class CategoriesLoadSuccessState2 implements CategoriesState {
  const factory CategoriesLoadSuccessState2(
          final CategoryResponse2 additionalCategories) =
      _$CategoriesLoadSuccessState2Impl;

  CategoryResponse2 get additionalCategories;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesLoadSuccessState2ImplCopyWith<_$CategoriesLoadSuccessState2Impl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesLoadFailureStateImplCopyWith<$Res> {
  factory _$$CategoriesLoadFailureStateImplCopyWith(
          _$CategoriesLoadFailureStateImpl value,
          $Res Function(_$CategoriesLoadFailureStateImpl) then) =
      __$$CategoriesLoadFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CategoriesLoadFailureStateImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res,
        _$CategoriesLoadFailureStateImpl>
    implements _$$CategoriesLoadFailureStateImplCopyWith<$Res> {
  __$$CategoriesLoadFailureStateImplCopyWithImpl(
      _$CategoriesLoadFailureStateImpl _value,
      $Res Function(_$CategoriesLoadFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CategoriesLoadFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoriesLoadFailureStateImpl implements CategoriesLoadFailureState {
  const _$CategoriesLoadFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CategoriesState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesLoadFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesLoadFailureStateImplCopyWith<_$CategoriesLoadFailureStateImpl>
      get copyWith => __$$CategoriesLoadFailureStateImplCopyWithImpl<
          _$CategoriesLoadFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(CategoryResponse categories) loadSuccess,
    required TResult Function(CategoryResponse2 additionalCategories)
        loadSuccess2,
    required TResult Function(String error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(CategoryResponse categories)? loadSuccess,
    TResult? Function(CategoryResponse2 additionalCategories)? loadSuccess2,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(CategoryResponse categories)? loadSuccess,
    TResult Function(CategoryResponse2 additionalCategories)? loadSuccess2,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesInitialState value) initial,
    required TResult Function(CategoriesLoadInProgressState value)
        loadInProgress,
    required TResult Function(CategoriesLoadSuccessState value) loadSuccess,
    required TResult Function(CategoriesLoadSuccessState2 value) loadSuccess2,
    required TResult Function(CategoriesLoadFailureState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesInitialState value)? initial,
    TResult? Function(CategoriesLoadInProgressState value)? loadInProgress,
    TResult? Function(CategoriesLoadSuccessState value)? loadSuccess,
    TResult? Function(CategoriesLoadSuccessState2 value)? loadSuccess2,
    TResult? Function(CategoriesLoadFailureState value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesInitialState value)? initial,
    TResult Function(CategoriesLoadInProgressState value)? loadInProgress,
    TResult Function(CategoriesLoadSuccessState value)? loadSuccess,
    TResult Function(CategoriesLoadSuccessState2 value)? loadSuccess2,
    TResult Function(CategoriesLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class CategoriesLoadFailureState implements CategoriesState {
  const factory CategoriesLoadFailureState(final String error) =
      _$CategoriesLoadFailureStateImpl;

  String get error;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesLoadFailureStateImplCopyWith<_$CategoriesLoadFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
