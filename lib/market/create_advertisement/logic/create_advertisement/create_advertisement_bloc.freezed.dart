// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_advertisement_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateAdvertisementEvent {
  FormData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormData data) createAdvertisement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormData data)? createAdvertisement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormData data)? createAdvertisement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventCreateAdvertisement value)
        createAdvertisement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventCreateAdvertisement value)? createAdvertisement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventCreateAdvertisement value)? createAdvertisement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CreateAdvertisementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateAdvertisementEventCopyWith<CreateAdvertisementEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAdvertisementEventCopyWith<$Res> {
  factory $CreateAdvertisementEventCopyWith(CreateAdvertisementEvent value,
          $Res Function(CreateAdvertisementEvent) then) =
      _$CreateAdvertisementEventCopyWithImpl<$Res, CreateAdvertisementEvent>;
  @useResult
  $Res call({FormData data});
}

/// @nodoc
class _$CreateAdvertisementEventCopyWithImpl<$Res,
        $Val extends CreateAdvertisementEvent>
    implements $CreateAdvertisementEventCopyWith<$Res> {
  _$CreateAdvertisementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAdvertisementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FormData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventCreateAdvertisementImplCopyWith<$Res>
    implements $CreateAdvertisementEventCopyWith<$Res> {
  factory _$$EventCreateAdvertisementImplCopyWith(
          _$EventCreateAdvertisementImpl value,
          $Res Function(_$EventCreateAdvertisementImpl) then) =
      __$$EventCreateAdvertisementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormData data});
}

/// @nodoc
class __$$EventCreateAdvertisementImplCopyWithImpl<$Res>
    extends _$CreateAdvertisementEventCopyWithImpl<$Res,
        _$EventCreateAdvertisementImpl>
    implements _$$EventCreateAdvertisementImplCopyWith<$Res> {
  __$$EventCreateAdvertisementImplCopyWithImpl(
      _$EventCreateAdvertisementImpl _value,
      $Res Function(_$EventCreateAdvertisementImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAdvertisementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$EventCreateAdvertisementImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FormData,
    ));
  }
}

/// @nodoc

class _$EventCreateAdvertisementImpl implements EventCreateAdvertisement {
  const _$EventCreateAdvertisementImpl(this.data);

  @override
  final FormData data;

  @override
  String toString() {
    return 'CreateAdvertisementEvent.createAdvertisement(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventCreateAdvertisementImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateAdvertisementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventCreateAdvertisementImplCopyWith<_$EventCreateAdvertisementImpl>
      get copyWith => __$$EventCreateAdvertisementImplCopyWithImpl<
          _$EventCreateAdvertisementImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormData data) createAdvertisement,
  }) {
    return createAdvertisement(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormData data)? createAdvertisement,
  }) {
    return createAdvertisement?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormData data)? createAdvertisement,
    required TResult orElse(),
  }) {
    if (createAdvertisement != null) {
      return createAdvertisement(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventCreateAdvertisement value)
        createAdvertisement,
  }) {
    return createAdvertisement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventCreateAdvertisement value)? createAdvertisement,
  }) {
    return createAdvertisement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventCreateAdvertisement value)? createAdvertisement,
    required TResult orElse(),
  }) {
    if (createAdvertisement != null) {
      return createAdvertisement(this);
    }
    return orElse();
  }
}

abstract class EventCreateAdvertisement implements CreateAdvertisementEvent {
  const factory EventCreateAdvertisement(final FormData data) =
      _$EventCreateAdvertisementImpl;

  @override
  FormData get data;

