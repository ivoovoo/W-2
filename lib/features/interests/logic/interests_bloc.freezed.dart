// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interests_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InterestsEvent {
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
    required TResult Function(InterestsEventInit value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InterestsEventInit value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InterestsEventInit value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestsEventCopyWith<$Res> {
  factory $InterestsEventCopyWith(
          InterestsEvent value, $Res Function(InterestsEvent) then) =
      _$InterestsEventCopyWithImpl<$Res, InterestsEvent>;
}

/// @nodoc
class _$InterestsEventCopyWithImpl<$Res, $Val extends InterestsEvent>
    implements $InterestsEventCopyWith<$Res> {
  _$InterestsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterestsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InterestsEventInitImplCopyWith<$Res> {
  factory _$$InterestsEventInitImplCopyWith(_$InterestsEventInitImpl value,
          $Res Function(_$InterestsEventInitImpl) then) =
      __$$InterestsEventInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InterestsEventInitImplCopyWithImpl<$Res>
    extends _$InterestsEventCopyWithImpl<$Res, _$InterestsEventInitImpl>
    implements _$$InterestsEventInitImplCopyWith<$Res> {
  __$$InterestsEventInitImplCopyWithImpl(_$InterestsEventInitImpl _value,
      $Res Function(_$InterestsEventInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterestsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InterestsEventInitImpl implements InterestsEventInit {
  const _$InterestsEventInitImpl();

  @override
  String toString() {
    return 'InterestsEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InterestsEventInitImpl);
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
    required TResult Function(InterestsEventInit value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InterestsEventInit value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InterestsEventInit value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InterestsEventInit implements InterestsEvent {
  const factory InterestsEventInit() = _$InterestsEventInitImpl;
}

/// @nodoc
mixin _$InterestsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(InterestResponse interests) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(InterestResponse interests)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(InterestResponse interests)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InterestsInitialState value) initial,
    required TResult Function(InterestsLoadInProgressState value)
        loadInProgress,
    required TResult Function(InterestsLoadSuccessState value) loadSuccess,
    required TResult Function(InterestsLoadFailureState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InterestsInitialState value)? initial,
    TResult? Function(InterestsLoadInProgressState value)? loadInProgress,
    TResult? Function(InterestsLoadSuccessState value)? loadSuccess,
    TResult? Function(InterestsLoadFailureState value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InterestsInitialState value)? initial,
    TResult Function(InterestsLoadInProgressState value)? loadInProgress,
    TResult Function(InterestsLoadSuccessState value)? loadSuccess,
    TResult Function(InterestsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestsStateCopyWith<$Res> {
  factory $InterestsStateCopyWith(
          InterestsState value, $Res Function(InterestsState) then) =
      _$InterestsStateCopyWithImpl<$Res, InterestsState>;
}

/// @nodoc
class _$InterestsStateCopyWithImpl<$Res, $Val extends InterestsState>
    implements $InterestsStateCopyWith<$Res> {
  _$InterestsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InterestsInitialStateImplCopyWith<$Res> {
  factory _$$InterestsInitialStateImplCopyWith(
          _$InterestsInitialStateImpl value,
          $Res Function(_$InterestsInitialStateImpl) then) =
      __$$InterestsInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InterestsInitialStateImplCopyWithImpl<$Res>
    extends _$InterestsStateCopyWithImpl<$Res, _$InterestsInitialStateImpl>
    implements _$$InterestsInitialStateImplCopyWith<$Res> {
  __$$InterestsInitialStateImplCopyWithImpl(_$InterestsInitialStateImpl _value,
      $Res Function(_$InterestsInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InterestsInitialStateImpl implements InterestsInitialState {
  const _$InterestsInitialStateImpl();

  @override
  String toString() {
    return 'InterestsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestsInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(InterestResponse interests) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(InterestResponse interests)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(InterestResponse interests)? loadSuccess,
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
    required TResult Function(InterestsInitialState value) initial,
    required TResult Function(InterestsLoadInProgressState value)
        loadInProgress,
    required TResult Function(InterestsLoadSuccessState value) loadSuccess,
    required TResult Function(InterestsLoadFailureState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InterestsInitialState value)? initial,
    TResult? Function(InterestsLoadInProgressState value)? loadInProgress,
    TResult? Function(InterestsLoadSuccessState value)? loadSuccess,
    TResult? Function(InterestsLoadFailureState value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InterestsInitialState value)? initial,
    TResult Function(InterestsLoadInProgressState value)? loadInProgress,
    TResult Function(InterestsLoadSuccessState value)? loadSuccess,
    TResult Function(InterestsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InterestsInitialState implements InterestsState {
  const factory InterestsInitialState() = _$InterestsInitialStateImpl;
}

/// @nodoc
abstract class _$$InterestsLoadInProgressStateImplCopyWith<$Res> {
  factory _$$InterestsLoadInProgressStateImplCopyWith(
          _$InterestsLoadInProgressStateImpl value,
          $Res Function(_$InterestsLoadInProgressStateImpl) then) =
      __$$InterestsLoadInProgressStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InterestsLoadInProgressStateImplCopyWithImpl<$Res>
    extends _$InterestsStateCopyWithImpl<$Res,
        _$InterestsLoadInProgressStateImpl>
    implements _$$InterestsLoadInProgressStateImplCopyWith<$Res> {
  __$$InterestsLoadInProgressStateImplCopyWithImpl(
      _$InterestsLoadInProgressStateImpl _value,
      $Res Function(_$InterestsLoadInProgressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InterestsLoadInProgressStateImpl
    implements InterestsLoadInProgressState {
  const _$InterestsLoadInProgressStateImpl();

  @override
  String toString() {
    return 'InterestsState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestsLoadInProgressStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(InterestResponse interests) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(InterestResponse interests)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(InterestResponse interests)? loadSuccess,
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
    required TResult Function(InterestsInitialState value) initial,
    required TResult Function(InterestsLoadInProgressState value)
        loadInProgress,
    required TResult Function(InterestsLoadSuccessState value) loadSuccess,
    required TResult Function(InterestsLoadFailureState value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InterestsInitialState value)? initial,
    TResult? Function(InterestsLoadInProgressState value)? loadInProgress,
    TResult? Function(InterestsLoadSuccessState value)? loadSuccess,
    TResult? Function(InterestsLoadFailureState value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InterestsInitialState value)? initial,
    TResult Function(InterestsLoadInProgressState value)? loadInProgress,
    TResult Function(InterestsLoadSuccessState value)? loadSuccess,
    TResult Function(InterestsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class InterestsLoadInProgressState implements InterestsState {
  const factory InterestsLoadInProgressState() =
      _$InterestsLoadInProgressStateImpl;
}

/// @nodoc
abstract class _$$InterestsLoadSuccessStateImplCopyWith<$Res> {
  factory _$$InterestsLoadSuccessStateImplCopyWith(
          _$InterestsLoadSuccessStateImpl value,
          $Res Function(_$InterestsLoadSuccessStateImpl) then) =
      __$$InterestsLoadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InterestResponse interests});

  $InterestResponseCopyWith<$Res> get interests;
}

/// @nodoc
class __$$InterestsLoadSuccessStateImplCopyWithImpl<$Res>
    extends _$InterestsStateCopyWithImpl<$Res, _$InterestsLoadSuccessStateImpl>
    implements _$$InterestsLoadSuccessStateImplCopyWith<$Res> {
  __$$InterestsLoadSuccessStateImplCopyWithImpl(
      _$InterestsLoadSuccessStateImpl _value,
      $Res Function(_$InterestsLoadSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interests = null,
  }) {
    return _then(_$InterestsLoadSuccessStateImpl(
      null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as InterestResponse,
    ));
  }

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InterestResponseCopyWith<$Res> get interests {
    return $InterestResponseCopyWith<$Res>(_value.interests, (value) {
      return _then(_value.copyWith(interests: value));
    });
  }
}

/// @nodoc

class _$InterestsLoadSuccessStateImpl implements InterestsLoadSuccessState {
  const _$InterestsLoadSuccessStateImpl(this.interests);

  @override
  final InterestResponse interests;

  @override
  String toString() {
    return 'InterestsState.loadSuccess(interests: $interests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestsLoadSuccessStateImpl &&
            (identical(other.interests, interests) ||
                other.interests == interests));
  }

  @override
  int get hashCode => Object.hash(runtimeType, interests);

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestsLoadSuccessStateImplCopyWith<_$InterestsLoadSuccessStateImpl>
      get copyWith => __$$InterestsLoadSuccessStateImplCopyWithImpl<
          _$InterestsLoadSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(InterestResponse interests) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadSuccess(interests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(InterestResponse interests)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadSuccess?.call(interests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(InterestResponse interests)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(interests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InterestsInitialState value) initial,
    required TResult Function(InterestsLoadInProgressState value)
        loadInProgress,
    required TResult Function(InterestsLoadSuccessState value) loadSuccess,
    required TResult Function(InterestsLoadFailureState value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InterestsInitialState value)? initial,
    TResult? Function(InterestsLoadInProgressState value)? loadInProgress,
    TResult? Function(InterestsLoadSuccessState value)? loadSuccess,
    TResult? Function(InterestsLoadFailureState value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InterestsInitialState value)? initial,
    TResult Function(InterestsLoadInProgressState value)? loadInProgress,
    TResult Function(InterestsLoadSuccessState value)? loadSuccess,
    TResult Function(InterestsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class InterestsLoadSuccessState implements InterestsState {
  const factory InterestsLoadSuccessState(final InterestResponse interests) =
      _$InterestsLoadSuccessStateImpl;

  InterestResponse get interests;

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterestsLoadSuccessStateImplCopyWith<_$InterestsLoadSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InterestsLoadFailureStateImplCopyWith<$Res> {
  factory _$$InterestsLoadFailureStateImplCopyWith(
          _$InterestsLoadFailureStateImpl value,
          $Res Function(_$InterestsLoadFailureStateImpl) then) =
      __$$InterestsLoadFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$InterestsLoadFailureStateImplCopyWithImpl<$Res>
    extends _$InterestsStateCopyWithImpl<$Res, _$InterestsLoadFailureStateImpl>
    implements _$$InterestsLoadFailureStateImplCopyWith<$Res> {
  __$$InterestsLoadFailureStateImplCopyWithImpl(
      _$InterestsLoadFailureStateImpl _value,
      $Res Function(_$InterestsLoadFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$InterestsLoadFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InterestsLoadFailureStateImpl implements InterestsLoadFailureState {
  const _$InterestsLoadFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'InterestsState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestsLoadFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestsLoadFailureStateImplCopyWith<_$InterestsLoadFailureStateImpl>
      get copyWith => __$$InterestsLoadFailureStateImplCopyWithImpl<
          _$InterestsLoadFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(InterestResponse interests) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(InterestResponse interests)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(InterestResponse interests)? loadSuccess,
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
    required TResult Function(InterestsInitialState value) initial,
    required TResult Function(InterestsLoadInProgressState value)
        loadInProgress,
    required TResult Function(InterestsLoadSuccessState value) loadSuccess,
    required TResult Function(InterestsLoadFailureState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InterestsInitialState value)? initial,
    TResult? Function(InterestsLoadInProgressState value)? loadInProgress,
    TResult? Function(InterestsLoadSuccessState value)? loadSuccess,
    TResult? Function(InterestsLoadFailureState value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InterestsInitialState value)? initial,
    TResult Function(InterestsLoadInProgressState value)? loadInProgress,
    TResult Function(InterestsLoadSuccessState value)? loadSuccess,
    TResult Function(InterestsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class InterestsLoadFailureState implements InterestsState {
  const factory InterestsLoadFailureState(final String error) =
      _$InterestsLoadFailureStateImpl;

  String get error;

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterestsLoadFailureStateImplCopyWith<_$InterestsLoadFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
