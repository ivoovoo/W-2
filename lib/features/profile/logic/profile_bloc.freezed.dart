// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) init,
    required TResult Function(String username, String password) signIn,
    required TResult Function(String userName, String email, String password)
        signUp,
    required TResult Function() signOut,
    required TResult Function(bool enabled) enableChatGpt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? init,
    TResult? Function(String username, String password)? signIn,
    TResult? Function(String userName, String email, String password)? signUp,
    TResult? Function()? signOut,
    TResult? Function(bool enabled)? enableChatGpt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? init,
    TResult Function(String username, String password)? signIn,
    TResult Function(String userName, String email, String password)? signUp,
    TResult Function()? signOut,
    TResult Function(bool enabled)? enableChatGpt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitEvent value) init,
    required TResult Function(SignInProfileEvent value) signIn,
    required TResult Function(SignUpProfileEvent value) signUp,
    required TResult Function(SignOutProfileEvent value) signOut,
    required TResult Function(EnableChatGptProfileEvent value) enableChatGpt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitEvent value)? init,
    TResult? Function(SignInProfileEvent value)? signIn,
    TResult? Function(SignUpProfileEvent value)? signUp,
    TResult? Function(SignOutProfileEvent value)? signOut,
    TResult? Function(EnableChatGptProfileEvent value)? enableChatGpt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitEvent value)? init,
    TResult Function(SignInProfileEvent value)? signIn,
    TResult Function(SignUpProfileEvent value)? signUp,
    TResult Function(SignOutProfileEvent value)? signOut,
    TResult Function(EnableChatGptProfileEvent value)? enableChatGpt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileInitEventImplCopyWith<$Res> {
  factory _$$ProfileInitEventImplCopyWith(_$ProfileInitEventImpl value,
          $Res Function(_$ProfileInitEventImpl) then) =
      __$$ProfileInitEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$ProfileInitEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileInitEventImpl>
    implements _$$ProfileInitEventImplCopyWith<$Res> {
  __$$ProfileInitEventImplCopyWithImpl(_$ProfileInitEventImpl _value,
      $Res Function(_$ProfileInitEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$ProfileInitEventImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProfileInitEventImpl implements ProfileInitEvent {
  const _$ProfileInitEventImpl(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'ProfileEvent.init(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInitEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileInitEventImplCopyWith<_$ProfileInitEventImpl> get copyWith =>
      __$$ProfileInitEventImplCopyWithImpl<_$ProfileInitEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) init,
    required TResult Function(String username, String password) signIn,
    required TResult Function(String userName, String email, String password)
        signUp,
    required TResult Function() signOut,
    required TResult Function(bool enabled) enableChatGpt,
  }) {
    return init(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? init,
    TResult? Function(String username, String password)? signIn,
    TResult? Function(String userName, String email, String password)? signUp,
    TResult? Function()? signOut,
    TResult? Function(bool enabled)? enableChatGpt,
  }) {
    return init?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? init,
    TResult Function(String username, String password)? signIn,
    TResult Function(String userName, String email, String password)? signUp,
    TResult Function()? signOut,
    TResult Function(bool enabled)? enableChatGpt,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitEvent value) init,
    required TResult Function(SignInProfileEvent value) signIn,
    required TResult Function(SignUpProfileEvent value) signUp,
    required TResult Function(SignOutProfileEvent value) signOut,
    required TResult Function(EnableChatGptProfileEvent value) enableChatGpt,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitEvent value)? init,
    TResult? Function(SignInProfileEvent value)? signIn,
    TResult? Function(SignUpProfileEvent value)? signUp,
    TResult? Function(SignOutProfileEvent value)? signOut,
    TResult? Function(EnableChatGptProfileEvent value)? enableChatGpt,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitEvent value)? init,
    TResult Function(SignInProfileEvent value)? signIn,
    TResult Function(SignUpProfileEvent value)? signUp,
    TResult Function(SignOutProfileEvent value)? signOut,
    TResult Function(EnableChatGptProfileEvent value)? enableChatGpt,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ProfileInitEvent implements ProfileEvent {
  const factory ProfileInitEvent(final int userId) = _$ProfileInitEventImpl;

  int get userId;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileInitEventImplCopyWith<_$ProfileInitEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInProfileEventImplCopyWith<$Res> {
  factory _$$SignInProfileEventImplCopyWith(_$SignInProfileEventImpl value,
          $Res Function(_$SignInProfileEventImpl) then) =
      __$$SignInProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$SignInProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SignInProfileEventImpl>
    implements _$$SignInProfileEventImplCopyWith<$Res> {
  __$$SignInProfileEventImplCopyWithImpl(_$SignInProfileEventImpl _value,
      $Res Function(_$SignInProfileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$SignInProfileEventImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInProfileEventImpl implements SignInProfileEvent {
  const _$SignInProfileEventImpl(
      {required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'ProfileEvent.signIn(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInProfileEventImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInProfileEventImplCopyWith<_$SignInProfileEventImpl> get copyWith =>
      __$$SignInProfileEventImplCopyWithImpl<_$SignInProfileEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) init,
    required TResult Function(String username, String password) signIn,
    required TResult Function(String userName, String email, String password)
        signUp,
    required TResult Function() signOut,
    required TResult Function(bool enabled) enableChatGpt,
  }) {
    return signIn(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? init,
    TResult? Function(String username, String password)? signIn,
    TResult? Function(String userName, String email, String password)? signUp,
    TResult? Function()? signOut,
    TResult? Function(bool enabled)? enableChatGpt,
  }) {
    return signIn?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? init,
    TResult Function(String username, String password)? signIn,
    TResult Function(String userName, String email, String password)? signUp,
    TResult Function()? signOut,
    TResult Function(bool enabled)? enableChatGpt,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitEvent value) init,
    required TResult Function(SignInProfileEvent value) signIn,
    required TResult Function(SignUpProfileEvent value) signUp,
    required TResult Function(SignOutProfileEvent value) signOut,
    required TResult Function(EnableChatGptProfileEvent value) enableChatGpt,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitEvent value)? init,
    TResult? Function(SignInProfileEvent value)? signIn,
    TResult? Function(SignUpProfileEvent value)? signUp,
    TResult? Function(SignOutProfileEvent value)? signOut,
    TResult? Function(EnableChatGptProfileEvent value)? enableChatGpt,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitEvent value)? init,
    TResult Function(SignInProfileEvent value)? signIn,
    TResult Function(SignUpProfileEvent value)? signUp,
    TResult Function(SignOutProfileEvent value)? signOut,
    TResult Function(EnableChatGptProfileEvent value)? enableChatGpt,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignInProfileEvent implements ProfileEvent {
  const factory SignInProfileEvent(
      {required final String username,
      required final String password}) = _$SignInProfileEventImpl;

  String get username;
  String get password;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInProfileEventImplCopyWith<_$SignInProfileEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpProfileEventImplCopyWith<$Res> {
  factory _$$SignUpProfileEventImplCopyWith(_$SignUpProfileEventImpl value,
          $Res Function(_$SignUpProfileEventImpl) then) =
      __$$SignUpProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName, String email, String password});
}

/// @nodoc
class __$$SignUpProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SignUpProfileEventImpl>
    implements _$$SignUpProfileEventImplCopyWith<$Res> {
  __$$SignUpProfileEventImplCopyWithImpl(_$SignUpProfileEventImpl _value,
      $Res Function(_$SignUpProfileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignUpProfileEventImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpProfileEventImpl implements SignUpProfileEvent {
  const _$SignUpProfileEventImpl(
      {required this.userName, required this.email, required this.password});

  @override
  final String userName;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'ProfileEvent.signUp(userName: $userName, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpProfileEventImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, email, password);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpProfileEventImplCopyWith<_$SignUpProfileEventImpl> get copyWith =>
      __$$SignUpProfileEventImplCopyWithImpl<_$SignUpProfileEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) init,
    required TResult Function(String username, String password) signIn,
    required TResult Function(String userName, String email, String password)
        signUp,
    required TResult Function() signOut,
    required TResult Function(bool enabled) enableChatGpt,
  }) {
    return signUp(userName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? init,
    TResult? Function(String username, String password)? signIn,
    TResult? Function(String userName, String email, String password)? signUp,
    TResult? Function()? signOut,
    TResult? Function(bool enabled)? enableChatGpt,
  }) {
    return signUp?.call(userName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? init,
    TResult Function(String username, String password)? signIn,
    TResult Function(String userName, String email, String password)? signUp,
    TResult Function()? signOut,
    TResult Function(bool enabled)? enableChatGpt,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(userName, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitEvent value) init,
    required TResult Function(SignInProfileEvent value) signIn,
    required TResult Function(SignUpProfileEvent value) signUp,
    required TResult Function(SignOutProfileEvent value) signOut,
    required TResult Function(EnableChatGptProfileEvent value) enableChatGpt,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitEvent value)? init,
    TResult? Function(SignInProfileEvent value)? signIn,
    TResult? Function(SignUpProfileEvent value)? signUp,
    TResult? Function(SignOutProfileEvent value)? signOut,
    TResult? Function(EnableChatGptProfileEvent value)? enableChatGpt,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitEvent value)? init,
    TResult Function(SignInProfileEvent value)? signIn,
    TResult Function(SignUpProfileEvent value)? signUp,
    TResult Function(SignOutProfileEvent value)? signOut,
    TResult Function(EnableChatGptProfileEvent value)? enableChatGpt,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUpProfileEvent implements ProfileEvent {
  const factory SignUpProfileEvent(
      {required final String userName,
      required final String email,
      required final String password}) = _$SignUpProfileEventImpl;

  String get userName;
  String get email;
  String get password;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpProfileEventImplCopyWith<_$SignUpProfileEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutProfileEventImplCopyWith<$Res> {
  factory _$$SignOutProfileEventImplCopyWith(_$SignOutProfileEventImpl value,
          $Res Function(_$SignOutProfileEventImpl) then) =
      __$$SignOutProfileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SignOutProfileEventImpl>
    implements _$$SignOutProfileEventImplCopyWith<$Res> {
  __$$SignOutProfileEventImplCopyWithImpl(_$SignOutProfileEventImpl _value,
      $Res Function(_$SignOutProfileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignOutProfileEventImpl implements SignOutProfileEvent {
  const _$SignOutProfileEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignOutProfileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) init,
    required TResult Function(String username, String password) signIn,
    required TResult Function(String userName, String email, String password)
        signUp,
    required TResult Function() signOut,
    required TResult Function(bool enabled) enableChatGpt,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? init,
    TResult? Function(String username, String password)? signIn,
    TResult? Function(String userName, String email, String password)? signUp,
    TResult? Function()? signOut,
    TResult? Function(bool enabled)? enableChatGpt,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? init,
    TResult Function(String username, String password)? signIn,
    TResult Function(String userName, String email, String password)? signUp,
    TResult Function()? signOut,
    TResult Function(bool enabled)? enableChatGpt,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitEvent value) init,
    required TResult Function(SignInProfileEvent value) signIn,
    required TResult Function(SignUpProfileEvent value) signUp,
    required TResult Function(SignOutProfileEvent value) signOut,
    required TResult Function(EnableChatGptProfileEvent value) enableChatGpt,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitEvent value)? init,
    TResult? Function(SignInProfileEvent value)? signIn,
    TResult? Function(SignUpProfileEvent value)? signUp,
    TResult? Function(SignOutProfileEvent value)? signOut,
    TResult? Function(EnableChatGptProfileEvent value)? enableChatGpt,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitEvent value)? init,
    TResult Function(SignInProfileEvent value)? signIn,
    TResult Function(SignUpProfileEvent value)? signUp,
    TResult Function(SignOutProfileEvent value)? signOut,
    TResult Function(EnableChatGptProfileEvent value)? enableChatGpt,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOutProfileEvent implements ProfileEvent {
  const factory SignOutProfileEvent() = _$SignOutProfileEventImpl;
}

/// @nodoc
abstract class _$$EnableChatGptProfileEventImplCopyWith<$Res> {
  factory _$$EnableChatGptProfileEventImplCopyWith(
          _$EnableChatGptProfileEventImpl value,
          $Res Function(_$EnableChatGptProfileEventImpl) then) =
      __$$EnableChatGptProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool enabled});
}

/// @nodoc
class __$$EnableChatGptProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$EnableChatGptProfileEventImpl>
    implements _$$EnableChatGptProfileEventImplCopyWith<$Res> {
  __$$EnableChatGptProfileEventImplCopyWithImpl(
      _$EnableChatGptProfileEventImpl _value,
      $Res Function(_$EnableChatGptProfileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
  }) {
    return _then(_$EnableChatGptProfileEventImpl(
      null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EnableChatGptProfileEventImpl implements EnableChatGptProfileEvent {
  const _$EnableChatGptProfileEventImpl(this.enabled);

  @override
  final bool enabled;

  @override
  String toString() {
    return 'ProfileEvent.enableChatGpt(enabled: $enabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnableChatGptProfileEventImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enabled);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnableChatGptProfileEventImplCopyWith<_$EnableChatGptProfileEventImpl>
      get copyWith => __$$EnableChatGptProfileEventImplCopyWithImpl<
          _$EnableChatGptProfileEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) init,
    required TResult Function(String username, String password) signIn,
    required TResult Function(String userName, String email, String password)
        signUp,
    required TResult Function() signOut,
    required TResult Function(bool enabled) enableChatGpt,
  }) {
    return enableChatGpt(enabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? init,
    TResult? Function(String username, String password)? signIn,
    TResult? Function(String userName, String email, String password)? signUp,
    TResult? Function()? signOut,
    TResult? Function(bool enabled)? enableChatGpt,
  }) {
    return enableChatGpt?.call(enabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? init,
    TResult Function(String username, String password)? signIn,
    TResult Function(String userName, String email, String password)? signUp,
    TResult Function()? signOut,
    TResult Function(bool enabled)? enableChatGpt,
    required TResult orElse(),
  }) {
    if (enableChatGpt != null) {
      return enableChatGpt(enabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitEvent value) init,
    required TResult Function(SignInProfileEvent value) signIn,
    required TResult Function(SignUpProfileEvent value) signUp,
    required TResult Function(SignOutProfileEvent value) signOut,
    required TResult Function(EnableChatGptProfileEvent value) enableChatGpt,
  }) {
    return enableChatGpt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitEvent value)? init,
    TResult? Function(SignInProfileEvent value)? signIn,
    TResult? Function(SignUpProfileEvent value)? signUp,
    TResult? Function(SignOutProfileEvent value)? signOut,
    TResult? Function(EnableChatGptProfileEvent value)? enableChatGpt,
  }) {
    return enableChatGpt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitEvent value)? init,
    TResult Function(SignInProfileEvent value)? signIn,
    TResult Function(SignUpProfileEvent value)? signUp,
    TResult Function(SignOutProfileEvent value)? signOut,
    TResult Function(EnableChatGptProfileEvent value)? enableChatGpt,
    required TResult orElse(),
  }) {
    if (enableChatGpt != null) {
      return enableChatGpt(this);
    }
    return orElse();
  }
}

abstract class EnableChatGptProfileEvent implements ProfileEvent {
  const factory EnableChatGptProfileEvent(final bool enabled) =
      _$EnableChatGptProfileEventImpl;

  bool get enabled;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnableChatGptProfileEventImplCopyWith<_$EnableChatGptProfileEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(UserModel user) loadSuccess,
    required TResult Function() signOutSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() enabledChatGpt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(UserModel user)? loadSuccess,
    TResult? Function()? signOutSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? enabledChatGpt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserModel user)? loadSuccess,
    TResult Function()? signOutSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? enabledChatGpt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadInProgressState value) loadInProgress,
    required TResult Function(ProfileLoadSuccessState value) loadSuccess,
    required TResult Function(ProfileSignOutSuccessState value) signOutSuccess,
    required TResult Function(ProfileLoadFailureState value) loadFailure,
    required TResult Function(ProfileEnabledChatGptState value) enabledChatGpt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadInProgressState value)? loadInProgress,
    TResult? Function(ProfileLoadSuccessState value)? loadSuccess,
    TResult? Function(ProfileSignOutSuccessState value)? signOutSuccess,
    TResult? Function(ProfileLoadFailureState value)? loadFailure,
    TResult? Function(ProfileEnabledChatGptState value)? enabledChatGpt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadInProgressState value)? loadInProgress,
    TResult Function(ProfileLoadSuccessState value)? loadSuccess,
    TResult Function(ProfileSignOutSuccessState value)? signOutSuccess,
    TResult Function(ProfileLoadFailureState value)? loadFailure,
    TResult Function(ProfileEnabledChatGptState value)? enabledChatGpt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileInitialStateImplCopyWith<$Res> {
  factory _$$ProfileInitialStateImplCopyWith(_$ProfileInitialStateImpl value,
          $Res Function(_$ProfileInitialStateImpl) then) =
      __$$ProfileInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileInitialStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileInitialStateImpl>
    implements _$$ProfileInitialStateImplCopyWith<$Res> {
  __$$ProfileInitialStateImplCopyWithImpl(_$ProfileInitialStateImpl _value,
      $Res Function(_$ProfileInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileInitialStateImpl implements ProfileInitialState {
  const _$ProfileInitialStateImpl();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(UserModel user) loadSuccess,
    required TResult Function() signOutSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() enabledChatGpt,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(UserModel user)? loadSuccess,
    TResult? Function()? signOutSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? enabledChatGpt,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserModel user)? loadSuccess,
    TResult Function()? signOutSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? enabledChatGpt,
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
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadInProgressState value) loadInProgress,
    required TResult Function(ProfileLoadSuccessState value) loadSuccess,
    required TResult Function(ProfileSignOutSuccessState value) signOutSuccess,
    required TResult Function(ProfileLoadFailureState value) loadFailure,
    required TResult Function(ProfileEnabledChatGptState value) enabledChatGpt,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadInProgressState value)? loadInProgress,
    TResult? Function(ProfileLoadSuccessState value)? loadSuccess,
    TResult? Function(ProfileSignOutSuccessState value)? signOutSuccess,
    TResult? Function(ProfileLoadFailureState value)? loadFailure,
    TResult? Function(ProfileEnabledChatGptState value)? enabledChatGpt,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadInProgressState value)? loadInProgress,
    TResult Function(ProfileLoadSuccessState value)? loadSuccess,
    TResult Function(ProfileSignOutSuccessState value)? signOutSuccess,
    TResult Function(ProfileLoadFailureState value)? loadFailure,
    TResult Function(ProfileEnabledChatGptState value)? enabledChatGpt,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProfileInitialState implements ProfileState {
  const factory ProfileInitialState() = _$ProfileInitialStateImpl;
}

/// @nodoc
abstract class _$$ProfileLoadInProgressStateImplCopyWith<$Res> {
  factory _$$ProfileLoadInProgressStateImplCopyWith(
          _$ProfileLoadInProgressStateImpl value,
          $Res Function(_$ProfileLoadInProgressStateImpl) then) =
      __$$ProfileLoadInProgressStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadInProgressStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadInProgressStateImpl>
    implements _$$ProfileLoadInProgressStateImplCopyWith<$Res> {
  __$$ProfileLoadInProgressStateImplCopyWithImpl(
      _$ProfileLoadInProgressStateImpl _value,
      $Res Function(_$ProfileLoadInProgressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileLoadInProgressStateImpl implements ProfileLoadInProgressState {
  const _$ProfileLoadInProgressStateImpl();

  @override
  String toString() {
    return 'ProfileState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadInProgressStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(UserModel user) loadSuccess,
    required TResult Function() signOutSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() enabledChatGpt,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(UserModel user)? loadSuccess,
    TResult? Function()? signOutSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? enabledChatGpt,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserModel user)? loadSuccess,
    TResult Function()? signOutSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? enabledChatGpt,
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
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadInProgressState value) loadInProgress,
    required TResult Function(ProfileLoadSuccessState value) loadSuccess,
    required TResult Function(ProfileSignOutSuccessState value) signOutSuccess,
    required TResult Function(ProfileLoadFailureState value) loadFailure,
    required TResult Function(ProfileEnabledChatGptState value) enabledChatGpt,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadInProgressState value)? loadInProgress,
    TResult? Function(ProfileLoadSuccessState value)? loadSuccess,
    TResult? Function(ProfileSignOutSuccessState value)? signOutSuccess,
    TResult? Function(ProfileLoadFailureState value)? loadFailure,
    TResult? Function(ProfileEnabledChatGptState value)? enabledChatGpt,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadInProgressState value)? loadInProgress,
    TResult Function(ProfileLoadSuccessState value)? loadSuccess,
    TResult Function(ProfileSignOutSuccessState value)? signOutSuccess,
    TResult Function(ProfileLoadFailureState value)? loadFailure,
    TResult Function(ProfileEnabledChatGptState value)? enabledChatGpt,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadInProgressState implements ProfileState {
  const factory ProfileLoadInProgressState() = _$ProfileLoadInProgressStateImpl;
}

/// @nodoc
abstract class _$$ProfileLoadSuccessStateImplCopyWith<$Res> {
  factory _$$ProfileLoadSuccessStateImplCopyWith(
          _$ProfileLoadSuccessStateImpl value,
          $Res Function(_$ProfileLoadSuccessStateImpl) then) =
      __$$ProfileLoadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$ProfileLoadSuccessStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadSuccessStateImpl>
    implements _$$ProfileLoadSuccessStateImplCopyWith<$Res> {
  __$$ProfileLoadSuccessStateImplCopyWithImpl(
      _$ProfileLoadSuccessStateImpl _value,
      $Res Function(_$ProfileLoadSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ProfileLoadSuccessStateImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$ProfileLoadSuccessStateImpl implements ProfileLoadSuccessState {
  const _$ProfileLoadSuccessStateImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'ProfileState.loadSuccess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadSuccessStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileLoadSuccessStateImplCopyWith<_$ProfileLoadSuccessStateImpl>
      get copyWith => __$$ProfileLoadSuccessStateImplCopyWithImpl<
          _$ProfileLoadSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(UserModel user) loadSuccess,
    required TResult Function() signOutSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() enabledChatGpt,
  }) {
    return loadSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(UserModel user)? loadSuccess,
    TResult? Function()? signOutSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? enabledChatGpt,
  }) {
    return loadSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserModel user)? loadSuccess,
    TResult Function()? signOutSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? enabledChatGpt,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadInProgressState value) loadInProgress,
    required TResult Function(ProfileLoadSuccessState value) loadSuccess,
    required TResult Function(ProfileSignOutSuccessState value) signOutSuccess,
    required TResult Function(ProfileLoadFailureState value) loadFailure,
    required TResult Function(ProfileEnabledChatGptState value) enabledChatGpt,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadInProgressState value)? loadInProgress,
    TResult? Function(ProfileLoadSuccessState value)? loadSuccess,
    TResult? Function(ProfileSignOutSuccessState value)? signOutSuccess,
    TResult? Function(ProfileLoadFailureState value)? loadFailure,
    TResult? Function(ProfileEnabledChatGptState value)? enabledChatGpt,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadInProgressState value)? loadInProgress,
    TResult Function(ProfileLoadSuccessState value)? loadSuccess,
    TResult Function(ProfileSignOutSuccessState value)? signOutSuccess,
    TResult Function(ProfileLoadFailureState value)? loadFailure,
    TResult Function(ProfileEnabledChatGptState value)? enabledChatGpt,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadSuccessState implements ProfileState {
  const factory ProfileLoadSuccessState(final UserModel user) =
      _$ProfileLoadSuccessStateImpl;

  UserModel get user;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileLoadSuccessStateImplCopyWith<_$ProfileLoadSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileSignOutSuccessStateImplCopyWith<$Res> {
  factory _$$ProfileSignOutSuccessStateImplCopyWith(
          _$ProfileSignOutSuccessStateImpl value,
          $Res Function(_$ProfileSignOutSuccessStateImpl) then) =
      __$$ProfileSignOutSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileSignOutSuccessStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileSignOutSuccessStateImpl>
    implements _$$ProfileSignOutSuccessStateImplCopyWith<$Res> {
  __$$ProfileSignOutSuccessStateImplCopyWithImpl(
      _$ProfileSignOutSuccessStateImpl _value,
      $Res Function(_$ProfileSignOutSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileSignOutSuccessStateImpl implements ProfileSignOutSuccessState {
  const _$ProfileSignOutSuccessStateImpl();

  @override
  String toString() {
    return 'ProfileState.signOutSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSignOutSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(UserModel user) loadSuccess,
    required TResult Function() signOutSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() enabledChatGpt,
  }) {
    return signOutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(UserModel user)? loadSuccess,
    TResult? Function()? signOutSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? enabledChatGpt,
  }) {
    return signOutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserModel user)? loadSuccess,
    TResult Function()? signOutSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? enabledChatGpt,
    required TResult orElse(),
  }) {
    if (signOutSuccess != null) {
      return signOutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadInProgressState value) loadInProgress,
    required TResult Function(ProfileLoadSuccessState value) loadSuccess,
    required TResult Function(ProfileSignOutSuccessState value) signOutSuccess,
    required TResult Function(ProfileLoadFailureState value) loadFailure,
    required TResult Function(ProfileEnabledChatGptState value) enabledChatGpt,
  }) {
    return signOutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadInProgressState value)? loadInProgress,
    TResult? Function(ProfileLoadSuccessState value)? loadSuccess,
    TResult? Function(ProfileSignOutSuccessState value)? signOutSuccess,
    TResult? Function(ProfileLoadFailureState value)? loadFailure,
    TResult? Function(ProfileEnabledChatGptState value)? enabledChatGpt,
  }) {
    return signOutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadInProgressState value)? loadInProgress,
    TResult Function(ProfileLoadSuccessState value)? loadSuccess,
    TResult Function(ProfileSignOutSuccessState value)? signOutSuccess,
    TResult Function(ProfileLoadFailureState value)? loadFailure,
    TResult Function(ProfileEnabledChatGptState value)? enabledChatGpt,
    required TResult orElse(),
  }) {
    if (signOutSuccess != null) {
      return signOutSuccess(this);
    }
    return orElse();
  }
}