  /// Create a copy of CreateAdvertisementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventCreateAdvertisementImplCopyWith<_$EventCreateAdvertisementImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateAdvertisementState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(dynamic response) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(dynamic response)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic response)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateAdvertisementInitialState value) initial,
    required TResult Function(CreateAdvertisementLoadInProgressState value)
        loadInProgress,
    required TResult Function(CreateAdvertisementLoadSuccessState value)
        loadSuccess,
    required TResult Function(CreateAdvertisementLoadFailureState value)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateAdvertisementInitialState value)? initial,
    TResult? Function(CreateAdvertisementLoadInProgressState value)?
        loadInProgress,
    TResult? Function(CreateAdvertisementLoadSuccessState value)? loadSuccess,
    TResult? Function(CreateAdvertisementLoadFailureState value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateAdvertisementInitialState value)? initial,
    TResult Function(CreateAdvertisementLoadInProgressState value)?
        loadInProgress,
    TResult Function(CreateAdvertisementLoadSuccessState value)? loadSuccess,
    TResult Function(CreateAdvertisementLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAdvertisementStateCopyWith<$Res> {
  factory $CreateAdvertisementStateCopyWith(CreateAdvertisementState value,
          $Res Function(CreateAdvertisementState) then) =
      _$CreateAdvertisementStateCopyWithImpl<$Res, CreateAdvertisementState>;
}

/// @nodoc
class _$CreateAdvertisementStateCopyWithImpl<$Res,
        $Val extends CreateAdvertisementState>
    implements $CreateAdvertisementStateCopyWith<$Res> {
  _$CreateAdvertisementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAdvertisementState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CreateAdvertisementInitialStateImplCopyWith<$Res> {
  factory _$$CreateAdvertisementInitialStateImplCopyWith(
          _$CreateAdvertisementInitialStateImpl value,
          $Res Function(_$CreateAdvertisementInitialStateImpl) then) =
      __$$CreateAdvertisementInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateAdvertisementInitialStateImplCopyWithImpl<$Res>
    extends _$CreateAdvertisementStateCopyWithImpl<$Res,
        _$CreateAdvertisementInitialStateImpl>
    implements _$$CreateAdvertisementInitialStateImplCopyWith<$Res> {
  __$$CreateAdvertisementInitialStateImplCopyWithImpl(
      _$CreateAdvertisementInitialStateImpl _value,
      $Res Function(_$CreateAdvertisementInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAdvertisementState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateAdvertisementInitialStateImpl
    implements CreateAdvertisementInitialState {
  const _$CreateAdvertisementInitialStateImpl();

  @override
  String toString() {
    return 'CreateAdvertisementState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAdvertisementInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(dynamic response) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(dynamic response)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic response)? loadSuccess,
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
    required TResult Function(CreateAdvertisementInitialState value) initial,
    required TResult Function(CreateAdvertisementLoadInProgressState value)
        loadInProgress,
    required TResult Function(CreateAdvertisementLoadSuccessState value)
        loadSuccess,
    required TResult Function(CreateAdvertisementLoadFailureState value)
        loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateAdvertisementInitialState value)? initial,
    TResult? Function(CreateAdvertisementLoadInProgressState value)?
        loadInProgress,
    TResult? Function(CreateAdvertisementLoadSuccessState value)? loadSuccess,
    TResult? Function(CreateAdvertisementLoadFailureState value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateAdvertisementInitialState value)? initial,
    TResult Function(CreateAdvertisementLoadInProgressState value)?
        loadInProgress,
    TResult Function(CreateAdvertisementLoadSuccessState value)? loadSuccess,
    TResult Function(CreateAdvertisementLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CreateAdvertisementInitialState
    implements CreateAdvertisementState {
  const factory CreateAdvertisementInitialState() =
      _$CreateAdvertisementInitialStateImpl;
}

/// @nodoc
abstract class _$$CreateAdvertisementLoadInProgressStateImplCopyWith<$Res> {
  factory _$$CreateAdvertisementLoadInProgressStateImplCopyWith(
          _$CreateAdvertisementLoadInProgressStateImpl value,
          $Res Function(_$CreateAdvertisementLoadInProgressStateImpl) then) =
      __$$CreateAdvertisementLoadInProgressStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateAdvertisementLoadInProgressStateImplCopyWithImpl<$Res>
    extends _$CreateAdvertisementStateCopyWithImpl<$Res,
        _$CreateAdvertisementLoadInProgressStateImpl>
    implements _$$CreateAdvertisementLoadInProgressStateImplCopyWith<$Res> {
  __$$CreateAdvertisementLoadInProgressStateImplCopyWithImpl(
      _$CreateAdvertisementLoadInProgressStateImpl _value,
      $Res Function(_$CreateAdvertisementLoadInProgressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAdvertisementState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateAdvertisementLoadInProgressStateImpl
    implements CreateAdvertisementLoadInProgressState {
  const _$CreateAdvertisementLoadInProgressStateImpl();

  @override
  String toString() {
    return 'CreateAdvertisementState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAdvertisementLoadInProgressStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(dynamic response) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(dynamic response)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic response)? loadSuccess,
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
    required TResult Function(CreateAdvertisementInitialState value) initial,
    required TResult Function(CreateAdvertisementLoadInProgressState value)
        loadInProgress,
    required TResult Function(CreateAdvertisementLoadSuccessState value)
        loadSuccess,
    required TResult Function(CreateAdvertisementLoadFailureState value)
        loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateAdvertisementInitialState value)? initial,
    TResult? Function(CreateAdvertisementLoadInProgressState value)?
        loadInProgress,
    TResult? Function(CreateAdvertisementLoadSuccessState value)? loadSuccess,
    TResult? Function(CreateAdvertisementLoadFailureState value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateAdvertisementInitialState value)? initial,
    TResult Function(CreateAdvertisementLoadInProgressState value)?
        loadInProgress,
    TResult Function(CreateAdvertisementLoadSuccessState value)? loadSuccess,
    TResult Function(CreateAdvertisementLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class CreateAdvertisementLoadInProgressState
    implements CreateAdvertisementState {
  const factory CreateAdvertisementLoadInProgressState() =
      _$CreateAdvertisementLoadInProgressStateImpl;
}

/// @nodoc
abstract class _$$CreateAdvertisementLoadSuccessStateImplCopyWith<$Res> {
  factory _$$CreateAdvertisementLoadSuccessStateImplCopyWith(
          _$CreateAdvertisementLoadSuccessStateImpl value,
          $Res Function(_$CreateAdvertisementLoadSuccessStateImpl) then) =
      __$$CreateAdvertisementLoadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic response});
}

/// @nodoc
class __$$CreateAdvertisementLoadSuccessStateImplCopyWithImpl<$Res>
    extends _$CreateAdvertisementStateCopyWithImpl<$Res,
        _$CreateAdvertisementLoadSuccessStateImpl>
    implements _$$CreateAdvertisementLoadSuccessStateImplCopyWith<$Res> {
  __$$CreateAdvertisementLoadSuccessStateImplCopyWithImpl(
      _$CreateAdvertisementLoadSuccessStateImpl _value,
      $Res Function(_$CreateAdvertisementLoadSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAdvertisementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$CreateAdvertisementLoadSuccessStateImpl(
      freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CreateAdvertisementLoadSuccessStateImpl
    implements CreateAdvertisementLoadSuccessState {
  const _$CreateAdvertisementLoadSuccessStateImpl(this.response);

  @override
  final dynamic response;

  @override
  String toString() {
    return 'CreateAdvertisementState.loadSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAdvertisementLoadSuccessStateImpl &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  /// Create a copy of CreateAdvertisementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAdvertisementLoadSuccessStateImplCopyWith<
          _$CreateAdvertisementLoadSuccessStateImpl>
      get copyWith => __$$CreateAdvertisementLoadSuccessStateImplCopyWithImpl<
          _$CreateAdvertisementLoadSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(dynamic response) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(dynamic response)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic response)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateAdvertisementInitialState value) initial,
    required TResult Function(CreateAdvertisementLoadInProgressState value)
        loadInProgress,
    required TResult Function(CreateAdvertisementLoadSuccessState value)
        loadSuccess,
    required TResult Function(CreateAdvertisementLoadFailureState value)
        loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateAdvertisementInitialState value)? initial,
    TResult? Function(CreateAdvertisementLoadInProgressState value)?
        loadInProgress,
    TResult? Function(CreateAdvertisementLoadSuccessState value)? loadSuccess,
    TResult? Function(CreateAdvertisementLoadFailureState value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateAdvertisementInitialState value)? initial,
    TResult Function(CreateAdvertisementLoadInProgressState value)?
        loadInProgress,
    TResult Function(CreateAdvertisementLoadSuccessState value)? loadSuccess,
    TResult Function(CreateAdvertisementLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class CreateAdvertisementLoadSuccessState
    implements CreateAdvertisementState {
  const factory CreateAdvertisementLoadSuccessState(final dynamic response) =
      _$CreateAdvertisementLoadSuccessStateImpl;

  dynamic get response;

  /// Create a copy of CreateAdvertisementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAdvertisementLoadSuccessStateImplCopyWith<
          _$CreateAdvertisementLoadSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateAdvertisementLoadFailureStateImplCopyWith<$Res> {
  factory _$$CreateAdvertisementLoadFailureStateImplCopyWith(
          _$CreateAdvertisementLoadFailureStateImpl value,
          $Res Function(_$CreateAdvertisementLoadFailureStateImpl) then) =
      __$$CreateAdvertisementLoadFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CreateAdvertisementLoadFailureStateImplCopyWithImpl<$Res>
    extends _$CreateAdvertisementStateCopyWithImpl<$Res,
        _$CreateAdvertisementLoadFailureStateImpl>
    implements _$$CreateAdvertisementLoadFailureStateImplCopyWith<$Res> {
  __$$CreateAdvertisementLoadFailureStateImplCopyWithImpl(
      _$CreateAdvertisementLoadFailureStateImpl _value,
      $Res Function(_$CreateAdvertisementLoadFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAdvertisementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CreateAdvertisementLoadFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateAdvertisementLoadFailureStateImpl
    implements CreateAdvertisementLoadFailureState {
  const _$CreateAdvertisementLoadFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CreateAdvertisementState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAdvertisementLoadFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CreateAdvertisementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAdvertisementLoadFailureStateImplCopyWith<
          _$CreateAdvertisementLoadFailureStateImpl>
      get copyWith => __$$CreateAdvertisementLoadFailureStateImplCopyWithImpl<
          _$CreateAdvertisementLoadFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(dynamic response) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(dynamic response)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic response)? loadSuccess,
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
    required TResult Function(CreateAdvertisementInitialState value) initial,
    required TResult Function(CreateAdvertisementLoadInProgressState value)
        loadInProgress,
    required TResult Function(CreateAdvertisementLoadSuccessState value)
        loadSuccess,
    required TResult Function(CreateAdvertisementLoadFailureState value)
        loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateAdvertisementInitialState value)? initial,
    TResult? Function(CreateAdvertisementLoadInProgressState value)?
        loadInProgress,
    TResult? Function(CreateAdvertisementLoadSuccessState value)? loadSuccess,
    TResult? Function(CreateAdvertisementLoadFailureState value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateAdvertisementInitialState value)? initial,
    TResult Function(CreateAdvertisementLoadInProgressState value)?
        loadInProgress,
    TResult Function(CreateAdvertisementLoadSuccessState value)? loadSuccess,
    TResult Function(CreateAdvertisementLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class CreateAdvertisementLoadFailureState
    implements CreateAdvertisementState {
  const factory CreateAdvertisementLoadFailureState(final String error) =
      _$CreateAdvertisementLoadFailureStateImpl;

  String get error;

  /// Create a copy of CreateAdvertisementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAdvertisementLoadFailureStateImplCopyWith<
          _$CreateAdvertisementLoadFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
