// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int chatId) deleteChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int chatId)? deleteChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int chatId)? deleteChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsEventInit value) init,
    required TResult Function(ChatsEventDeleteChat value) deleteChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsEventInit value)? init,
    TResult? Function(ChatsEventDeleteChat value)? deleteChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsEventInit value)? init,
    TResult Function(ChatsEventDeleteChat value)? deleteChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsEventCopyWith<$Res> {
  factory $ChatsEventCopyWith(
          ChatsEvent value, $Res Function(ChatsEvent) then) =
      _$ChatsEventCopyWithImpl<$Res, ChatsEvent>;
}

/// @nodoc
class _$ChatsEventCopyWithImpl<$Res, $Val extends ChatsEvent>
    implements $ChatsEventCopyWith<$Res> {
  _$ChatsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChatsEventInitImplCopyWith<$Res> {
  factory _$$ChatsEventInitImplCopyWith(_$ChatsEventInitImpl value,
          $Res Function(_$ChatsEventInitImpl) then) =
      __$$ChatsEventInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatsEventInitImplCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$ChatsEventInitImpl>
    implements _$$ChatsEventInitImplCopyWith<$Res> {
  __$$ChatsEventInitImplCopyWithImpl(
      _$ChatsEventInitImpl _value, $Res Function(_$ChatsEventInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatsEventInitImpl implements ChatsEventInit {
  const _$ChatsEventInitImpl();

  @override
  String toString() {
    return 'ChatsEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatsEventInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int chatId) deleteChat,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int chatId)? deleteChat,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int chatId)? deleteChat,
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
    required TResult Function(ChatsEventInit value) init,
    required TResult Function(ChatsEventDeleteChat value) deleteChat,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsEventInit value)? init,
    TResult? Function(ChatsEventDeleteChat value)? deleteChat,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsEventInit value)? init,
    TResult Function(ChatsEventDeleteChat value)? deleteChat,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ChatsEventInit implements ChatsEvent {
  const factory ChatsEventInit() = _$ChatsEventInitImpl;
}

/// @nodoc
abstract class _$$ChatsEventDeleteChatImplCopyWith<$Res> {
  factory _$$ChatsEventDeleteChatImplCopyWith(_$ChatsEventDeleteChatImpl value,
          $Res Function(_$ChatsEventDeleteChatImpl) then) =
      __$$ChatsEventDeleteChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int chatId});
}

/// @nodoc
class __$$ChatsEventDeleteChatImplCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$ChatsEventDeleteChatImpl>
    implements _$$ChatsEventDeleteChatImplCopyWith<$Res> {
  __$$ChatsEventDeleteChatImplCopyWithImpl(_$ChatsEventDeleteChatImpl _value,
      $Res Function(_$ChatsEventDeleteChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$ChatsEventDeleteChatImpl(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChatsEventDeleteChatImpl implements ChatsEventDeleteChat {
  const _$ChatsEventDeleteChatImpl(this.chatId);

  @override
  final int chatId;

  @override
  String toString() {
    return 'ChatsEvent.deleteChat(chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsEventDeleteChatImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  /// Create a copy of ChatsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatsEventDeleteChatImplCopyWith<_$ChatsEventDeleteChatImpl>
      get copyWith =>
          __$$ChatsEventDeleteChatImplCopyWithImpl<_$ChatsEventDeleteChatImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int chatId) deleteChat,
  }) {
    return deleteChat(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int chatId)? deleteChat,
  }) {
    return deleteChat?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int chatId)? deleteChat,
    required TResult orElse(),
  }) {
    if (deleteChat != null) {
      return deleteChat(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsEventInit value) init,
    required TResult Function(ChatsEventDeleteChat value) deleteChat,
  }) {
    return deleteChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsEventInit value)? init,
    TResult? Function(ChatsEventDeleteChat value)? deleteChat,
  }) {
    return deleteChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsEventInit value)? init,
    TResult Function(ChatsEventDeleteChat value)? deleteChat,
    required TResult orElse(),
  }) {
    if (deleteChat != null) {
      return deleteChat(this);
    }
    return orElse();
  }
}

abstract class ChatsEventDeleteChat implements ChatsEvent {
  const factory ChatsEventDeleteChat(final int chatId) =
      _$ChatsEventDeleteChatImpl;

  int get chatId;

