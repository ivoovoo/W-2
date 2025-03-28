// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'groups_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroupsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(dynamic formDataGroupChat) createGroupChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(dynamic formDataGroupChat)? createGroupChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic formDataGroupChat)? createGroupChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupsEventInit value) init,
    required TResult Function(CreateGroupEvent value) createGroupChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsEventInit value)? init,
    TResult? Function(CreateGroupEvent value)? createGroupChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsEventInit value)? init,
    TResult Function(CreateGroupEvent value)? createGroupChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsEventCopyWith<$Res> {
  factory $GroupsEventCopyWith(
          GroupsEvent value, $Res Function(GroupsEvent) then) =
      _$GroupsEventCopyWithImpl<$Res, GroupsEvent>;
}

/// @nodoc
class _$GroupsEventCopyWithImpl<$Res, $Val extends GroupsEvent>
    implements $GroupsEventCopyWith<$Res> {
  _$GroupsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GroupsEventInitImplCopyWith<$Res> {
  factory _$$GroupsEventInitImplCopyWith(_$GroupsEventInitImpl value,
          $Res Function(_$GroupsEventInitImpl) then) =
      __$$GroupsEventInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupsEventInitImplCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res, _$GroupsEventInitImpl>
    implements _$$GroupsEventInitImplCopyWith<$Res> {
  __$$GroupsEventInitImplCopyWithImpl(
      _$GroupsEventInitImpl _value, $Res Function(_$GroupsEventInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GroupsEventInitImpl implements GroupsEventInit {
  const _$GroupsEventInitImpl();

  @override
  String toString() {
    return 'GroupsEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroupsEventInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(dynamic formDataGroupChat) createGroupChat,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(dynamic formDataGroupChat)? createGroupChat,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic formDataGroupChat)? createGroupChat,
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
    required TResult Function(GroupsEventInit value) init,
    required TResult Function(CreateGroupEvent value) createGroupChat,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsEventInit value)? init,
    TResult? Function(CreateGroupEvent value)? createGroupChat,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsEventInit value)? init,
    TResult Function(CreateGroupEvent value)? createGroupChat,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class GroupsEventInit implements GroupsEvent {
  const factory GroupsEventInit() = _$GroupsEventInitImpl;
}

/// @nodoc
abstract class _$$CreateGroupEventImplCopyWith<$Res> {
  factory _$$CreateGroupEventImplCopyWith(_$CreateGroupEventImpl value,
          $Res Function(_$CreateGroupEventImpl) then) =
      __$$CreateGroupEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic formDataGroupChat});
}

/// @nodoc
class __$$CreateGroupEventImplCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res, _$CreateGroupEventImpl>
    implements _$$CreateGroupEventImplCopyWith<$Res> {
  __$$CreateGroupEventImplCopyWithImpl(_$CreateGroupEventImpl _value,
      $Res Function(_$CreateGroupEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formDataGroupChat = freezed,
  }) {
    return _then(_$CreateGroupEventImpl(
      formDataGroupChat: freezed == formDataGroupChat
          ? _value.formDataGroupChat
          : formDataGroupChat // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CreateGroupEventImpl implements CreateGroupEvent {
  const _$CreateGroupEventImpl({required this.formDataGroupChat});

  @override
  final dynamic formDataGroupChat;

  @override
  String toString() {
    return 'GroupsEvent.createGroupChat(formDataGroupChat: $formDataGroupChat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGroupEventImpl &&
            const DeepCollectionEquality()
                .equals(other.formDataGroupChat, formDataGroupChat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(formDataGroupChat));

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroupEventImplCopyWith<_$CreateGroupEventImpl> get copyWith =>
      __$$CreateGroupEventImplCopyWithImpl<_$CreateGroupEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(dynamic formDataGroupChat) createGroupChat,
  }) {
    return createGroupChat(formDataGroupChat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(dynamic formDataGroupChat)? createGroupChat,
  }) {
    return createGroupChat?.call(formDataGroupChat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic formDataGroupChat)? createGroupChat,
    required TResult orElse(),
  }) {
    if (createGroupChat != null) {
      return createGroupChat(formDataGroupChat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupsEventInit value) init,
    required TResult Function(CreateGroupEvent value) createGroupChat,
  }) {
    return createGroupChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsEventInit value)? init,
    TResult? Function(CreateGroupEvent value)? createGroupChat,
  }) {
    return createGroupChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsEventInit value)? init,
    TResult Function(CreateGroupEvent value)? createGroupChat,
    required TResult orElse(),
  }) {
    if (createGroupChat != null) {
      return createGroupChat(this);
    }
    return orElse();
  }
}

abstract class CreateGroupEvent implements GroupsEvent {
  const factory CreateGroupEvent({required final dynamic formDataGroupChat}) =
      _$CreateGroupEventImpl;

