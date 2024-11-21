// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
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
    required TResult Function(HomeEventInit value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventInit value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventInit value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeEventInitImplCopyWith<$Res> {
  factory _$$HomeEventInitImplCopyWith(
          _$HomeEventInitImpl value, $Res Function(_$HomeEventInitImpl) then) =
      __$$HomeEventInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeEventInitImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeEventInitImpl>
    implements _$$HomeEventInitImplCopyWith<$Res> {
  __$$HomeEventInitImplCopyWithImpl(
      _$HomeEventInitImpl _value, $Res Function(_$HomeEventInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeEventInitImpl implements HomeEventInit {
  const _$HomeEventInitImpl();

  @override
  String toString() {
    return 'HomeEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeEventInitImpl);
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
    required TResult Function(HomeEventInit value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventInit value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventInit value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class HomeEventInit implements HomeEvent {
  const factory HomeEventInit() = _$HomeEventInitImpl;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(VideoResponse listOfAccounts) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(VideoResponse listOfAccounts)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(VideoResponse listOfAccounts)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitialState value) initial,
    required TResult Function(HomeLoadInProgressState value) loadInProgress,
    required TResult Function(HomeLoadSuccessState value) loadSuccess,
    required TResult Function(HomeLoadFailureState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitialState value)? initial,
    TResult? Function(HomeLoadInProgressState value)? loadInProgress,
    TResult? Function(HomeLoadSuccessState value)? loadSuccess,
    TResult? Function(HomeLoadFailureState value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitialState value)? initial,
    TResult Function(HomeLoadInProgressState value)? loadInProgress,
    TResult Function(HomeLoadSuccessState value)? loadSuccess,
    TResult Function(HomeLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeInitialStateImplCopyWith<$Res> {
  factory _$$HomeInitialStateImplCopyWith(_$HomeInitialStateImpl value,
          $Res Function(_$HomeInitialStateImpl) then) =
      __$$HomeInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeInitialStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeInitialStateImpl>
    implements _$$HomeInitialStateImplCopyWith<$Res> {
  __$$HomeInitialStateImplCopyWithImpl(_$HomeInitialStateImpl _value,
      $Res Function(_$HomeInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeInitialStateImpl implements HomeInitialState {
  const _$HomeInitialStateImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(VideoResponse listOfAccounts) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(VideoResponse listOfAccounts)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(VideoResponse listOfAccounts)? loadSuccess,
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
    required TResult Function(HomeInitialState value) initial,
    required TResult Function(HomeLoadInProgressState value) loadInProgress,
    required TResult Function(HomeLoadSuccessState value) loadSuccess,
    required TResult Function(HomeLoadFailureState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitialState value)? initial,
    TResult? Function(HomeLoadInProgressState value)? loadInProgress,
    TResult? Function(HomeLoadSuccessState value)? loadSuccess,
    TResult? Function(HomeLoadFailureState value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitialState value)? initial,
    TResult Function(HomeLoadInProgressState value)? loadInProgress,
    TResult Function(HomeLoadSuccessState value)? loadSuccess,
    TResult Function(HomeLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeInitialState implements HomeState {
  const factory HomeInitialState() = _$HomeInitialStateImpl;
}

/// @nodoc
abstract class _$$HomeLoadInProgressStateImplCopyWith<$Res> {
  factory _$$HomeLoadInProgressStateImplCopyWith(
          _$HomeLoadInProgressStateImpl value,
          $Res Function(_$HomeLoadInProgressStateImpl) then) =
      __$$HomeLoadInProgressStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadInProgressStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadInProgressStateImpl>
    implements _$$HomeLoadInProgressStateImplCopyWith<$Res> {
  __$$HomeLoadInProgressStateImplCopyWithImpl(
      _$HomeLoadInProgressStateImpl _value,
      $Res Function(_$HomeLoadInProgressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeLoadInProgressStateImpl implements HomeLoadInProgressState {
  const _$HomeLoadInProgressStateImpl();

  @override
  String toString() {
    return 'HomeState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadInProgressStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(VideoResponse listOfAccounts) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(VideoResponse listOfAccounts)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(VideoResponse listOfAccounts)? loadSuccess,
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
    required TResult Function(HomeInitialState value) initial,
    required TResult Function(HomeLoadInProgressState value) loadInProgress,
    required TResult Function(HomeLoadSuccessState value) loadSuccess,
    required TResult Function(HomeLoadFailureState value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitialState value)? initial,
    TResult? Function(HomeLoadInProgressState value)? loadInProgress,
    TResult? Function(HomeLoadSuccessState value)? loadSuccess,
    TResult? Function(HomeLoadFailureState value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitialState value)? initial,
    TResult Function(HomeLoadInProgressState value)? loadInProgress,
    TResult Function(HomeLoadSuccessState value)? loadSuccess,
    TResult Function(HomeLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class HomeLoadInProgressState implements HomeState {
  const factory HomeLoadInProgressState() = _$HomeLoadInProgressStateImpl;
}

/// @nodoc
abstract class _$$HomeLoadSuccessStateImplCopyWith<$Res> {
  factory _$$HomeLoadSuccessStateImplCopyWith(_$HomeLoadSuccessStateImpl value,
          $Res Function(_$HomeLoadSuccessStateImpl) then) =
      __$$HomeLoadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VideoResponse listOfAccounts});

  $VideoResponseCopyWith<$Res> get listOfAccounts;
}

/// @nodoc
class __$$HomeLoadSuccessStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadSuccessStateImpl>
    implements _$$HomeLoadSuccessStateImplCopyWith<$Res> {
  __$$HomeLoadSuccessStateImplCopyWithImpl(_$HomeLoadSuccessStateImpl _value,
      $Res Function(_$HomeLoadSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfAccounts = null,
  }) {
    return _then(_$HomeLoadSuccessStateImpl(
      null == listOfAccounts
          ? _value.listOfAccounts
          : listOfAccounts // ignore: cast_nullable_to_non_nullable
              as VideoResponse,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoResponseCopyWith<$Res> get listOfAccounts {
    return $VideoResponseCopyWith<$Res>(_value.listOfAccounts, (value) {
      return _then(_value.copyWith(listOfAccounts: value));
    });
  }
}

/// @nodoc

class _$HomeLoadSuccessStateImpl implements HomeLoadSuccessState {
  const _$HomeLoadSuccessStateImpl(this.listOfAccounts);

  @override
  final VideoResponse listOfAccounts;

  @override
  String toString() {
    return 'HomeState.loadSuccess(listOfAccounts: $listOfAccounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadSuccessStateImpl &&
            (identical(other.listOfAccounts, listOfAccounts) ||
                other.listOfAccounts == listOfAccounts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listOfAccounts);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeLoadSuccessStateImplCopyWith<_$HomeLoadSuccessStateImpl>
      get copyWith =>
          __$$HomeLoadSuccessStateImplCopyWithImpl<_$HomeLoadSuccessStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(VideoResponse listOfAccounts) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadSuccess(listOfAccounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(VideoResponse listOfAccounts)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadSuccess?.call(listOfAccounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(VideoResponse listOfAccounts)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(listOfAccounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitialState value) initial,
    required TResult Function(HomeLoadInProgressState value) loadInProgress,
    required TResult Function(HomeLoadSuccessState value) loadSuccess,
    required TResult Function(HomeLoadFailureState value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitialState value)? initial,
    TResult? Function(HomeLoadInProgressState value)? loadInProgress,
    TResult? Function(HomeLoadSuccessState value)? loadSuccess,
    TResult? Function(HomeLoadFailureState value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitialState value)? initial,
    TResult Function(HomeLoadInProgressState value)? loadInProgress,
    TResult Function(HomeLoadSuccessState value)? loadSuccess,
    TResult Function(HomeLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class HomeLoadSuccessState implements HomeState {
  const factory HomeLoadSuccessState(final VideoResponse listOfAccounts) =
      _$HomeLoadSuccessStateImpl;

  VideoResponse get listOfAccounts;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeLoadSuccessStateImplCopyWith<_$HomeLoadSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeLoadFailureStateImplCopyWith<$Res> {
  factory _$$HomeLoadFailureStateImplCopyWith(_$HomeLoadFailureStateImpl value,
          $Res Function(_$HomeLoadFailureStateImpl) then) =
      __$$HomeLoadFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$HomeLoadFailureStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadFailureStateImpl>
    implements _$$HomeLoadFailureStateImplCopyWith<$Res> {
  __$$HomeLoadFailureStateImplCopyWithImpl(_$HomeLoadFailureStateImpl _value,
      $Res Function(_$HomeLoadFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$HomeLoadFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeLoadFailureStateImpl implements HomeLoadFailureState {
  const _$HomeLoadFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'HomeState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeLoadFailureStateImplCopyWith<_$HomeLoadFailureStateImpl>
      get copyWith =>
          __$$HomeLoadFailureStateImplCopyWithImpl<_$HomeLoadFailureStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(VideoResponse listOfAccounts) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(VideoResponse listOfAccounts)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(VideoResponse listOfAccounts)? loadSuccess,
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
    required TResult Function(HomeInitialState value) initial,
    required TResult Function(HomeLoadInProgressState value) loadInProgress,
    required TResult Function(HomeLoadSuccessState value) loadSuccess,
    required TResult Function(HomeLoadFailureState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitialState value)? initial,
    TResult? Function(HomeLoadInProgressState value)? loadInProgress,
    TResult? Function(HomeLoadSuccessState value)? loadSuccess,
    TResult? Function(HomeLoadFailureState value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitialState value)? initial,
    TResult Function(HomeLoadInProgressState value)? loadInProgress,
    TResult Function(HomeLoadSuccessState value)? loadSuccess,
    TResult Function(HomeLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class HomeLoadFailureState implements HomeState {
  const factory HomeLoadFailureState(final String error) =
      _$HomeLoadFailureStateImpl;

  String get error;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeLoadFailureStateImplCopyWith<_$HomeLoadFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