  /// Create a copy of ChatsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatsEventDeleteChatImplCopyWith<_$ChatsEventDeleteChatImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(ChatResponse chats) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(ChatResponse chats)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ChatResponse chats)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsInitialState value) initial,
    required TResult Function(ChatsLoadInProgressState value) loadInProgress,
    required TResult Function(ChatsLoadSuccessState value) loadSuccess,
    required TResult Function(ChatsLoadFailureState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsInitialState value)? initial,
    TResult? Function(ChatsLoadInProgressState value)? loadInProgress,
    TResult? Function(ChatsLoadSuccessState value)? loadSuccess,
    TResult? Function(ChatsLoadFailureState value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitialState value)? initial,
    TResult Function(ChatsLoadInProgressState value)? loadInProgress,
    TResult Function(ChatsLoadSuccessState value)? loadSuccess,
    TResult Function(ChatsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsStateCopyWith<$Res> {
  factory $ChatsStateCopyWith(
          ChatsState value, $Res Function(ChatsState) then) =
      _$ChatsStateCopyWithImpl<$Res, ChatsState>;
}

/// @nodoc
class _$ChatsStateCopyWithImpl<$Res, $Val extends ChatsState>
    implements $ChatsStateCopyWith<$Res> {
  _$ChatsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChatsInitialStateImplCopyWith<$Res> {
  factory _$$ChatsInitialStateImplCopyWith(_$ChatsInitialStateImpl value,
          $Res Function(_$ChatsInitialStateImpl) then) =
      __$$ChatsInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatsInitialStateImplCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res, _$ChatsInitialStateImpl>
    implements _$$ChatsInitialStateImplCopyWith<$Res> {
  __$$ChatsInitialStateImplCopyWithImpl(_$ChatsInitialStateImpl _value,
      $Res Function(_$ChatsInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatsInitialStateImpl implements ChatsInitialState {
  const _$ChatsInitialStateImpl();

  @override
  String toString() {
    return 'ChatsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatsInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(ChatResponse chats) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(ChatResponse chats)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ChatResponse chats)? loadSuccess,
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
    required TResult Function(ChatsInitialState value) initial,
    required TResult Function(ChatsLoadInProgressState value) loadInProgress,
    required TResult Function(ChatsLoadSuccessState value) loadSuccess,
    required TResult Function(ChatsLoadFailureState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsInitialState value)? initial,
    TResult? Function(ChatsLoadInProgressState value)? loadInProgress,
    TResult? Function(ChatsLoadSuccessState value)? loadSuccess,
    TResult? Function(ChatsLoadFailureState value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitialState value)? initial,
    TResult Function(ChatsLoadInProgressState value)? loadInProgress,
    TResult Function(ChatsLoadSuccessState value)? loadSuccess,
    TResult Function(ChatsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChatsInitialState implements ChatsState {
  const factory ChatsInitialState() = _$ChatsInitialStateImpl;
}

/// @nodoc
abstract class _$$ChatsLoadInProgressStateImplCopyWith<$Res> {
  factory _$$ChatsLoadInProgressStateImplCopyWith(
          _$ChatsLoadInProgressStateImpl value,
          $Res Function(_$ChatsLoadInProgressStateImpl) then) =
      __$$ChatsLoadInProgressStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatsLoadInProgressStateImplCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res, _$ChatsLoadInProgressStateImpl>
    implements _$$ChatsLoadInProgressStateImplCopyWith<$Res> {
  __$$ChatsLoadInProgressStateImplCopyWithImpl(
      _$ChatsLoadInProgressStateImpl _value,
      $Res Function(_$ChatsLoadInProgressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatsLoadInProgressStateImpl implements ChatsLoadInProgressState {
  const _$ChatsLoadInProgressStateImpl();

  @override
  String toString() {
    return 'ChatsState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsLoadInProgressStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(ChatResponse chats) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(ChatResponse chats)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ChatResponse chats)? loadSuccess,
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
    required TResult Function(ChatsInitialState value) initial,
    required TResult Function(ChatsLoadInProgressState value) loadInProgress,
    required TResult Function(ChatsLoadSuccessState value) loadSuccess,
    required TResult Function(ChatsLoadFailureState value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsInitialState value)? initial,
    TResult? Function(ChatsLoadInProgressState value)? loadInProgress,
    TResult? Function(ChatsLoadSuccessState value)? loadSuccess,
    TResult? Function(ChatsLoadFailureState value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitialState value)? initial,
    TResult Function(ChatsLoadInProgressState value)? loadInProgress,
    TResult Function(ChatsLoadSuccessState value)? loadSuccess,
    TResult Function(ChatsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class ChatsLoadInProgressState implements ChatsState {
  const factory ChatsLoadInProgressState() = _$ChatsLoadInProgressStateImpl;
}

/// @nodoc
abstract class _$$ChatsLoadSuccessStateImplCopyWith<$Res> {
  factory _$$ChatsLoadSuccessStateImplCopyWith(
          _$ChatsLoadSuccessStateImpl value,
          $Res Function(_$ChatsLoadSuccessStateImpl) then) =
      __$$ChatsLoadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatResponse chats});

  $ChatResponseCopyWith<$Res> get chats;
}

/// @nodoc
class __$$ChatsLoadSuccessStateImplCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res, _$ChatsLoadSuccessStateImpl>
    implements _$$ChatsLoadSuccessStateImplCopyWith<$Res> {
  __$$ChatsLoadSuccessStateImplCopyWithImpl(_$ChatsLoadSuccessStateImpl _value,
      $Res Function(_$ChatsLoadSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
  }) {
    return _then(_$ChatsLoadSuccessStateImpl(
      null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as ChatResponse,
    ));
  }

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatResponseCopyWith<$Res> get chats {
    return $ChatResponseCopyWith<$Res>(_value.chats, (value) {
      return _then(_value.copyWith(chats: value));
    });
  }
}

/// @nodoc

class _$ChatsLoadSuccessStateImpl implements ChatsLoadSuccessState {
  const _$ChatsLoadSuccessStateImpl(this.chats);

  @override
  final ChatResponse chats;

  @override
  String toString() {
    return 'ChatsState.loadSuccess(chats: $chats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsLoadSuccessStateImpl &&
            (identical(other.chats, chats) || other.chats == chats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chats);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatsLoadSuccessStateImplCopyWith<_$ChatsLoadSuccessStateImpl>
      get copyWith => __$$ChatsLoadSuccessStateImplCopyWithImpl<
          _$ChatsLoadSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(ChatResponse chats) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadSuccess(chats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(ChatResponse chats)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadSuccess?.call(chats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ChatResponse chats)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(chats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsInitialState value) initial,
    required TResult Function(ChatsLoadInProgressState value) loadInProgress,
    required TResult Function(ChatsLoadSuccessState value) loadSuccess,
    required TResult Function(ChatsLoadFailureState value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsInitialState value)? initial,
    TResult? Function(ChatsLoadInProgressState value)? loadInProgress,
    TResult? Function(ChatsLoadSuccessState value)? loadSuccess,
    TResult? Function(ChatsLoadFailureState value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitialState value)? initial,
    TResult Function(ChatsLoadInProgressState value)? loadInProgress,
    TResult Function(ChatsLoadSuccessState value)? loadSuccess,
    TResult Function(ChatsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ChatsLoadSuccessState implements ChatsState {
  const factory ChatsLoadSuccessState(final ChatResponse chats) =
      _$ChatsLoadSuccessStateImpl;

  ChatResponse get chats;

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatsLoadSuccessStateImplCopyWith<_$ChatsLoadSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatsLoadFailureStateImplCopyWith<$Res> {
  factory _$$ChatsLoadFailureStateImplCopyWith(
          _$ChatsLoadFailureStateImpl value,
          $Res Function(_$ChatsLoadFailureStateImpl) then) =
      __$$ChatsLoadFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ChatsLoadFailureStateImplCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res, _$ChatsLoadFailureStateImpl>
    implements _$$ChatsLoadFailureStateImplCopyWith<$Res> {
  __$$ChatsLoadFailureStateImplCopyWithImpl(_$ChatsLoadFailureStateImpl _value,
      $Res Function(_$ChatsLoadFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ChatsLoadFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatsLoadFailureStateImpl implements ChatsLoadFailureState {
  const _$ChatsLoadFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ChatsState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsLoadFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatsLoadFailureStateImplCopyWith<_$ChatsLoadFailureStateImpl>
      get copyWith => __$$ChatsLoadFailureStateImplCopyWithImpl<
          _$ChatsLoadFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(ChatResponse chats) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(ChatResponse chats)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ChatResponse chats)? loadSuccess,
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
    required TResult Function(ChatsInitialState value) initial,
    required TResult Function(ChatsLoadInProgressState value) loadInProgress,
    required TResult Function(ChatsLoadSuccessState value) loadSuccess,
    required TResult Function(ChatsLoadFailureState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsInitialState value)? initial,
    TResult? Function(ChatsLoadInProgressState value)? loadInProgress,
    TResult? Function(ChatsLoadSuccessState value)? loadSuccess,
    TResult? Function(ChatsLoadFailureState value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitialState value)? initial,
    TResult Function(ChatsLoadInProgressState value)? loadInProgress,
    TResult Function(ChatsLoadSuccessState value)? loadSuccess,
    TResult Function(ChatsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class ChatsLoadFailureState implements ChatsState {
  const factory ChatsLoadFailureState(final String error) =
      _$ChatsLoadFailureStateImpl;

  String get error;

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatsLoadFailureStateImplCopyWith<_$ChatsLoadFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
