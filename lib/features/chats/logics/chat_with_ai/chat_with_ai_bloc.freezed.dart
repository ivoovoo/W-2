// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_with_ai_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatWithAiEvent {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessageChatWithAiEvent value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessageChatWithAiEvent value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessageChatWithAiEvent value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ChatWithAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatWithAiEventCopyWith<ChatWithAiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatWithAiEventCopyWith<$Res> {
  factory $ChatWithAiEventCopyWith(
          ChatWithAiEvent value, $Res Function(ChatWithAiEvent) then) =
      _$ChatWithAiEventCopyWithImpl<$Res, ChatWithAiEvent>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ChatWithAiEventCopyWithImpl<$Res, $Val extends ChatWithAiEvent>
    implements $ChatWithAiEventCopyWith<$Res> {
  _$ChatWithAiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatWithAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendMessageChatWithAiEventImplCopyWith<$Res>
    implements $ChatWithAiEventCopyWith<$Res> {
  factory _$$SendMessageChatWithAiEventImplCopyWith(
          _$SendMessageChatWithAiEventImpl value,
          $Res Function(_$SendMessageChatWithAiEventImpl) then) =
      __$$SendMessageChatWithAiEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SendMessageChatWithAiEventImplCopyWithImpl<$Res>
    extends _$ChatWithAiEventCopyWithImpl<$Res,
        _$SendMessageChatWithAiEventImpl>
    implements _$$SendMessageChatWithAiEventImplCopyWith<$Res> {
  __$$SendMessageChatWithAiEventImplCopyWithImpl(
      _$SendMessageChatWithAiEventImpl _value,
      $Res Function(_$SendMessageChatWithAiEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatWithAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendMessageChatWithAiEventImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessageChatWithAiEventImpl implements SendMessageChatWithAiEvent {
  const _$SendMessageChatWithAiEventImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatWithAiEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageChatWithAiEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatWithAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageChatWithAiEventImplCopyWith<_$SendMessageChatWithAiEventImpl>
      get copyWith => __$$SendMessageChatWithAiEventImplCopyWithImpl<
          _$SendMessageChatWithAiEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) sendMessage,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? sendMessage,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessageChatWithAiEvent value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessageChatWithAiEvent value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessageChatWithAiEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessageChatWithAiEvent implements ChatWithAiEvent {
  const factory SendMessageChatWithAiEvent(final String message) =
      _$SendMessageChatWithAiEventImpl;

  @override
  String get message;

  /// Create a copy of ChatWithAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageChatWithAiEventImplCopyWith<_$SendMessageChatWithAiEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatWithAiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String response) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String response)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String response)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatWithAiInitialState value) initial,
    required TResult Function(ChatWithAiLoadInProgressState value)
        loadInProgress,
    required TResult Function(ChatWithAiLoadSuccessState value) loadSuccess,
    required TResult Function(ChatWithAiLoadFailureState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatWithAiInitialState value)? initial,
    TResult? Function(ChatWithAiLoadInProgressState value)? loadInProgress,
    TResult? Function(ChatWithAiLoadSuccessState value)? loadSuccess,
    TResult? Function(ChatWithAiLoadFailureState value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatWithAiInitialState value)? initial,
    TResult Function(ChatWithAiLoadInProgressState value)? loadInProgress,
    TResult Function(ChatWithAiLoadSuccessState value)? loadSuccess,
    TResult Function(ChatWithAiLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatWithAiStateCopyWith<$Res> {
  factory $ChatWithAiStateCopyWith(
          ChatWithAiState value, $Res Function(ChatWithAiState) then) =
      _$ChatWithAiStateCopyWithImpl<$Res, ChatWithAiState>;
}

/// @nodoc
class _$ChatWithAiStateCopyWithImpl<$Res, $Val extends ChatWithAiState>
    implements $ChatWithAiStateCopyWith<$Res> {
  _$ChatWithAiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatWithAiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChatWithAiInitialStateImplCopyWith<$Res> {
  factory _$$ChatWithAiInitialStateImplCopyWith(
          _$ChatWithAiInitialStateImpl value,
          $Res Function(_$ChatWithAiInitialStateImpl) then) =
      __$$ChatWithAiInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatWithAiInitialStateImplCopyWithImpl<$Res>
    extends _$ChatWithAiStateCopyWithImpl<$Res, _$ChatWithAiInitialStateImpl>
    implements _$$ChatWithAiInitialStateImplCopyWith<$Res> {
  __$$ChatWithAiInitialStateImplCopyWithImpl(
      _$ChatWithAiInitialStateImpl _value,
      $Res Function(_$ChatWithAiInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatWithAiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatWithAiInitialStateImpl implements ChatWithAiInitialState {
  const _$ChatWithAiInitialStateImpl();

  @override
  String toString() {
    return 'ChatWithAiState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatWithAiInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String response) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String response)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String response)? loadSuccess,
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
    required TResult Function(ChatWithAiInitialState value) initial,
    required TResult Function(ChatWithAiLoadInProgressState value)
        loadInProgress,
    required TResult Function(ChatWithAiLoadSuccessState value) loadSuccess,
    required TResult Function(ChatWithAiLoadFailureState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatWithAiInitialState value)? initial,
    TResult? Function(ChatWithAiLoadInProgressState value)? loadInProgress,
    TResult? Function(ChatWithAiLoadSuccessState value)? loadSuccess,
    TResult? Function(ChatWithAiLoadFailureState value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatWithAiInitialState value)? initial,
    TResult Function(ChatWithAiLoadInProgressState value)? loadInProgress,
    TResult Function(ChatWithAiLoadSuccessState value)? loadSuccess,
    TResult Function(ChatWithAiLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChatWithAiInitialState implements ChatWithAiState {
  const factory ChatWithAiInitialState() = _$ChatWithAiInitialStateImpl;
}

/// @nodoc
abstract class _$$ChatWithAiLoadInProgressStateImplCopyWith<$Res> {
  factory _$$ChatWithAiLoadInProgressStateImplCopyWith(
          _$ChatWithAiLoadInProgressStateImpl value,
          $Res Function(_$ChatWithAiLoadInProgressStateImpl) then) =
      __$$ChatWithAiLoadInProgressStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatWithAiLoadInProgressStateImplCopyWithImpl<$Res>
    extends _$ChatWithAiStateCopyWithImpl<$Res,
        _$ChatWithAiLoadInProgressStateImpl>
    implements _$$ChatWithAiLoadInProgressStateImplCopyWith<$Res> {
  __$$ChatWithAiLoadInProgressStateImplCopyWithImpl(
      _$ChatWithAiLoadInProgressStateImpl _value,
      $Res Function(_$ChatWithAiLoadInProgressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatWithAiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatWithAiLoadInProgressStateImpl
    implements ChatWithAiLoadInProgressState {
  const _$ChatWithAiLoadInProgressStateImpl();

  @override
  String toString() {
    return 'ChatWithAiState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatWithAiLoadInProgressStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String response) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String response)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String response)? loadSuccess,
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
    required TResult Function(ChatWithAiInitialState value) initial,
    required TResult Function(ChatWithAiLoadInProgressState value)
        loadInProgress,
    required TResult Function(ChatWithAiLoadSuccessState value) loadSuccess,
    required TResult Function(ChatWithAiLoadFailureState value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatWithAiInitialState value)? initial,
    TResult? Function(ChatWithAiLoadInProgressState value)? loadInProgress,
    TResult? Function(ChatWithAiLoadSuccessState value)? loadSuccess,
    TResult? Function(ChatWithAiLoadFailureState value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatWithAiInitialState value)? initial,
    TResult Function(ChatWithAiLoadInProgressState value)? loadInProgress,
    TResult Function(ChatWithAiLoadSuccessState value)? loadSuccess,
    TResult Function(ChatWithAiLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class ChatWithAiLoadInProgressState implements ChatWithAiState {
  const factory ChatWithAiLoadInProgressState() =
      _$ChatWithAiLoadInProgressStateImpl;
}

/// @nodoc
abstract class _$$ChatWithAiLoadSuccessStateImplCopyWith<$Res> {
  factory _$$ChatWithAiLoadSuccessStateImplCopyWith(
          _$ChatWithAiLoadSuccessStateImpl value,
          $Res Function(_$ChatWithAiLoadSuccessStateImpl) then) =
      __$$ChatWithAiLoadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String response});
}

/// @nodoc
class __$$ChatWithAiLoadSuccessStateImplCopyWithImpl<$Res>
    extends _$ChatWithAiStateCopyWithImpl<$Res,
        _$ChatWithAiLoadSuccessStateImpl>
    implements _$$ChatWithAiLoadSuccessStateImplCopyWith<$Res> {
  __$$ChatWithAiLoadSuccessStateImplCopyWithImpl(
      _$ChatWithAiLoadSuccessStateImpl _value,
      $Res Function(_$ChatWithAiLoadSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatWithAiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$ChatWithAiLoadSuccessStateImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatWithAiLoadSuccessStateImpl implements ChatWithAiLoadSuccessState {
  const _$ChatWithAiLoadSuccessStateImpl(this.response);

  @override
  final String response;

  @override
  String toString() {
    return 'ChatWithAiState.loadSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatWithAiLoadSuccessStateImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of ChatWithAiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatWithAiLoadSuccessStateImplCopyWith<_$ChatWithAiLoadSuccessStateImpl>
      get copyWith => __$$ChatWithAiLoadSuccessStateImplCopyWithImpl<
          _$ChatWithAiLoadSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String response) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String response)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String response)? loadSuccess,
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
    required TResult Function(ChatWithAiInitialState value) initial,
    required TResult Function(ChatWithAiLoadInProgressState value)
        loadInProgress,
    required TResult Function(ChatWithAiLoadSuccessState value) loadSuccess,
    required TResult Function(ChatWithAiLoadFailureState value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatWithAiInitialState value)? initial,
    TResult? Function(ChatWithAiLoadInProgressState value)? loadInProgress,
    TResult? Function(ChatWithAiLoadSuccessState value)? loadSuccess,
    TResult? Function(ChatWithAiLoadFailureState value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatWithAiInitialState value)? initial,
    TResult Function(ChatWithAiLoadInProgressState value)? loadInProgress,
    TResult Function(ChatWithAiLoadSuccessState value)? loadSuccess,
    TResult Function(ChatWithAiLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ChatWithAiLoadSuccessState implements ChatWithAiState {
  const factory ChatWithAiLoadSuccessState(final String response) =
      _$ChatWithAiLoadSuccessStateImpl;

  String get response;

  /// Create a copy of ChatWithAiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatWithAiLoadSuccessStateImplCopyWith<_$ChatWithAiLoadSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatWithAiLoadFailureStateImplCopyWith<$Res> {
  factory _$$ChatWithAiLoadFailureStateImplCopyWith(
          _$ChatWithAiLoadFailureStateImpl value,
          $Res Function(_$ChatWithAiLoadFailureStateImpl) then) =
      __$$ChatWithAiLoadFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ChatWithAiLoadFailureStateImplCopyWithImpl<$Res>
    extends _$ChatWithAiStateCopyWithImpl<$Res,
        _$ChatWithAiLoadFailureStateImpl>
    implements _$$ChatWithAiLoadFailureStateImplCopyWith<$Res> {
  __$$ChatWithAiLoadFailureStateImplCopyWithImpl(
      _$ChatWithAiLoadFailureStateImpl _value,
      $Res Function(_$ChatWithAiLoadFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatWithAiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ChatWithAiLoadFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatWithAiLoadFailureStateImpl implements ChatWithAiLoadFailureState {
  const _$ChatWithAiLoadFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ChatWithAiState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatWithAiLoadFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ChatWithAiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatWithAiLoadFailureStateImplCopyWith<_$ChatWithAiLoadFailureStateImpl>
      get copyWith => __$$ChatWithAiLoadFailureStateImplCopyWithImpl<
          _$ChatWithAiLoadFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String response) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String response)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String response)? loadSuccess,
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
    required TResult Function(ChatWithAiInitialState value) initial,
    required TResult Function(ChatWithAiLoadInProgressState value)
        loadInProgress,
    required TResult Function(ChatWithAiLoadSuccessState value) loadSuccess,
    required TResult Function(ChatWithAiLoadFailureState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatWithAiInitialState value)? initial,
    TResult? Function(ChatWithAiLoadInProgressState value)? loadInProgress,
    TResult? Function(ChatWithAiLoadSuccessState value)? loadSuccess,
    TResult? Function(ChatWithAiLoadFailureState value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatWithAiInitialState value)? initial,
    TResult Function(ChatWithAiLoadInProgressState value)? loadInProgress,
    TResult Function(ChatWithAiLoadSuccessState value)? loadSuccess,
    TResult Function(ChatWithAiLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class ChatWithAiLoadFailureState implements ChatWithAiState {
  const factory ChatWithAiLoadFailureState(final String error) =
      _$ChatWithAiLoadFailureStateImpl;

  String get error;

  /// Create a copy of ChatWithAiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatWithAiLoadFailureStateImplCopyWith<_$ChatWithAiLoadFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
