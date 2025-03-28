// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'site_categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SiteCategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SiteCategoriesEventInit value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SiteCategoriesEventInit value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SiteCategoriesEventInit value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteCategoriesEventCopyWith<$Res> {
  factory $SiteCategoriesEventCopyWith(
          SiteCategoriesEvent value, $Res Function(SiteCategoriesEvent) then) =
      _$SiteCategoriesEventCopyWithImpl<$Res, SiteCategoriesEvent>;
}

/// @nodoc
class _$SiteCategoriesEventCopyWithImpl<$Res, $Val extends SiteCategoriesEvent>
    implements $SiteCategoriesEventCopyWith<$Res> {
  _$SiteCategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiteCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SiteCategoriesEventInitImplCopyWith<$Res> {
  factory _$$SiteCategoriesEventInitImplCopyWith(
          _$SiteCategoriesEventInitImpl value,
          $Res Function(_$SiteCategoriesEventInitImpl) then) =
      __$$SiteCategoriesEventInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SiteCategoriesEventInitImplCopyWithImpl<$Res>
    extends _$SiteCategoriesEventCopyWithImpl<$Res,
        _$SiteCategoriesEventInitImpl>
    implements _$$SiteCategoriesEventInitImplCopyWith<$Res> {
  __$$SiteCategoriesEventInitImplCopyWithImpl(
      _$SiteCategoriesEventInitImpl _value,
      $Res Function(_$SiteCategoriesEventInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiteCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SiteCategoriesEventInitImpl implements SiteCategoriesEventInit {
  const _$SiteCategoriesEventInitImpl();

  @override
  String toString() {
    return 'SiteCategoriesEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteCategoriesEventInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
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
    required TResult Function(SiteCategoriesEventInit value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SiteCategoriesEventInit value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SiteCategoriesEventInit value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SiteCategoriesEventInit implements SiteCategoriesEvent {
  const factory SiteCategoriesEventInit() = _$SiteCategoriesEventInitImpl;
}

/// @nodoc
mixin _$SiteCategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(SiteCategoriesResponse siteCategories)
        loadSuccess,
    required TResult Function(String error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(SiteCategoriesResponse siteCategories)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(SiteCategoriesResponse siteCategories)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SiteCategoriesInitialState value) initial,
    required TResult Function(SiteCategoriesLoadInProgressState value)
        loadInProgress,
    required TResult Function(SiteCategoriesLoadSuccessState value) loadSuccess,
    required TResult Function(SiteCategoriesLoadFailureState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SiteCategoriesInitialState value)? initial,
    TResult? Function(SiteCategoriesLoadInProgressState value)? loadInProgress,
    TResult? Function(SiteCategoriesLoadSuccessState value)? loadSuccess,
    TResult? Function(SiteCategoriesLoadFailureState value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SiteCategoriesInitialState value)? initial,
    TResult Function(SiteCategoriesLoadInProgressState value)? loadInProgress,
    TResult Function(SiteCategoriesLoadSuccessState value)? loadSuccess,
    TResult Function(SiteCategoriesLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteCategoriesStateCopyWith<$Res> {
  factory $SiteCategoriesStateCopyWith(
          SiteCategoriesState value, $Res Function(SiteCategoriesState) then) =
      _$SiteCategoriesStateCopyWithImpl<$Res, SiteCategoriesState>;
}

/// @nodoc
class _$SiteCategoriesStateCopyWithImpl<$Res, $Val extends SiteCategoriesState>
    implements $SiteCategoriesStateCopyWith<$Res> {
  _$SiteCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiteCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SiteCategoriesInitialStateImplCopyWith<$Res> {
  factory _$$SiteCategoriesInitialStateImplCopyWith(
          _$SiteCategoriesInitialStateImpl value,
          $Res Function(_$SiteCategoriesInitialStateImpl) then) =
      __$$SiteCategoriesInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SiteCategoriesInitialStateImplCopyWithImpl<$Res>
    extends _$SiteCategoriesStateCopyWithImpl<$Res,
        _$SiteCategoriesInitialStateImpl>
    implements _$$SiteCategoriesInitialStateImplCopyWith<$Res> {
  __$$SiteCategoriesInitialStateImplCopyWithImpl(
      _$SiteCategoriesInitialStateImpl _value,
      $Res Function(_$SiteCategoriesInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiteCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SiteCategoriesInitialStateImpl implements SiteCategoriesInitialState {
  const _$SiteCategoriesInitialStateImpl();

  @override
  String toString() {
    return 'SiteCategoriesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteCategoriesInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(SiteCategoriesResponse siteCategories)
        loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(SiteCategoriesResponse siteCategories)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(SiteCategoriesResponse siteCategories)? loadSuccess,
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
    required TResult Function(SiteCategoriesInitialState value) initial,
    required TResult Function(SiteCategoriesLoadInProgressState value)
        loadInProgress,
    required TResult Function(SiteCategoriesLoadSuccessState value) loadSuccess,
    required TResult Function(SiteCategoriesLoadFailureState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SiteCategoriesInitialState value)? initial,
    TResult? Function(SiteCategoriesLoadInProgressState value)? loadInProgress,
    TResult? Function(SiteCategoriesLoadSuccessState value)? loadSuccess,
    TResult? Function(SiteCategoriesLoadFailureState value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SiteCategoriesInitialState value)? initial,
    TResult Function(SiteCategoriesLoadInProgressState value)? loadInProgress,
    TResult Function(SiteCategoriesLoadSuccessState value)? loadSuccess,
    TResult Function(SiteCategoriesLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SiteCategoriesInitialState implements SiteCategoriesState {
  const factory SiteCategoriesInitialState() = _$SiteCategoriesInitialStateImpl;
}

/// @nodoc
abstract class _$$SiteCategoriesLoadInProgressStateImplCopyWith<$Res> {
  factory _$$SiteCategoriesLoadInProgressStateImplCopyWith(
          _$SiteCategoriesLoadInProgressStateImpl value,
          $Res Function(_$SiteCategoriesLoadInProgressStateImpl) then) =
      __$$SiteCategoriesLoadInProgressStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SiteCategoriesLoadInProgressStateImplCopyWithImpl<$Res>
    extends _$SiteCategoriesStateCopyWithImpl<$Res,
        _$SiteCategoriesLoadInProgressStateImpl>
    implements _$$SiteCategoriesLoadInProgressStateImplCopyWith<$Res> {
  __$$SiteCategoriesLoadInProgressStateImplCopyWithImpl(
      _$SiteCategoriesLoadInProgressStateImpl _value,
      $Res Function(_$SiteCategoriesLoadInProgressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiteCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SiteCategoriesLoadInProgressStateImpl
    implements SiteCategoriesLoadInProgressState {
  const _$SiteCategoriesLoadInProgressStateImpl();

  @override
  String toString() {
    return 'SiteCategoriesState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteCategoriesLoadInProgressStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(SiteCategoriesResponse siteCategories)
        loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(SiteCategoriesResponse siteCategories)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(SiteCategoriesResponse siteCategories)? loadSuccess,
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
    required TResult Function(SiteCategoriesInitialState value) initial,
    required TResult Function(SiteCategoriesLoadInProgressState value)
        loadInProgress,
    required TResult Function(SiteCategoriesLoadSuccessState value) loadSuccess,
    required TResult Function(SiteCategoriesLoadFailureState value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SiteCategoriesInitialState value)? initial,
    TResult? Function(SiteCategoriesLoadInProgressState value)? loadInProgress,
    TResult? Function(SiteCategoriesLoadSuccessState value)? loadSuccess,
    TResult? Function(SiteCategoriesLoadFailureState value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SiteCategoriesInitialState value)? initial,
    TResult Function(SiteCategoriesLoadInProgressState value)? loadInProgress,
    TResult Function(SiteCategoriesLoadSuccessState value)? loadSuccess,
    TResult Function(SiteCategoriesLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class SiteCategoriesLoadInProgressState
    implements SiteCategoriesState {
  const factory SiteCategoriesLoadInProgressState() =
      _$SiteCategoriesLoadInProgressStateImpl;
}

/// @nodoc
abstract class _$$SiteCategoriesLoadSuccessStateImplCopyWith<$Res> {
  factory _$$SiteCategoriesLoadSuccessStateImplCopyWith(
          _$SiteCategoriesLoadSuccessStateImpl value,
          $Res Function(_$SiteCategoriesLoadSuccessStateImpl) then) =
      __$$SiteCategoriesLoadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SiteCategoriesResponse siteCategories});

  $SiteCategoriesResponseCopyWith<$Res> get siteCategories;
}

/// @nodoc
class __$$SiteCategoriesLoadSuccessStateImplCopyWithImpl<$Res>
    extends _$SiteCategoriesStateCopyWithImpl<$Res,
        _$SiteCategoriesLoadSuccessStateImpl>
    implements _$$SiteCategoriesLoadSuccessStateImplCopyWith<$Res> {
  __$$SiteCategoriesLoadSuccessStateImplCopyWithImpl(
      _$SiteCategoriesLoadSuccessStateImpl _value,
      $Res Function(_$SiteCategoriesLoadSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiteCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteCategories = null,
  }) {
    return _then(_$SiteCategoriesLoadSuccessStateImpl(
      null == siteCategories
          ? _value.siteCategories
          : siteCategories // ignore: cast_nullable_to_non_nullable
              as SiteCategoriesResponse,
    ));
  }

  /// Create a copy of SiteCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SiteCategoriesResponseCopyWith<$Res> get siteCategories {
    return $SiteCategoriesResponseCopyWith<$Res>(_value.siteCategories,
        (value) {
      return _then(_value.copyWith(siteCategories: value));
    });
  }
}

/// @nodoc

class _$SiteCategoriesLoadSuccessStateImpl
    implements SiteCategoriesLoadSuccessState {
  const _$SiteCategoriesLoadSuccessStateImpl(this.siteCategories);

  @override
  final SiteCategoriesResponse siteCategories;

  @override
  String toString() {
    return 'SiteCategoriesState.loadSuccess(siteCategories: $siteCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteCategoriesLoadSuccessStateImpl &&
            (identical(other.siteCategories, siteCategories) ||
                other.siteCategories == siteCategories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, siteCategories);

  /// Create a copy of SiteCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteCategoriesLoadSuccessStateImplCopyWith<
          _$SiteCategoriesLoadSuccessStateImpl>
      get copyWith => __$$SiteCategoriesLoadSuccessStateImplCopyWithImpl<
          _$SiteCategoriesLoadSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(SiteCategoriesResponse siteCategories)
        loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadSuccess(siteCategories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(SiteCategoriesResponse siteCategories)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadSuccess?.call(siteCategories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(SiteCategoriesResponse siteCategories)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(siteCategories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SiteCategoriesInitialState value) initial,
    required TResult Function(SiteCategoriesLoadInProgressState value)
        loadInProgress,
    required TResult Function(SiteCategoriesLoadSuccessState value) loadSuccess,
    required TResult Function(SiteCategoriesLoadFailureState value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SiteCategoriesInitialState value)? initial,
    TResult? Function(SiteCategoriesLoadInProgressState value)? loadInProgress,
    TResult? Function(SiteCategoriesLoadSuccessState value)? loadSuccess,
    TResult? Function(SiteCategoriesLoadFailureState value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SiteCategoriesInitialState value)? initial,
    TResult Function(SiteCategoriesLoadInProgressState value)? loadInProgress,
    TResult Function(SiteCategoriesLoadSuccessState value)? loadSuccess,
    TResult Function(SiteCategoriesLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class SiteCategoriesLoadSuccessState implements SiteCategoriesState {
  const factory SiteCategoriesLoadSuccessState(
          final SiteCategoriesResponse siteCategories) =
      _$SiteCategoriesLoadSuccessStateImpl;

  SiteCategoriesResponse get siteCategories;

  /// Create a copy of SiteCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiteCategoriesLoadSuccessStateImplCopyWith<
          _$SiteCategoriesLoadSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SiteCategoriesLoadFailureStateImplCopyWith<$Res> {
  factory _$$SiteCategoriesLoadFailureStateImplCopyWith(
          _$SiteCategoriesLoadFailureStateImpl value,
          $Res Function(_$SiteCategoriesLoadFailureStateImpl) then) =
      __$$SiteCategoriesLoadFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SiteCategoriesLoadFailureStateImplCopyWithImpl<$Res>
    extends _$SiteCategoriesStateCopyWithImpl<$Res,
        _$SiteCategoriesLoadFailureStateImpl>
    implements _$$SiteCategoriesLoadFailureStateImplCopyWith<$Res> {
  __$$SiteCategoriesLoadFailureStateImplCopyWithImpl(
      _$SiteCategoriesLoadFailureStateImpl _value,
      $Res Function(_$SiteCategoriesLoadFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiteCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SiteCategoriesLoadFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SiteCategoriesLoadFailureStateImpl
    implements SiteCategoriesLoadFailureState {
  const _$SiteCategoriesLoadFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SiteCategoriesState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteCategoriesLoadFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SiteCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteCategoriesLoadFailureStateImplCopyWith<
          _$SiteCategoriesLoadFailureStateImpl>
      get copyWith => __$$SiteCategoriesLoadFailureStateImplCopyWithImpl<
          _$SiteCategoriesLoadFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(SiteCategoriesResponse siteCategories)
        loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(SiteCategoriesResponse siteCategories)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(SiteCategoriesResponse siteCategories)? loadSuccess,
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
    required TResult Function(SiteCategoriesInitialState value) initial,
    required TResult Function(SiteCategoriesLoadInProgressState value)
        loadInProgress,
    required TResult Function(SiteCategoriesLoadSuccessState value) loadSuccess,
    required TResult Function(SiteCategoriesLoadFailureState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SiteCategoriesInitialState value)? initial,
    TResult? Function(SiteCategoriesLoadInProgressState value)? loadInProgress,
    TResult? Function(SiteCategoriesLoadSuccessState value)? loadSuccess,
    TResult? Function(SiteCategoriesLoadFailureState value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SiteCategoriesInitialState value)? initial,
    TResult Function(SiteCategoriesLoadInProgressState value)? loadInProgress,
    TResult Function(SiteCategoriesLoadSuccessState value)? loadSuccess,
    TResult Function(SiteCategoriesLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class SiteCategoriesLoadFailureState implements SiteCategoriesState {
  const factory SiteCategoriesLoadFailureState(final String error) =
      _$SiteCategoriesLoadFailureStateImpl;

  String get error;

  /// Create a copy of SiteCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiteCategoriesLoadFailureStateImplCopyWith<
          _$SiteCategoriesLoadFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
