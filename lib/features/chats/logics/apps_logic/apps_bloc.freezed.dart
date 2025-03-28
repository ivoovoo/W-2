// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apps_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(dynamic formDataApp) createApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(dynamic formDataApp)? createApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic formDataApp)? createApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppsEventInit value) init,
    required TResult Function(CreateAppEvent value) createApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppsEventInit value)? init,
    TResult? Function(CreateAppEvent value)? createApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppsEventInit value)? init,
    TResult Function(CreateAppEvent value)? createApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppsEventCopyWith<$Res> {
  factory $AppsEventCopyWith(AppsEvent value, $Res Function(AppsEvent) then) =
      _$AppsEventCopyWithImpl<$Res, AppsEvent>;
}

/// @nodoc
class _$AppsEventCopyWithImpl<$Res, $Val extends AppsEvent>
    implements $AppsEventCopyWith<$Res> {
  _$AppsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppsEventInitImplCopyWith<$Res> {
  factory _$$AppsEventInitImplCopyWith(
          _$AppsEventInitImpl value, $Res Function(_$AppsEventInitImpl) then) =
      __$$AppsEventInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppsEventInitImplCopyWithImpl<$Res>
    extends _$AppsEventCopyWithImpl<$Res, _$AppsEventInitImpl>
    implements _$$AppsEventInitImplCopyWith<$Res> {
  __$$AppsEventInitImplCopyWithImpl(
      _$AppsEventInitImpl _value, $Res Function(_$AppsEventInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppsEventInitImpl implements AppsEventInit {
  const _$AppsEventInitImpl();

  @override
  String toString() {
    return 'AppsEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppsEventInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(dynamic formDataApp) createApp,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(dynamic formDataApp)? createApp,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic formDataApp)? createApp,
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
    required TResult Function(AppsEventInit value) init,
    required TResult Function(CreateAppEvent value) createApp,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppsEventInit value)? init,
    TResult? Function(CreateAppEvent value)? createApp,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppsEventInit value)? init,
    TResult Function(CreateAppEvent value)? createApp,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class AppsEventInit implements AppsEvent {
  const factory AppsEventInit() = _$AppsEventInitImpl;
}

/// @nodoc
abstract class _$$CreateAppEventImplCopyWith<$Res> {
  factory _$$CreateAppEventImplCopyWith(_$CreateAppEventImpl value,
          $Res Function(_$CreateAppEventImpl) then) =
      __$$CreateAppEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic formDataApp});
}

/// @nodoc
class __$$CreateAppEventImplCopyWithImpl<$Res>
    extends _$AppsEventCopyWithImpl<$Res, _$CreateAppEventImpl>
    implements _$$CreateAppEventImplCopyWith<$Res> {
  __$$CreateAppEventImplCopyWithImpl(
      _$CreateAppEventImpl _value, $Res Function(_$CreateAppEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formDataApp = freezed,
  }) {
    return _then(_$CreateAppEventImpl(
      formDataApp: freezed == formDataApp
          ? _value.formDataApp
          : formDataApp // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CreateAppEventImpl implements CreateAppEvent {
  const _$CreateAppEventImpl({required this.formDataApp});

  @override
  final dynamic formDataApp;

  @override
  String toString() {
    return 'AppsEvent.createApp(formDataApp: $formDataApp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAppEventImpl &&
            const DeepCollectionEquality()
                .equals(other.formDataApp, formDataApp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(formDataApp));

  /// Create a copy of AppsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAppEventImplCopyWith<_$CreateAppEventImpl> get copyWith =>
      __$$CreateAppEventImplCopyWithImpl<_$CreateAppEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(dynamic formDataApp) createApp,
  }) {
    return createApp(formDataApp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(dynamic formDataApp)? createApp,
  }) {
    return createApp?.call(formDataApp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic formDataApp)? createApp,
    required TResult orElse(),
  }) {
    if (createApp != null) {
      return createApp(formDataApp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppsEventInit value) init,
    required TResult Function(CreateAppEvent value) createApp,
  }) {
    return createApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppsEventInit value)? init,
    TResult? Function(CreateAppEvent value)? createApp,
  }) {
    return createApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppsEventInit value)? init,
    TResult Function(CreateAppEvent value)? createApp,
    required TResult orElse(),
  }) {
    if (createApp != null) {
      return createApp(this);
    }
    return orElse();
  }
}

abstract class CreateAppEvent implements AppsEvent {
  const factory CreateAppEvent({required final dynamic formDataApp}) =
      _$CreateAppEventImpl;

  dynamic get formDataApp;