abstract class ProfileSignOutSuccessState implements ProfileState {
  const factory ProfileSignOutSuccessState() = _$ProfileSignOutSuccessStateImpl;
}

/// @nodoc
abstract class _$$ProfileLoadFailureStateImplCopyWith<$Res> {
  factory _$$ProfileLoadFailureStateImplCopyWith(
          _$ProfileLoadFailureStateImpl value,
          $Res Function(_$ProfileLoadFailureStateImpl) then) =
      __$$ProfileLoadFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ProfileLoadFailureStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadFailureStateImpl>
    implements _$$ProfileLoadFailureStateImplCopyWith<$Res> {
  __$$ProfileLoadFailureStateImplCopyWithImpl(
      _$ProfileLoadFailureStateImpl _value,
      $Res Function(_$ProfileLoadFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ProfileLoadFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileLoadFailureStateImpl implements ProfileLoadFailureState {
  const _$ProfileLoadFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ProfileState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileLoadFailureStateImplCopyWith<_$ProfileLoadFailureStateImpl>
      get copyWith => __$$ProfileLoadFailureStateImplCopyWithImpl<
          _$ProfileLoadFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(UserModel user) loadSuccess,
    required TResult Function() signOutSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() enabledChatGpt,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(UserModel user)? loadSuccess,
    TResult? Function()? signOutSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? enabledChatGpt,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserModel user)? loadSuccess,
    TResult Function()? signOutSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? enabledChatGpt,
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
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadInProgressState value) loadInProgress,
    required TResult Function(ProfileLoadSuccessState value) loadSuccess,
    required TResult Function(ProfileSignOutSuccessState value) signOutSuccess,
    required TResult Function(ProfileLoadFailureState value) loadFailure,
    required TResult Function(ProfileEnabledChatGptState value) enabledChatGpt,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadInProgressState value)? loadInProgress,
    TResult? Function(ProfileLoadSuccessState value)? loadSuccess,
    TResult? Function(ProfileSignOutSuccessState value)? signOutSuccess,
    TResult? Function(ProfileLoadFailureState value)? loadFailure,
    TResult? Function(ProfileEnabledChatGptState value)? enabledChatGpt,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadInProgressState value)? loadInProgress,
    TResult Function(ProfileLoadSuccessState value)? loadSuccess,
    TResult Function(ProfileSignOutSuccessState value)? signOutSuccess,
    TResult Function(ProfileLoadFailureState value)? loadFailure,
    TResult Function(ProfileEnabledChatGptState value)? enabledChatGpt,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadFailureState implements ProfileState {
  const factory ProfileLoadFailureState(final String error) =
      _$ProfileLoadFailureStateImpl;

  String get error;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileLoadFailureStateImplCopyWith<_$ProfileLoadFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileEnabledChatGptStateImplCopyWith<$Res> {
  factory _$$ProfileEnabledChatGptStateImplCopyWith(
          _$ProfileEnabledChatGptStateImpl value,
          $Res Function(_$ProfileEnabledChatGptStateImpl) then) =
      __$$ProfileEnabledChatGptStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileEnabledChatGptStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileEnabledChatGptStateImpl>
    implements _$$ProfileEnabledChatGptStateImplCopyWith<$Res> {
  __$$ProfileEnabledChatGptStateImplCopyWithImpl(
      _$ProfileEnabledChatGptStateImpl _value,
      $Res Function(_$ProfileEnabledChatGptStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileEnabledChatGptStateImpl implements ProfileEnabledChatGptState {
  const _$ProfileEnabledChatGptStateImpl();

  @override
  String toString() {
    return 'ProfileState.enabledChatGpt()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileEnabledChatGptStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(UserModel user) loadSuccess,
    required TResult Function() signOutSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() enabledChatGpt,
  }) {
    return enabledChatGpt();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(UserModel user)? loadSuccess,
    TResult? Function()? signOutSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? enabledChatGpt,
  }) {
    return enabledChatGpt?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserModel user)? loadSuccess,
    TResult Function()? signOutSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? enabledChatGpt,
    required TResult orElse(),
  }) {
    if (enabledChatGpt != null) {
      return enabledChatGpt();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadInProgressState value) loadInProgress,
    required TResult Function(ProfileLoadSuccessState value) loadSuccess,
    required TResult Function(ProfileSignOutSuccessState value) signOutSuccess,
    required TResult Function(ProfileLoadFailureState value) loadFailure,
    required TResult Function(ProfileEnabledChatGptState value) enabledChatGpt,
  }) {
    return enabledChatGpt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadInProgressState value)? loadInProgress,
    TResult? Function(ProfileLoadSuccessState value)? loadSuccess,
    TResult? Function(ProfileSignOutSuccessState value)? signOutSuccess,
    TResult? Function(ProfileLoadFailureState value)? loadFailure,
    TResult? Function(ProfileEnabledChatGptState value)? enabledChatGpt,
  }) {
    return enabledChatGpt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadInProgressState value)? loadInProgress,
    TResult Function(ProfileLoadSuccessState value)? loadSuccess,
    TResult Function(ProfileSignOutSuccessState value)? signOutSuccess,
    TResult Function(ProfileLoadFailureState value)? loadFailure,
    TResult Function(ProfileEnabledChatGptState value)? enabledChatGpt,
    required TResult orElse(),
  }) {
    if (enabledChatGpt != null) {
      return enabledChatGpt(this);
    }
    return orElse();
  }
}

abstract class ProfileEnabledChatGptState implements ProfileState {
  const factory ProfileEnabledChatGptState() = _$ProfileEnabledChatGptStateImpl;
}
