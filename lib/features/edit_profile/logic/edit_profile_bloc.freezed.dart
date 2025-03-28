// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String birthday) setBirthday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String birthday)? setBirthday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String birthday)? setBirthday,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileInitEvent value) init,
    required TResult Function(EditProfileSetBirthdayEvent value) setBirthday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileInitEvent value)? init,
    TResult? Function(EditProfileSetBirthdayEvent value)? setBirthday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitEvent value)? init,
    TResult Function(EditProfileSetBirthdayEvent value)? setBirthday,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res, EditProfileEvent>;
}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res, $Val extends EditProfileEvent>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EditProfileInitEventImplCopyWith<$Res> {
  factory _$$EditProfileInitEventImplCopyWith(_$EditProfileInitEventImpl value,
          $Res Function(_$EditProfileInitEventImpl) then) =
      __$$EditProfileInitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditProfileInitEventImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$EditProfileInitEventImpl>
    implements _$$EditProfileInitEventImplCopyWith<$Res> {
  __$$EditProfileInitEventImplCopyWithImpl(_$EditProfileInitEventImpl _value,
      $Res Function(_$EditProfileInitEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EditProfileInitEventImpl implements EditProfileInitEvent {
  const _$EditProfileInitEventImpl();

  @override
  String toString() {
    return 'EditProfileEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileInitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String birthday) setBirthday,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String birthday)? setBirthday,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String birthday)? setBirthday,
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
    required TResult Function(EditProfileInitEvent value) init,
    required TResult Function(EditProfileSetBirthdayEvent value) setBirthday,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileInitEvent value)? init,
    TResult? Function(EditProfileSetBirthdayEvent value)? setBirthday,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitEvent value)? init,
    TResult Function(EditProfileSetBirthdayEvent value)? setBirthday,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class EditProfileInitEvent implements EditProfileEvent {
  const factory EditProfileInitEvent() = _$EditProfileInitEventImpl;
}

/// @nodoc
abstract class _$$EditProfileSetBirthdayEventImplCopyWith<$Res> {
  factory _$$EditProfileSetBirthdayEventImplCopyWith(
          _$EditProfileSetBirthdayEventImpl value,
          $Res Function(_$EditProfileSetBirthdayEventImpl) then) =
      __$$EditProfileSetBirthdayEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String birthday});
}

/// @nodoc
class __$$EditProfileSetBirthdayEventImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res,
        _$EditProfileSetBirthdayEventImpl>
    implements _$$EditProfileSetBirthdayEventImplCopyWith<$Res> {
  __$$EditProfileSetBirthdayEventImplCopyWithImpl(
      _$EditProfileSetBirthdayEventImpl _value,
      $Res Function(_$EditProfileSetBirthdayEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthday = null,
  }) {
    return _then(_$EditProfileSetBirthdayEventImpl(
      null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditProfileSetBirthdayEventImpl implements EditProfileSetBirthdayEvent {
  const _$EditProfileSetBirthdayEventImpl(this.birthday);

  @override
  final String birthday;

  @override
  String toString() {
    return 'EditProfileEvent.setBirthday(birthday: $birthday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileSetBirthdayEventImpl &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, birthday);

  /// Create a copy of EditProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileSetBirthdayEventImplCopyWith<_$EditProfileSetBirthdayEventImpl>
      get copyWith => __$$EditProfileSetBirthdayEventImplCopyWithImpl<
          _$EditProfileSetBirthdayEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String birthday) setBirthday,
  }) {
    return setBirthday(birthday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String birthday)? setBirthday,
  }) {
    return setBirthday?.call(birthday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String birthday)? setBirthday,
    required TResult orElse(),
  }) {
    if (setBirthday != null) {
      return setBirthday(birthday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileInitEvent value) init,
    required TResult Function(EditProfileSetBirthdayEvent value) setBirthday,
  }) {
    return setBirthday(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileInitEvent value)? init,
    TResult? Function(EditProfileSetBirthdayEvent value)? setBirthday,
  }) {
    return setBirthday?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitEvent value)? init,
    TResult Function(EditProfileSetBirthdayEvent value)? setBirthday,
    required TResult orElse(),
  }) {
    if (setBirthday != null) {
      return setBirthday(this);
    }
    return orElse();
  }
}

abstract class EditProfileSetBirthdayEvent implements EditProfileEvent {
  const factory EditProfileSetBirthdayEvent(final String birthday) =
      _$EditProfileSetBirthdayEventImpl;

  String get birthday;

