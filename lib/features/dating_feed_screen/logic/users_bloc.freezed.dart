// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UsersEvent {
  String? get interest => throw _privateConstructorUsedError;
  int? get age_min => throw _privateConstructorUsedError;
  int? get age_max => throw _privateConstructorUsedError;
  int? get city => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? interest, int? age_min, int? age_max, int? city)
        init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? interest, int? age_min, int? age_max, int? city)?
        init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? interest, int? age_min, int? age_max, int? city)?
        init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersEventInit value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersEventInit value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersEventInit value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsersEventCopyWith<UsersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res, UsersEvent>;
  @useResult
  $Res call({String? interest, int? age_min, int? age_max, int? city});
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res, $Val extends UsersEvent>
    implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interest = freezed,
    Object? age_min = freezed,
    Object? age_max = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      interest: freezed == interest
          ? _value.interest
          : interest // ignore: cast_nullable_to_non_nullable
              as String?,
      age_min: freezed == age_min
          ? _value.age_min
          : age_min // ignore: cast_nullable_to_non_nullable
              as int?,
      age_max: freezed == age_max
          ? _value.age_max
          : age_max // ignore: cast_nullable_to_non_nullable
              as int?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersEventInitImplCopyWith<$Res>
    implements $UsersEventCopyWith<$Res> {
  factory _$$UsersEventInitImplCopyWith(_$UsersEventInitImpl value,
          $Res Function(_$UsersEventInitImpl) then) =
      __$$UsersEventInitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? interest, int? age_min, int? age_max, int? city});
}