  /// Create a copy of AppsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAppEventImplCopyWith<_$CreateAppEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(AppsModel apps) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(AppsModel apps)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(AppsModel apps)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppsInitialState value) initial,
    required TResult Function(AppsLoadInProgressState value) loadInProgress,
    required TResult Function(AppsLoadSuccessState value) loadSuccess,
    required TResult Function(AppsLoadFailureState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppsInitialState value)? initial,
    TResult? Function(AppsLoadInProgressState value)? loadInProgress,
    TResult? Function(AppsLoadSuccessState value)? loadSuccess,
    TResult? Function(AppsLoadFailureState value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppsInitialState value)? initial,
    TResult Function(AppsLoadInProgressState value)? loadInProgress,
    TResult Function(AppsLoadSuccessState value)? loadSuccess,
    TResult Function(AppsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppsStateCopyWith<$Res> {
  factory $AppsStateCopyWith(AppsState value, $Res Function(AppsState) then) =
      _$AppsStateCopyWithImpl<$Res, AppsState>;
}

/// @nodoc
class _$AppsStateCopyWithImpl<$Res, $Val extends AppsState>
    implements $AppsStateCopyWith<$Res> {
  _$AppsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppsInitialStateImplCopyWith<$Res> {
  factory _$$AppsInitialStateImplCopyWith(_$AppsInitialStateImpl value,
          $Res Function(_$AppsInitialStateImpl) then) =
      __$$AppsInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppsInitialStateImplCopyWithImpl<$Res>
    extends _$AppsStateCopyWithImpl<$Res, _$AppsInitialStateImpl>
    implements _$$AppsInitialStateImplCopyWith<$Res> {
  __$$AppsInitialStateImplCopyWithImpl(_$AppsInitialStateImpl _value,
      $Res Function(_$AppsInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppsInitialStateImpl implements AppsInitialState {
  const _$AppsInitialStateImpl();

  @override
  String toString() {
    return 'AppsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppsInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(AppsModel apps) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(AppsModel apps)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(AppsModel apps)? loadSuccess,
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
    required TResult Function(AppsInitialState value) initial,
    required TResult Function(AppsLoadInProgressState value) loadInProgress,
    required TResult Function(AppsLoadSuccessState value) loadSuccess,
    required TResult Function(AppsLoadFailureState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppsInitialState value)? initial,
    TResult? Function(AppsLoadInProgressState value)? loadInProgress,
    TResult? Function(AppsLoadSuccessState value)? loadSuccess,
    TResult? Function(AppsLoadFailureState value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppsInitialState value)? initial,
    TResult Function(AppsLoadInProgressState value)? loadInProgress,
    TResult Function(AppsLoadSuccessState value)? loadSuccess,
    TResult Function(AppsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AppsInitialState implements AppsState {
  const factory AppsInitialState() = _$AppsInitialStateImpl;
}

/// @nodoc
abstract class _$$AppsLoadInProgressStateImplCopyWith<$Res> {
  factory _$$AppsLoadInProgressStateImplCopyWith(
          _$AppsLoadInProgressStateImpl value,
          $Res Function(_$AppsLoadInProgressStateImpl) then) =
      __$$AppsLoadInProgressStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppsLoadInProgressStateImplCopyWithImpl<$Res>
    extends _$AppsStateCopyWithImpl<$Res, _$AppsLoadInProgressStateImpl>
    implements _$$AppsLoadInProgressStateImplCopyWith<$Res> {
  __$$AppsLoadInProgressStateImplCopyWithImpl(
      _$AppsLoadInProgressStateImpl _value,
      $Res Function(_$AppsLoadInProgressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppsLoadInProgressStateImpl implements AppsLoadInProgressState {
  const _$AppsLoadInProgressStateImpl();

  @override
  String toString() {
    return 'AppsState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppsLoadInProgressStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(AppsModel apps) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(AppsModel apps)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(AppsModel apps)? loadSuccess,
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
    required TResult Function(AppsInitialState value) initial,
    required TResult Function(AppsLoadInProgressState value) loadInProgress,
    required TResult Function(AppsLoadSuccessState value) loadSuccess,
    required TResult Function(AppsLoadFailureState value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppsInitialState value)? initial,
    TResult? Function(AppsLoadInProgressState value)? loadInProgress,
    TResult? Function(AppsLoadSuccessState value)? loadSuccess,
    TResult? Function(AppsLoadFailureState value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppsInitialState value)? initial,
    TResult Function(AppsLoadInProgressState value)? loadInProgress,
    TResult Function(AppsLoadSuccessState value)? loadSuccess,
    TResult Function(AppsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class AppsLoadInProgressState implements AppsState {
  const factory AppsLoadInProgressState() = _$AppsLoadInProgressStateImpl;
}

/// @nodoc
abstract class _$$AppsLoadSuccessStateImplCopyWith<$Res> {
  factory _$$AppsLoadSuccessStateImplCopyWith(_$AppsLoadSuccessStateImpl value,
          $Res Function(_$AppsLoadSuccessStateImpl) then) =
      __$$AppsLoadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppsModel apps});

  $AppsModelCopyWith<$Res> get apps;
}

/// @nodoc
class __$$AppsLoadSuccessStateImplCopyWithImpl<$Res>
    extends _$AppsStateCopyWithImpl<$Res, _$AppsLoadSuccessStateImpl>
    implements _$$AppsLoadSuccessStateImplCopyWith<$Res> {
  __$$AppsLoadSuccessStateImplCopyWithImpl(_$AppsLoadSuccessStateImpl _value,
      $Res Function(_$AppsLoadSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apps = null,
  }) {
    return _then(_$AppsLoadSuccessStateImpl(
      null == apps
          ? _value.apps
          : apps // ignore: cast_nullable_to_non_nullable
              as AppsModel,
    ));
  }

  /// Create a copy of AppsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppsModelCopyWith<$Res> get apps {
    return $AppsModelCopyWith<$Res>(_value.apps, (value) {
      return _then(_value.copyWith(apps: value));
    });
  }
}

/// @nodoc

class _$AppsLoadSuccessStateImpl implements AppsLoadSuccessState {
  const _$AppsLoadSuccessStateImpl(this.apps);

  @override
  final AppsModel apps;

  @override
  String toString() {
    return 'AppsState.loadSuccess(apps: $apps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppsLoadSuccessStateImpl &&
            (identical(other.apps, apps) || other.apps == apps));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apps);

  /// Create a copy of AppsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppsLoadSuccessStateImplCopyWith<_$AppsLoadSuccessStateImpl>
      get copyWith =>
          __$$AppsLoadSuccessStateImplCopyWithImpl<_$AppsLoadSuccessStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(AppsModel apps) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadSuccess(apps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(AppsModel apps)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadSuccess?.call(apps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(AppsModel apps)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(apps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppsInitialState value) initial,
    required TResult Function(AppsLoadInProgressState value) loadInProgress,
    required TResult Function(AppsLoadSuccessState value) loadSuccess,
    required TResult Function(AppsLoadFailureState value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppsInitialState value)? initial,
    TResult? Function(AppsLoadInProgressState value)? loadInProgress,
    TResult? Function(AppsLoadSuccessState value)? loadSuccess,
    TResult? Function(AppsLoadFailureState value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppsInitialState value)? initial,
    TResult Function(AppsLoadInProgressState value)? loadInProgress,
    TResult Function(AppsLoadSuccessState value)? loadSuccess,
    TResult Function(AppsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class AppsLoadSuccessState implements AppsState {
  const factory AppsLoadSuccessState(final AppsModel apps) =
      _$AppsLoadSuccessStateImpl;

  AppsModel get apps;

  /// Create a copy of AppsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppsLoadSuccessStateImplCopyWith<_$AppsLoadSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppsLoadFailureStateImplCopyWith<$Res> {
  factory _$$AppsLoadFailureStateImplCopyWith(_$AppsLoadFailureStateImpl value,
          $Res Function(_$AppsLoadFailureStateImpl) then) =
      __$$AppsLoadFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AppsLoadFailureStateImplCopyWithImpl<$Res>
    extends _$AppsStateCopyWithImpl<$Res, _$AppsLoadFailureStateImpl>
    implements _$$AppsLoadFailureStateImplCopyWith<$Res> {
  __$$AppsLoadFailureStateImplCopyWithImpl(_$AppsLoadFailureStateImpl _value,
      $Res Function(_$AppsLoadFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AppsLoadFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppsLoadFailureStateImpl implements AppsLoadFailureState {
  const _$AppsLoadFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AppsState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppsLoadFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AppsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppsLoadFailureStateImplCopyWith<_$AppsLoadFailureStateImpl>
      get copyWith =>
          __$$AppsLoadFailureStateImplCopyWithImpl<_$AppsLoadFailureStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(AppsModel apps) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(AppsModel apps)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(AppsModel apps)? loadSuccess,
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
    required TResult Function(AppsInitialState value) initial,
    required TResult Function(AppsLoadInProgressState value) loadInProgress,
    required TResult Function(AppsLoadSuccessState value) loadSuccess,
    required TResult Function(AppsLoadFailureState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppsInitialState value)? initial,
    TResult? Function(AppsLoadInProgressState value)? loadInProgress,
    TResult? Function(AppsLoadSuccessState value)? loadSuccess,
    TResult? Function(AppsLoadFailureState value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppsInitialState value)? initial,
    TResult Function(AppsLoadInProgressState value)? loadInProgress,
    TResult Function(AppsLoadSuccessState value)? loadSuccess,
    TResult Function(AppsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class AppsLoadFailureState implements AppsState {
  const factory AppsLoadFailureState(final String error) =
      _$AppsLoadFailureStateImpl;

  String get error;

  /// Create a copy of AppsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppsLoadFailureStateImplCopyWith<_$AppsLoadFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