  /// Create a copy of EditProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditProfileSetBirthdayEventImplCopyWith<_$EditProfileSetBirthdayEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String? birthday) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String? birthday)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String? birthday)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileInitState value) initial,
    required TResult Function(EditProfileLoadInProgressState value)
        loadInProgress,
    required TResult Function(EditProfileLoadSuccessState value) loadSuccess,
    required TResult Function(EditProfileLoadFailureState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileInitState value)? initial,
    TResult? Function(EditProfileLoadInProgressState value)? loadInProgress,
    TResult? Function(EditProfileLoadSuccessState value)? loadSuccess,
    TResult? Function(EditProfileLoadFailureState value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitState value)? initial,
    TResult Function(EditProfileLoadInProgressState value)? loadInProgress,
    TResult Function(EditProfileLoadSuccessState value)? loadSuccess,
    TResult Function(EditProfileLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res, EditProfileState>;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res, $Val extends EditProfileState>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EditProfileInitStateImplCopyWith<$Res> {
  factory _$$EditProfileInitStateImplCopyWith(_$EditProfileInitStateImpl value,
          $Res Function(_$EditProfileInitStateImpl) then) =
      __$$EditProfileInitStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditProfileInitStateImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditProfileInitStateImpl>
    implements _$$EditProfileInitStateImplCopyWith<$Res> {
  __$$EditProfileInitStateImplCopyWithImpl(_$EditProfileInitStateImpl _value,
      $Res Function(_$EditProfileInitStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EditProfileInitStateImpl implements EditProfileInitState {
  const _$EditProfileInitStateImpl();

  @override
  String toString() {
    return 'EditProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileInitStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String? birthday) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String? birthday)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String? birthday)? loadSuccess,
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
    required TResult Function(EditProfileInitState value) initial,
    required TResult Function(EditProfileLoadInProgressState value)
        loadInProgress,
    required TResult Function(EditProfileLoadSuccessState value) loadSuccess,
    required TResult Function(EditProfileLoadFailureState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileInitState value)? initial,
    TResult? Function(EditProfileLoadInProgressState value)? loadInProgress,
    TResult? Function(EditProfileLoadSuccessState value)? loadSuccess,
    TResult? Function(EditProfileLoadFailureState value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitState value)? initial,
    TResult Function(EditProfileLoadInProgressState value)? loadInProgress,
    TResult Function(EditProfileLoadSuccessState value)? loadSuccess,
    TResult Function(EditProfileLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EditProfileInitState implements EditProfileState {
  const factory EditProfileInitState() = _$EditProfileInitStateImpl;
}

/// @nodoc
abstract class _$$EditProfileLoadInProgressStateImplCopyWith<$Res> {
  factory _$$EditProfileLoadInProgressStateImplCopyWith(
          _$EditProfileLoadInProgressStateImpl value,
          $Res Function(_$EditProfileLoadInProgressStateImpl) then) =
      __$$EditProfileLoadInProgressStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditProfileLoadInProgressStateImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res,
        _$EditProfileLoadInProgressStateImpl>
    implements _$$EditProfileLoadInProgressStateImplCopyWith<$Res> {
  __$$EditProfileLoadInProgressStateImplCopyWithImpl(
      _$EditProfileLoadInProgressStateImpl _value,
      $Res Function(_$EditProfileLoadInProgressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EditProfileLoadInProgressStateImpl
    implements EditProfileLoadInProgressState {
  const _$EditProfileLoadInProgressStateImpl();

  @override
  String toString() {
    return 'EditProfileState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileLoadInProgressStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String? birthday) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String? birthday)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String? birthday)? loadSuccess,
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
    required TResult Function(EditProfileInitState value) initial,
    required TResult Function(EditProfileLoadInProgressState value)
        loadInProgress,
    required TResult Function(EditProfileLoadSuccessState value) loadSuccess,
    required TResult Function(EditProfileLoadFailureState value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileInitState value)? initial,
    TResult? Function(EditProfileLoadInProgressState value)? loadInProgress,
    TResult? Function(EditProfileLoadSuccessState value)? loadSuccess,
    TResult? Function(EditProfileLoadFailureState value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitState value)? initial,
    TResult Function(EditProfileLoadInProgressState value)? loadInProgress,
    TResult Function(EditProfileLoadSuccessState value)? loadSuccess,
    TResult Function(EditProfileLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class EditProfileLoadInProgressState implements EditProfileState {
  const factory EditProfileLoadInProgressState() =
      _$EditProfileLoadInProgressStateImpl;
}

/// @nodoc
abstract class _$$EditProfileLoadSuccessStateImplCopyWith<$Res> {
  factory _$$EditProfileLoadSuccessStateImplCopyWith(
          _$EditProfileLoadSuccessStateImpl value,
          $Res Function(_$EditProfileLoadSuccessStateImpl) then) =
      __$$EditProfileLoadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? birthday});
}

/// @nodoc
class __$$EditProfileLoadSuccessStateImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res,
        _$EditProfileLoadSuccessStateImpl>
    implements _$$EditProfileLoadSuccessStateImplCopyWith<$Res> {
  __$$EditProfileLoadSuccessStateImplCopyWithImpl(
      _$EditProfileLoadSuccessStateImpl _value,
      $Res Function(_$EditProfileLoadSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthday = freezed,
  }) {
    return _then(_$EditProfileLoadSuccessStateImpl(
      freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EditProfileLoadSuccessStateImpl implements EditProfileLoadSuccessState {
  const _$EditProfileLoadSuccessStateImpl(this.birthday);

  @override
  final String? birthday;

  @override
  String toString() {
    return 'EditProfileState.loadSuccess(birthday: $birthday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileLoadSuccessStateImpl &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, birthday);

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileLoadSuccessStateImplCopyWith<_$EditProfileLoadSuccessStateImpl>
      get copyWith => __$$EditProfileLoadSuccessStateImplCopyWithImpl<
          _$EditProfileLoadSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String? birthday) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadSuccess(birthday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String? birthday)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadSuccess?.call(birthday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String? birthday)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(birthday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileInitState value) initial,
    required TResult Function(EditProfileLoadInProgressState value)
        loadInProgress,
    required TResult Function(EditProfileLoadSuccessState value) loadSuccess,
    required TResult Function(EditProfileLoadFailureState value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileInitState value)? initial,
    TResult? Function(EditProfileLoadInProgressState value)? loadInProgress,
    TResult? Function(EditProfileLoadSuccessState value)? loadSuccess,
    TResult? Function(EditProfileLoadFailureState value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitState value)? initial,
    TResult Function(EditProfileLoadInProgressState value)? loadInProgress,
    TResult Function(EditProfileLoadSuccessState value)? loadSuccess,
    TResult Function(EditProfileLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class EditProfileLoadSuccessState implements EditProfileState {
  const factory EditProfileLoadSuccessState(final String? birthday) =
      _$EditProfileLoadSuccessStateImpl;

  String? get birthday;

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditProfileLoadSuccessStateImplCopyWith<_$EditProfileLoadSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileLoadFailureStateImplCopyWith<$Res> {
  factory _$$EditProfileLoadFailureStateImplCopyWith(
          _$EditProfileLoadFailureStateImpl value,
          $Res Function(_$EditProfileLoadFailureStateImpl) then) =
      __$$EditProfileLoadFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$EditProfileLoadFailureStateImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res,
        _$EditProfileLoadFailureStateImpl>
    implements _$$EditProfileLoadFailureStateImplCopyWith<$Res> {
  __$$EditProfileLoadFailureStateImplCopyWithImpl(
      _$EditProfileLoadFailureStateImpl _value,
      $Res Function(_$EditProfileLoadFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$EditProfileLoadFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditProfileLoadFailureStateImpl implements EditProfileLoadFailureState {
  const _$EditProfileLoadFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'EditProfileState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileLoadFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileLoadFailureStateImplCopyWith<_$EditProfileLoadFailureStateImpl>
      get copyWith => __$$EditProfileLoadFailureStateImplCopyWithImpl<
          _$EditProfileLoadFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String? birthday) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String? birthday)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String? birthday)? loadSuccess,
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
    required TResult Function(EditProfileInitState value) initial,
    required TResult Function(EditProfileLoadInProgressState value)
        loadInProgress,
    required TResult Function(EditProfileLoadSuccessState value) loadSuccess,
    required TResult Function(EditProfileLoadFailureState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileInitState value)? initial,
    TResult? Function(EditProfileLoadInProgressState value)? loadInProgress,
    TResult? Function(EditProfileLoadSuccessState value)? loadSuccess,
    TResult? Function(EditProfileLoadFailureState value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitState value)? initial,
    TResult Function(EditProfileLoadInProgressState value)? loadInProgress,
    TResult Function(EditProfileLoadSuccessState value)? loadSuccess,
    TResult Function(EditProfileLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class EditProfileLoadFailureState implements EditProfileState {
  const factory EditProfileLoadFailureState(final String error) =
      _$EditProfileLoadFailureStateImpl;

  String get error;

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditProfileLoadFailureStateImplCopyWith<_$EditProfileLoadFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