/// @nodoc
class __$$UsersEventInitImplCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$UsersEventInitImpl>
    implements _$$UsersEventInitImplCopyWith<$Res> {
  __$$UsersEventInitImplCopyWithImpl(
      _$UsersEventInitImpl _value, $Res Function(_$UsersEventInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interest = freezed,
    Object? age_min = freezed,
    Object? age_max = freezed,
    Object? city = freezed,
  }) {
    return _then(_$UsersEventInitImpl(
      interest: freezed == interest
          ? _value.interest
          : interest // ignore: cast_nullable_to_non_nullable
              as String?,
      age_min: freezed == age_min
          ? _value.age_min
          : age_min // ignore: cast_nullable_to_non_nullable
              as int?,
      age_max: freezed == age_max
          ? _value.age_max
          : age_max // ignore: cast_nullable_to_non_nullable
              as int?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UsersEventInitImpl implements UsersEventInit {
  const _$UsersEventInitImpl(
      {this.interest, this.age_min, this.age_max, this.city});

  @override
  final String? interest;
  @override
  final int? age_min;
  @override
  final int? age_max;
  @override
  final int? city;

  @override
  String toString() {
    return 'UsersEvent.init(interest: $interest, age_min: $age_min, age_max: $age_max, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersEventInitImpl &&
            (identical(other.interest, interest) ||
                other.interest == interest) &&
            (identical(other.age_min, age_min) || other.age_min == age_min) &&
            (identical(other.age_max, age_max) || other.age_max == age_max) &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, interest, age_min, age_max, city);

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersEventInitImplCopyWith<_$UsersEventInitImpl> get copyWith =>
      __$$UsersEventInitImplCopyWithImpl<_$UsersEventInitImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? interest, int? age_min, int? age_max, int? city)
        init,
  }) {
    return init(interest, age_min, age_max, city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? interest, int? age_min, int? age_max, int? city)?
        init,
  }) {
    return init?.call(interest, age_min, age_max, city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? interest, int? age_min, int? age_max, int? city)?
        init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(interest, age_min, age_max, city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersEventInit value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersEventInit value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersEventInit value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UsersEventInit implements UsersEvent {
  const factory UsersEventInit(
      {final String? interest,
      final int? age_min,
      final int? age_max,
      final int? city}) = _$UsersEventInitImpl;

  @override
  String? get interest;
  @override
  int? get age_min;
  @override
  int? get age_max;
  @override
  int? get city;

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersEventInitImplCopyWith<_$UsersEventInitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(UserListResponse users) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(UserListResponse users)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserListResponse users)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersInitialState value) initial,
    required TResult Function(UsersLoadInProgressState value) loadInProgress,
    required TResult Function(UsersLoadSuccessState value) loadSuccess,
    required TResult Function(UsersLoadFailureState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersInitialState value)? initial,
    TResult? Function(UsersLoadInProgressState value)? loadInProgress,
    TResult? Function(UsersLoadSuccessState value)? loadSuccess,
    TResult? Function(UsersLoadFailureState value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersInitialState value)? initial,
    TResult Function(UsersLoadInProgressState value)? loadInProgress,
    TResult Function(UsersLoadSuccessState value)? loadSuccess,
    TResult Function(UsersLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UsersInitialStateImplCopyWith<$Res> {
  factory _$$UsersInitialStateImplCopyWith(_$UsersInitialStateImpl value,
          $Res Function(_$UsersInitialStateImpl) then) =
      __$$UsersInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsersInitialStateImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$UsersInitialStateImpl>
    implements _$$UsersInitialStateImplCopyWith<$Res> {
  __$$UsersInitialStateImplCopyWithImpl(_$UsersInitialStateImpl _value,
      $Res Function(_$UsersInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UsersInitialStateImpl implements UsersInitialState {
  const _$UsersInitialStateImpl();

  @override
  String toString() {
    return 'UsersState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UsersInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(UserListResponse users) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(UserListResponse users)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserListResponse users)? loadSuccess,
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
    required TResult Function(UsersInitialState value) initial,
    required TResult Function(UsersLoadInProgressState value) loadInProgress,
    required TResult Function(UsersLoadSuccessState value) loadSuccess,
    required TResult Function(UsersLoadFailureState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersInitialState value)? initial,
    TResult? Function(UsersLoadInProgressState value)? loadInProgress,
    TResult? Function(UsersLoadSuccessState value)? loadSuccess,
    TResult? Function(UsersLoadFailureState value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersInitialState value)? initial,
    TResult Function(UsersLoadInProgressState value)? loadInProgress,
    TResult Function(UsersLoadSuccessState value)? loadSuccess,
    TResult Function(UsersLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UsersInitialState implements UsersState {
  const factory UsersInitialState() = _$UsersInitialStateImpl;
}

/// @nodoc
abstract class _$$UsersLoadInProgressStateImplCopyWith<$Res> {
  factory _$$UsersLoadInProgressStateImplCopyWith(
          _$UsersLoadInProgressStateImpl value,
          $Res Function(_$UsersLoadInProgressStateImpl) then) =
      __$$UsersLoadInProgressStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsersLoadInProgressStateImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$UsersLoadInProgressStateImpl>
    implements _$$UsersLoadInProgressStateImplCopyWith<$Res> {
  __$$UsersLoadInProgressStateImplCopyWithImpl(
      _$UsersLoadInProgressStateImpl _value,
      $Res Function(_$UsersLoadInProgressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UsersLoadInProgressStateImpl implements UsersLoadInProgressState {
  const _$UsersLoadInProgressStateImpl();

  @override
  String toString() {
    return 'UsersState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersLoadInProgressStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(UserListResponse users) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(UserListResponse users)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserListResponse users)? loadSuccess,
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
    required TResult Function(UsersInitialState value) initial,
    required TResult Function(UsersLoadInProgressState value) loadInProgress,
    required TResult Function(UsersLoadSuccessState value) loadSuccess,
    required TResult Function(UsersLoadFailureState value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersInitialState value)? initial,
    TResult? Function(UsersLoadInProgressState value)? loadInProgress,
    TResult? Function(UsersLoadSuccessState value)? loadSuccess,
    TResult? Function(UsersLoadFailureState value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersInitialState value)? initial,
    TResult Function(UsersLoadInProgressState value)? loadInProgress,
    TResult Function(UsersLoadSuccessState value)? loadSuccess,
    TResult Function(UsersLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class UsersLoadInProgressState implements UsersState {
  const factory UsersLoadInProgressState() = _$UsersLoadInProgressStateImpl;
}

/// @nodoc
abstract class _$$UsersLoadSuccessStateImplCopyWith<$Res> {
  factory _$$UsersLoadSuccessStateImplCopyWith(
          _$UsersLoadSuccessStateImpl value,
          $Res Function(_$UsersLoadSuccessStateImpl) then) =
      __$$UsersLoadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserListResponse users});

  $UserListResponseCopyWith<$Res> get users;
}

/// @nodoc
class __$$UsersLoadSuccessStateImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$UsersLoadSuccessStateImpl>
    implements _$$UsersLoadSuccessStateImplCopyWith<$Res> {
  __$$UsersLoadSuccessStateImplCopyWithImpl(_$UsersLoadSuccessStateImpl _value,
      $Res Function(_$UsersLoadSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$UsersLoadSuccessStateImpl(
      null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as UserListResponse,
    ));
  }

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserListResponseCopyWith<$Res> get users {
    return $UserListResponseCopyWith<$Res>(_value.users, (value) {
      return _then(_value.copyWith(users: value));
    });
  }
}

/// @nodoc

class _$UsersLoadSuccessStateImpl implements UsersLoadSuccessState {
  const _$UsersLoadSuccessStateImpl(this.users);

  @override
  final UserListResponse users;

  @override
  String toString() {
    return 'UsersState.loadSuccess(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersLoadSuccessStateImpl &&
            (identical(other.users, users) || other.users == users));
  }

  @override
  int get hashCode => Object.hash(runtimeType, users);

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersLoadSuccessStateImplCopyWith<_$UsersLoadSuccessStateImpl>
      get copyWith => __$$UsersLoadSuccessStateImplCopyWithImpl<
          _$UsersLoadSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(UserListResponse users) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadSuccess(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(UserListResponse users)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadSuccess?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserListResponse users)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersInitialState value) initial,
    required TResult Function(UsersLoadInProgressState value) loadInProgress,
    required TResult Function(UsersLoadSuccessState value) loadSuccess,
    required TResult Function(UsersLoadFailureState value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersInitialState value)? initial,
    TResult? Function(UsersLoadInProgressState value)? loadInProgress,
    TResult? Function(UsersLoadSuccessState value)? loadSuccess,
    TResult? Function(UsersLoadFailureState value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersInitialState value)? initial,
    TResult Function(UsersLoadInProgressState value)? loadInProgress,
    TResult Function(UsersLoadSuccessState value)? loadSuccess,
    TResult Function(UsersLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class UsersLoadSuccessState implements UsersState {
  const factory UsersLoadSuccessState(final UserListResponse users) =
      _$UsersLoadSuccessStateImpl;

  UserListResponse get users;

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersLoadSuccessStateImplCopyWith<_$UsersLoadSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersLoadFailureStateImplCopyWith<$Res> {
  factory _$$UsersLoadFailureStateImplCopyWith(
          _$UsersLoadFailureStateImpl value,
          $Res Function(_$UsersLoadFailureStateImpl) then) =
      __$$UsersLoadFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$UsersLoadFailureStateImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$UsersLoadFailureStateImpl>
    implements _$$UsersLoadFailureStateImplCopyWith<$Res> {
  __$$UsersLoadFailureStateImplCopyWithImpl(_$UsersLoadFailureStateImpl _value,
      $Res Function(_$UsersLoadFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UsersLoadFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsersLoadFailureStateImpl implements UsersLoadFailureState {
  const _$UsersLoadFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'UsersState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersLoadFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersLoadFailureStateImplCopyWith<_$UsersLoadFailureStateImpl>
      get copyWith => __$$UsersLoadFailureStateImplCopyWithImpl<
          _$UsersLoadFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(UserListResponse users) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(UserListResponse users)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserListResponse users)? loadSuccess,
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
    required TResult Function(UsersInitialState value) initial,
    required TResult Function(UsersLoadInProgressState value) loadInProgress,
    required TResult Function(UsersLoadSuccessState value) loadSuccess,
    required TResult Function(UsersLoadFailureState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersInitialState value)? initial,
    TResult? Function(UsersLoadInProgressState value)? loadInProgress,
    TResult? Function(UsersLoadSuccessState value)? loadSuccess,
    TResult? Function(UsersLoadFailureState value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersInitialState value)? initial,
    TResult Function(UsersLoadInProgressState value)? loadInProgress,
    TResult Function(UsersLoadSuccessState value)? loadSuccess,
    TResult Function(UsersLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class UsersLoadFailureState implements UsersState {
  const factory UsersLoadFailureState(final String error) =
      _$UsersLoadFailureStateImpl;

  String get error;

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersLoadFailureStateImplCopyWith<_$UsersLoadFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