  dynamic get formDataGroupChat;

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGroupEventImplCopyWith<_$CreateGroupEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(GroupsModel groups) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(GroupsModel groups)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(GroupsModel groups)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupsInitialState value) initial,
    required TResult Function(GroupsLoadInProgressState value) loadInProgress,
    required TResult Function(GroupsLoadSuccessState value) loadSuccess,
    required TResult Function(GroupsLoadFailureState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsInitialState value)? initial,
    TResult? Function(GroupsLoadInProgressState value)? loadInProgress,
    TResult? Function(GroupsLoadSuccessState value)? loadSuccess,
    TResult? Function(GroupsLoadFailureState value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsInitialState value)? initial,
    TResult Function(GroupsLoadInProgressState value)? loadInProgress,
    TResult Function(GroupsLoadSuccessState value)? loadSuccess,
    TResult Function(GroupsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsStateCopyWith<$Res> {
  factory $GroupsStateCopyWith(
          GroupsState value, $Res Function(GroupsState) then) =
      _$GroupsStateCopyWithImpl<$Res, GroupsState>;
}

/// @nodoc
class _$GroupsStateCopyWithImpl<$Res, $Val extends GroupsState>
    implements $GroupsStateCopyWith<$Res> {
  _$GroupsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GroupsInitialStateImplCopyWith<$Res> {
  factory _$$GroupsInitialStateImplCopyWith(_$GroupsInitialStateImpl value,
          $Res Function(_$GroupsInitialStateImpl) then) =
      __$$GroupsInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupsInitialStateImplCopyWithImpl<$Res>
    extends _$GroupsStateCopyWithImpl<$Res, _$GroupsInitialStateImpl>
    implements _$$GroupsInitialStateImplCopyWith<$Res> {
  __$$GroupsInitialStateImplCopyWithImpl(_$GroupsInitialStateImpl _value,
      $Res Function(_$GroupsInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GroupsInitialStateImpl implements GroupsInitialState {
  const _$GroupsInitialStateImpl();

  @override
  String toString() {
    return 'GroupsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroupsInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(GroupsModel groups) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(GroupsModel groups)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(GroupsModel groups)? loadSuccess,
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
    required TResult Function(GroupsInitialState value) initial,
    required TResult Function(GroupsLoadInProgressState value) loadInProgress,
    required TResult Function(GroupsLoadSuccessState value) loadSuccess,
    required TResult Function(GroupsLoadFailureState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsInitialState value)? initial,
    TResult? Function(GroupsLoadInProgressState value)? loadInProgress,
    TResult? Function(GroupsLoadSuccessState value)? loadSuccess,
    TResult? Function(GroupsLoadFailureState value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsInitialState value)? initial,
    TResult Function(GroupsLoadInProgressState value)? loadInProgress,
    TResult Function(GroupsLoadSuccessState value)? loadSuccess,
    TResult Function(GroupsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GroupsInitialState implements GroupsState {
  const factory GroupsInitialState() = _$GroupsInitialStateImpl;
}

/// @nodoc
abstract class _$$GroupsLoadInProgressStateImplCopyWith<$Res> {
  factory _$$GroupsLoadInProgressStateImplCopyWith(
          _$GroupsLoadInProgressStateImpl value,
          $Res Function(_$GroupsLoadInProgressStateImpl) then) =
      __$$GroupsLoadInProgressStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupsLoadInProgressStateImplCopyWithImpl<$Res>
    extends _$GroupsStateCopyWithImpl<$Res, _$GroupsLoadInProgressStateImpl>
    implements _$$GroupsLoadInProgressStateImplCopyWith<$Res> {
  __$$GroupsLoadInProgressStateImplCopyWithImpl(
      _$GroupsLoadInProgressStateImpl _value,
      $Res Function(_$GroupsLoadInProgressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GroupsLoadInProgressStateImpl implements GroupsLoadInProgressState {
  const _$GroupsLoadInProgressStateImpl();

  @override
  String toString() {
    return 'GroupsState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsLoadInProgressStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(GroupsModel groups) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(GroupsModel groups)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(GroupsModel groups)? loadSuccess,
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
    required TResult Function(GroupsInitialState value) initial,
    required TResult Function(GroupsLoadInProgressState value) loadInProgress,
    required TResult Function(GroupsLoadSuccessState value) loadSuccess,
    required TResult Function(GroupsLoadFailureState value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsInitialState value)? initial,
    TResult? Function(GroupsLoadInProgressState value)? loadInProgress,
    TResult? Function(GroupsLoadSuccessState value)? loadSuccess,
    TResult? Function(GroupsLoadFailureState value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsInitialState value)? initial,
    TResult Function(GroupsLoadInProgressState value)? loadInProgress,
    TResult Function(GroupsLoadSuccessState value)? loadSuccess,
    TResult Function(GroupsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class GroupsLoadInProgressState implements GroupsState {
  const factory GroupsLoadInProgressState() = _$GroupsLoadInProgressStateImpl;
}

/// @nodoc
abstract class _$$GroupsLoadSuccessStateImplCopyWith<$Res> {
  factory _$$GroupsLoadSuccessStateImplCopyWith(
          _$GroupsLoadSuccessStateImpl value,
          $Res Function(_$GroupsLoadSuccessStateImpl) then) =
      __$$GroupsLoadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GroupsModel groups});

  $GroupsModelCopyWith<$Res> get groups;
}

/// @nodoc
class __$$GroupsLoadSuccessStateImplCopyWithImpl<$Res>
    extends _$GroupsStateCopyWithImpl<$Res, _$GroupsLoadSuccessStateImpl>
    implements _$$GroupsLoadSuccessStateImplCopyWith<$Res> {
  __$$GroupsLoadSuccessStateImplCopyWithImpl(
      _$GroupsLoadSuccessStateImpl _value,
      $Res Function(_$GroupsLoadSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$GroupsLoadSuccessStateImpl(
      null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as GroupsModel,
    ));
  }

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupsModelCopyWith<$Res> get groups {
    return $GroupsModelCopyWith<$Res>(_value.groups, (value) {
      return _then(_value.copyWith(groups: value));
    });
  }
}

/// @nodoc

class _$GroupsLoadSuccessStateImpl implements GroupsLoadSuccessState {
  const _$GroupsLoadSuccessStateImpl(this.groups);

  @override
  final GroupsModel groups;

  @override
  String toString() {
    return 'GroupsState.loadSuccess(groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsLoadSuccessStateImpl &&
            (identical(other.groups, groups) || other.groups == groups));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groups);

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupsLoadSuccessStateImplCopyWith<_$GroupsLoadSuccessStateImpl>
      get copyWith => __$$GroupsLoadSuccessStateImplCopyWithImpl<
          _$GroupsLoadSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(GroupsModel groups) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadSuccess(groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(GroupsModel groups)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadSuccess?.call(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(GroupsModel groups)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupsInitialState value) initial,
    required TResult Function(GroupsLoadInProgressState value) loadInProgress,
    required TResult Function(GroupsLoadSuccessState value) loadSuccess,
    required TResult Function(GroupsLoadFailureState value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsInitialState value)? initial,
    TResult? Function(GroupsLoadInProgressState value)? loadInProgress,
    TResult? Function(GroupsLoadSuccessState value)? loadSuccess,
    TResult? Function(GroupsLoadFailureState value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsInitialState value)? initial,
    TResult Function(GroupsLoadInProgressState value)? loadInProgress,
    TResult Function(GroupsLoadSuccessState value)? loadSuccess,
    TResult Function(GroupsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class GroupsLoadSuccessState implements GroupsState {
  const factory GroupsLoadSuccessState(final GroupsModel groups) =
      _$GroupsLoadSuccessStateImpl;

  GroupsModel get groups;

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupsLoadSuccessStateImplCopyWith<_$GroupsLoadSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupsLoadFailureStateImplCopyWith<$Res> {
  factory _$$GroupsLoadFailureStateImplCopyWith(
          _$GroupsLoadFailureStateImpl value,
          $Res Function(_$GroupsLoadFailureStateImpl) then) =
      __$$GroupsLoadFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GroupsLoadFailureStateImplCopyWithImpl<$Res>
    extends _$GroupsStateCopyWithImpl<$Res, _$GroupsLoadFailureStateImpl>
    implements _$$GroupsLoadFailureStateImplCopyWith<$Res> {
  __$$GroupsLoadFailureStateImplCopyWithImpl(
      _$GroupsLoadFailureStateImpl _value,
      $Res Function(_$GroupsLoadFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GroupsLoadFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GroupsLoadFailureStateImpl implements GroupsLoadFailureState {
  const _$GroupsLoadFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'GroupsState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsLoadFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupsLoadFailureStateImplCopyWith<_$GroupsLoadFailureStateImpl>
      get copyWith => __$$GroupsLoadFailureStateImplCopyWithImpl<
          _$GroupsLoadFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(GroupsModel groups) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(GroupsModel groups)? loadSuccess,
    TResult? Function(String error)? loadFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(GroupsModel groups)? loadSuccess,
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
    required TResult Function(GroupsInitialState value) initial,
    required TResult Function(GroupsLoadInProgressState value) loadInProgress,
    required TResult Function(GroupsLoadSuccessState value) loadSuccess,
    required TResult Function(GroupsLoadFailureState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsInitialState value)? initial,
    TResult? Function(GroupsLoadInProgressState value)? loadInProgress,
    TResult? Function(GroupsLoadSuccessState value)? loadSuccess,
    TResult? Function(GroupsLoadFailureState value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsInitialState value)? initial,
    TResult Function(GroupsLoadInProgressState value)? loadInProgress,
    TResult Function(GroupsLoadSuccessState value)? loadSuccess,
    TResult Function(GroupsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class GroupsLoadFailureState implements GroupsState {
  const factory GroupsLoadFailureState(final String error) =
      _$GroupsLoadFailureStateImpl;

  String get error;

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupsLoadFailureStateImplCopyWith<_$GroupsLoadFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
