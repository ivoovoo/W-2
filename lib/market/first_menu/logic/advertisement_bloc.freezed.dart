// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advertisement_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdvertisementEvent {
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
    required TResult Function(AdvertisementEventInit value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdvertisementEventInit value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvertisementEventInit value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementEventCopyWith<$Res> {
  factory $AdvertisementEventCopyWith(
          AdvertisementEvent value, $Res Function(AdvertisementEvent) then) =
      _$AdvertisementEventCopyWithImpl<$Res, AdvertisementEvent>;
}

/// @nodoc
class _$AdvertisementEventCopyWithImpl<$Res, $Val extends AdvertisementEvent>
    implements $AdvertisementEventCopyWith<$Res> {
  _$AdvertisementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdvertisementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AdvertisementEventInitImplCopyWith<$Res> {
  factory _$$AdvertisementEventInitImplCopyWith(
          _$AdvertisementEventInitImpl value,
          $Res Function(_$AdvertisementEventInitImpl) then) =
      __$$AdvertisementEventInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdvertisementEventInitImplCopyWithImpl<$Res>
    extends _$AdvertisementEventCopyWithImpl<$Res, _$AdvertisementEventInitImpl>
    implements _$$AdvertisementEventInitImplCopyWith<$Res> {
  __$$AdvertisementEventInitImplCopyWithImpl(
      _$AdvertisementEventInitImpl _value,
      $Res Function(_$AdvertisementEventInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AdvertisementEventInitImpl implements AdvertisementEventInit {
  const _$AdvertisementEventInitImpl();

  @override
  String toString() {
    return 'AdvertisementEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementEventInitImpl);
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
    required TResult Function(AdvertisementEventInit value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdvertisementEventInit value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvertisementEventInit value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class AdvertisementEventInit implements AdvertisementEvent {
  const factory AdvertisementEventInit() = _$AdvertisementEventInitImpl;
}

/// @nodoc
mixin _$AdvertisementState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(AdvertisementResponse advertisements) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(AdvertisementResponse advertisements)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(AdvertisementResponse advertisements)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdvertisementInitialState value) initial,
    required TResult Function(AdvertisementLoadInProgressState value)
        loadInProgress,
    required TResult Function(AdvertisementLoadSuccessState value) loadSuccess,
    required TResult Function(AdvertisementLoadFailureState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdvertisementInitialState value)? initial,
    TResult? Function(AdvertisementLoadInProgressState value)? loadInProgress,
    TResult? Function(AdvertisementLoadSuccessState value)? loadSuccess,
    TResult? Function(AdvertisementLoadFailureState value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvertisementInitialState value)? initial,
    TResult Function(AdvertisementLoadInProgressState value)? loadInProgress,
    TResult Function(AdvertisementLoadSuccessState value)? loadSuccess,
    TResult Function(AdvertisementLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementStateCopyWith<$Res> {
  factory $AdvertisementStateCopyWith(
          AdvertisementState value, $Res Function(AdvertisementState) then) =
      _$AdvertisementStateCopyWithImpl<$Res, AdvertisementState>;
}

/// @nodoc
class _$AdvertisementStateCopyWithImpl<$Res, $Val extends AdvertisementState>
    implements $AdvertisementStateCopyWith<$Res> {
  _$AdvertisementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdvertisementState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AdvertisementInitialStateImplCopyWith<$Res> {
  factory _$$AdvertisementInitialStateImplCopyWith(
          _$AdvertisementInitialStateImpl value,
          $Res Function(_$AdvertisementInitialStateImpl) then) =
      __$$AdvertisementInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdvertisementInitialStateImplCopyWithImpl<$Res>
    extends _$AdvertisementStateCopyWithImpl<$Res,
        _$AdvertisementInitialStateImpl>
    implements _$$AdvertisementInitialStateImplCopyWith<$Res> {
  __$$AdvertisementInitialStateImplCopyWithImpl(
      _$AdvertisementInitialStateImpl _value,
      $Res Function(_$AdvertisementInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisementState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AdvertisementInitialStateImpl implements AdvertisementInitialState {
  const _$AdvertisementInitialStateImpl();

  @override
  String toString() {
    return 'AdvertisementState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(AdvertisementResponse advertisements) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(AdvertisementResponse advertisements)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(AdvertisementResponse advertisements)? loadSuccess,
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
    required TResult Function(AdvertisementInitialState value) initial,
    required TResult Function(AdvertisementLoadInProgressState value)
        loadInProgress,
    required TResult Function(AdvertisementLoadSuccessState value) loadSuccess,
    required TResult Function(AdvertisementLoadFailureState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdvertisementInitialState value)? initial,
    TResult? Function(AdvertisementLoadInProgressState value)? loadInProgress,
    TResult? Function(AdvertisementLoadSuccessState value)? loadSuccess,
    TResult? Function(AdvertisementLoadFailureState value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvertisementInitialState value)? initial,
    TResult Function(AdvertisementLoadInProgressState value)? loadInProgress,
    TResult Function(AdvertisementLoadSuccessState value)? loadSuccess,
    TResult Function(AdvertisementLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AdvertisementInitialState implements AdvertisementState {
  const factory AdvertisementInitialState() = _$AdvertisementInitialStateImpl;
}

/// @nodoc
abstract class _$$AdvertisementLoadInProgressStateImplCopyWith<$Res> {
  factory _$$AdvertisementLoadInProgressStateImplCopyWith(
          _$AdvertisementLoadInProgressStateImpl value,
          $Res Function(_$AdvertisementLoadInProgressStateImpl) then) =
      __$$AdvertisementLoadInProgressStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdvertisementLoadInProgressStateImplCopyWithImpl<$Res>
    extends _$AdvertisementStateCopyWithImpl<$Res,
        _$AdvertisementLoadInProgressStateImpl>
    implements _$$AdvertisementLoadInProgressStateImplCopyWith<$Res> {
  __$$AdvertisementLoadInProgressStateImplCopyWithImpl(
      _$AdvertisementLoadInProgressStateImpl _value,
      $Res Function(_$AdvertisementLoadInProgressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisementState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AdvertisementLoadInProgressStateImpl
    implements AdvertisementLoadInProgressState {
  const _$AdvertisementLoadInProgressStateImpl();

  @override
  String toString() {
    return 'AdvertisementState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementLoadInProgressStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(AdvertisementResponse advertisements) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(AdvertisementResponse advertisements)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(AdvertisementResponse advertisements)? loadSuccess,
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
    required TResult Function(AdvertisementInitialState value) initial,
    required TResult Function(AdvertisementLoadInProgressState value)
        loadInProgress,
    required TResult Function(AdvertisementLoadSuccessState value) loadSuccess,
    required TResult Function(AdvertisementLoadFailureState value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdvertisementInitialState value)? initial,
    TResult? Function(AdvertisementLoadInProgressState value)? loadInProgress,
    TResult? Function(AdvertisementLoadSuccessState value)? loadSuccess,
    TResult? Function(AdvertisementLoadFailureState value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvertisementInitialState value)? initial,
    TResult Function(AdvertisementLoadInProgressState value)? loadInProgress,
    TResult Function(AdvertisementLoadSuccessState value)? loadSuccess,
    TResult Function(AdvertisementLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class AdvertisementLoadInProgressState implements AdvertisementState {
  const factory AdvertisementLoadInProgressState() =
      _$AdvertisementLoadInProgressStateImpl;
}

/// @nodoc
abstract class _$$AdvertisementLoadSuccessStateImplCopyWith<$Res> {
  factory _$$AdvertisementLoadSuccessStateImplCopyWith(
          _$AdvertisementLoadSuccessStateImpl value,
          $Res Function(_$AdvertisementLoadSuccessStateImpl) then) =
      __$$AdvertisementLoadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AdvertisementResponse advertisements});

  $AdvertisementResponseCopyWith<$Res> get advertisements;
}

/// @nodoc
class __$$AdvertisementLoadSuccessStateImplCopyWithImpl<$Res>
    extends _$AdvertisementStateCopyWithImpl<$Res,
        _$AdvertisementLoadSuccessStateImpl>
    implements _$$AdvertisementLoadSuccessStateImplCopyWith<$Res> {
  __$$AdvertisementLoadSuccessStateImplCopyWithImpl(
      _$AdvertisementLoadSuccessStateImpl _value,
      $Res Function(_$AdvertisementLoadSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advertisements = null,
  }) {
    return _then(_$AdvertisementLoadSuccessStateImpl(
      null == advertisements
          ? _value.advertisements
          : advertisements // ignore: cast_nullable_to_non_nullable
              as AdvertisementResponse,
    ));
  }

  /// Create a copy of AdvertisementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdvertisementResponseCopyWith<$Res> get advertisements {
    return $AdvertisementResponseCopyWith<$Res>(_value.advertisements, (value) {
      return _then(_value.copyWith(advertisements: value));
    });
  }
}

/// @nodoc

class _$AdvertisementLoadSuccessStateImpl
    implements AdvertisementLoadSuccessState {
  const _$AdvertisementLoadSuccessStateImpl(this.advertisements);

  @override
  final AdvertisementResponse advertisements;

  @override
  String toString() {
    return 'AdvertisementState.loadSuccess(advertisements: $advertisements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementLoadSuccessStateImpl &&
            (identical(other.advertisements, advertisements) ||
                other.advertisements == advertisements));
  }

  @override
  int get hashCode => Object.hash(runtimeType, advertisements);

  /// Create a copy of AdvertisementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementLoadSuccessStateImplCopyWith<
          _$AdvertisementLoadSuccessStateImpl>
      get copyWith => __$$AdvertisementLoadSuccessStateImplCopyWithImpl<
          _$AdvertisementLoadSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(AdvertisementResponse advertisements) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadSuccess(advertisements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(AdvertisementResponse advertisements)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadSuccess?.call(advertisements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(AdvertisementResponse advertisements)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(advertisements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdvertisementInitialState value) initial,
    required TResult Function(AdvertisementLoadInProgressState value)
        loadInProgress,
    required TResult Function(AdvertisementLoadSuccessState value) loadSuccess,
    required TResult Function(AdvertisementLoadFailureState value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdvertisementInitialState value)? initial,
    TResult? Function(AdvertisementLoadInProgressState value)? loadInProgress,
    TResult? Function(AdvertisementLoadSuccessState value)? loadSuccess,
    TResult? Function(AdvertisementLoadFailureState value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvertisementInitialState value)? initial,
    TResult Function(AdvertisementLoadInProgressState value)? loadInProgress,
    TResult Function(AdvertisementLoadSuccessState value)? loadSuccess,
    TResult Function(AdvertisementLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class AdvertisementLoadSuccessState implements AdvertisementState {
  const factory AdvertisementLoadSuccessState(
          final AdvertisementResponse advertisements) =
      _$AdvertisementLoadSuccessStateImpl;

  AdvertisementResponse get advertisements;

  /// Create a copy of AdvertisementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvertisementLoadSuccessStateImplCopyWith<
          _$AdvertisementLoadSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AdvertisementLoadFailureStateImplCopyWith<$Res> {
  factory _$$AdvertisementLoadFailureStateImplCopyWith(
          _$AdvertisementLoadFailureStateImpl value,
          $Res Function(_$AdvertisementLoadFailureStateImpl) then) =
      __$$AdvertisementLoadFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AdvertisementLoadFailureStateImplCopyWithImpl<$Res>
    extends _$AdvertisementStateCopyWithImpl<$Res,
        _$AdvertisementLoadFailureStateImpl>
    implements _$$AdvertisementLoadFailureStateImplCopyWith<$Res> {
  __$$AdvertisementLoadFailureStateImplCopyWithImpl(
      _$AdvertisementLoadFailureStateImpl _value,
      $Res Function(_$AdvertisementLoadFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AdvertisementLoadFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AdvertisementLoadFailureStateImpl
    implements AdvertisementLoadFailureState {
  const _$AdvertisementLoadFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AdvertisementState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementLoadFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AdvertisementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementLoadFailureStateImplCopyWith<
          _$AdvertisementLoadFailureStateImpl>
      get copyWith => __$$AdvertisementLoadFailureStateImplCopyWithImpl<
          _$AdvertisementLoadFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(AdvertisementResponse advertisements) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(AdvertisementResponse advertisements)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(AdvertisementResponse advertisements)? loadSuccess,
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
    required TResult Function(AdvertisementInitialState value) initial,
    required TResult Function(AdvertisementLoadInProgressState value)
        loadInProgress,
    required TResult Function(AdvertisementLoadSuccessState value) loadSuccess,
    required TResult Function(AdvertisementLoadFailureState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdvertisementInitialState value)? initial,
    TResult? Function(AdvertisementLoadInProgressState value)? loadInProgress,
    TResult? Function(AdvertisementLoadSuccessState value)? loadSuccess,
    TResult? Function(AdvertisementLoadFailureState value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvertisementInitialState value)? initial,
    TResult Function(AdvertisementLoadInProgressState value)? loadInProgress,
    TResult Function(AdvertisementLoadSuccessState value)? loadSuccess,
    TResult Function(AdvertisementLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class AdvertisementLoadFailureState implements AdvertisementState {
  const factory AdvertisementLoadFailureState(final String error) =
      _$AdvertisementLoadFailureStateImpl;

  String get error;

  /// Create a copy of AdvertisementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvertisementLoadFailureStateImplCopyWith<
          _$AdvertisementLoadFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
