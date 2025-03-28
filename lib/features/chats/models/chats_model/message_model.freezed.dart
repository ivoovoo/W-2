// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  int? get room => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_group')
  int? get roomGroup => throw _privateConstructorUsedError;
  int get sender => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_read')
  String? get messageRead => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_type')
  String get messageType => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {int? room,
      @JsonKey(name: 'room_group') int? roomGroup,
      int sender,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'message_read') String? messageRead,
      @JsonKey(name: 'message_type') String messageType,
      String content});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = freezed,
    Object? roomGroup = freezed,
    Object? sender = null,
    Object? createdAt = null,
    Object? messageRead = freezed,
    Object? messageType = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as int?,
      roomGroup: freezed == roomGroup
          ? _value.roomGroup
          : roomGroup // ignore: cast_nullable_to_non_nullable
              as int?,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      messageRead: freezed == messageRead
          ? _value.messageRead
          : messageRead // ignore: cast_nullable_to_non_nullable
              as String?,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? room,
      @JsonKey(name: 'room_group') int? roomGroup,
      int sender,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'message_read') String? messageRead,
      @JsonKey(name: 'message_type') String messageType,
      String content});
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = freezed,
    Object? roomGroup = freezed,
    Object? sender = null,
    Object? createdAt = null,
    Object? messageRead = freezed,
    Object? messageType = null,
    Object? content = null,
  }) {
    return _then(_$MessageImpl(
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as int?,
      roomGroup: freezed == roomGroup
          ? _value.roomGroup
          : roomGroup // ignore: cast_nullable_to_non_nullable
              as int?,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      messageRead: freezed == messageRead
          ? _value.messageRead
          : messageRead // ignore: cast_nullable_to_non_nullable
              as String?,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  const _$MessageImpl(
      {required this.room,
      @JsonKey(name: 'room_group') required this.roomGroup,
      required this.sender,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'message_read') required this.messageRead,
      @JsonKey(name: 'message_type') required this.messageType,
      required this.content});

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final int? room;
  @override
  @JsonKey(name: 'room_group')
  final int? roomGroup;
  @override
  final int sender;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'message_read')
  final String? messageRead;
  @override
  @JsonKey(name: 'message_type')
  final String messageType;
  @override
  final String content;

  @override
  String toString() {
    return 'Message(room: $room, roomGroup: $roomGroup, sender: $sender, createdAt: $createdAt, messageRead: $messageRead, messageType: $messageType, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.roomGroup, roomGroup) ||
                other.roomGroup == roomGroup) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.messageRead, messageRead) ||
                other.messageRead == messageRead) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, room, roomGroup, sender,
      createdAt, messageRead, messageType, content);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {required final int? room,
      @JsonKey(name: 'room_group') required final int? roomGroup,
      required final int sender,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'message_read') required final String? messageRead,
      @JsonKey(name: 'message_type') required final String messageType,
      required final String content}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  int? get room;
  @override
  @JsonKey(name: 'room_group')
  int? get roomGroup;
  @override
  int get sender;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'message_read')
  String? get messageRead;
  @override
  @JsonKey(name: 'message_type')
  String get messageType;
  @override
  String get content;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatPartner _$ChatPartnerFromJson(Map<String, dynamic> json) {
  return _ChatPartner.fromJson(json);
}

/// @nodoc
mixin _$ChatPartner {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  /// Serializes this ChatPartner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatPartner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatPartnerCopyWith<ChatPartner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPartnerCopyWith<$Res> {
  factory $ChatPartnerCopyWith(
          ChatPartner value, $Res Function(ChatPartner) then) =
      _$ChatPartnerCopyWithImpl<$Res, ChatPartner>;
  @useResult
  $Res call({int id, String username});
}

/// @nodoc
class _$ChatPartnerCopyWithImpl<$Res, $Val extends ChatPartner>
    implements $ChatPartnerCopyWith<$Res> {
  _$ChatPartnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatPartner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatPartnerImplCopyWith<$Res>
    implements $ChatPartnerCopyWith<$Res> {
  factory _$$ChatPartnerImplCopyWith(
          _$ChatPartnerImpl value, $Res Function(_$ChatPartnerImpl) then) =
      __$$ChatPartnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String username});
}

/// @nodoc
class __$$ChatPartnerImplCopyWithImpl<$Res>
    extends _$ChatPartnerCopyWithImpl<$Res, _$ChatPartnerImpl>
    implements _$$ChatPartnerImplCopyWith<$Res> {
  __$$ChatPartnerImplCopyWithImpl(
      _$ChatPartnerImpl _value, $Res Function(_$ChatPartnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatPartner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_$ChatPartnerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatPartnerImpl implements _ChatPartner {
  const _$ChatPartnerImpl({required this.id, required this.username});

  factory _$ChatPartnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatPartnerImplFromJson(json);

  @override
  final int id;
  @override
  final String username;

  @override
  String toString() {
    return 'ChatPartner(id: $id, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatPartnerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  /// Create a copy of ChatPartner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatPartnerImplCopyWith<_$ChatPartnerImpl> get copyWith =>
      __$$ChatPartnerImplCopyWithImpl<_$ChatPartnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatPartnerImplToJson(
      this,
    );
  }
}

abstract class _ChatPartner implements ChatPartner {
  const factory _ChatPartner(
      {required final int id,
      required final String username}) = _$ChatPartnerImpl;

  factory _ChatPartner.fromJson(Map<String, dynamic> json) =
      _$ChatPartnerImpl.fromJson;

  @override
  int get id;
  @override
  String get username;

  /// Create a copy of ChatPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatPartnerImplCopyWith<_$ChatPartnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatResponse _$ChatResponseFromJson(Map<String, dynamic> json) {
  return _ChatResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatResponse {
  List<Message>? get history => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_partner')
  ChatPartner? get chatPartner => throw _privateConstructorUsedError;

  /// Serializes this ChatResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatResponseCopyWith<ChatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatResponseCopyWith<$Res> {
  factory $ChatResponseCopyWith(
          ChatResponse value, $Res Function(ChatResponse) then) =
      _$ChatResponseCopyWithImpl<$Res, ChatResponse>;
  @useResult
  $Res call(
      {List<Message>? history,
      @JsonKey(name: 'chat_partner') ChatPartner? chatPartner});

  $ChatPartnerCopyWith<$Res>? get chatPartner;
}

/// @nodoc
class _$ChatResponseCopyWithImpl<$Res, $Val extends ChatResponse>
    implements $ChatResponseCopyWith<$Res> {
  _$ChatResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = freezed,
    Object? chatPartner = freezed,
  }) {
    return _then(_value.copyWith(
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
      chatPartner: freezed == chatPartner
          ? _value.chatPartner
          : chatPartner // ignore: cast_nullable_to_non_nullable
              as ChatPartner?,
    ) as $Val);
  }

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatPartnerCopyWith<$Res>? get chatPartner {
    if (_value.chatPartner == null) {
      return null;
    }

    return $ChatPartnerCopyWith<$Res>(_value.chatPartner!, (value) {
      return _then(_value.copyWith(chatPartner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatResponseImplCopyWith<$Res>
    implements $ChatResponseCopyWith<$Res> {
  factory _$$ChatResponseImplCopyWith(
          _$ChatResponseImpl value, $Res Function(_$ChatResponseImpl) then) =
      __$$ChatResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Message>? history,
      @JsonKey(name: 'chat_partner') ChatPartner? chatPartner});

  @override
  $ChatPartnerCopyWith<$Res>? get chatPartner;
}

/// @nodoc
class __$$ChatResponseImplCopyWithImpl<$Res>
    extends _$ChatResponseCopyWithImpl<$Res, _$ChatResponseImpl>
    implements _$$ChatResponseImplCopyWith<$Res> {
  __$$ChatResponseImplCopyWithImpl(
      _$ChatResponseImpl _value, $Res Function(_$ChatResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = freezed,
    Object? chatPartner = freezed,
  }) {
    return _then(_$ChatResponseImpl(
      history: freezed == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
      chatPartner: freezed == chatPartner
          ? _value.chatPartner
          : chatPartner // ignore: cast_nullable_to_non_nullable
              as ChatPartner?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatResponseImpl implements _ChatResponse {
  const _$ChatResponseImpl(
      {final List<Message>? history,
      @JsonKey(name: 'chat_partner') this.chatPartner})
      : _history = history;

  factory _$ChatResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatResponseImplFromJson(json);

  final List<Message>? _history;
  @override
  List<Message>? get history {
    final value = _history;
    if (value == null) return null;
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'chat_partner')
  final ChatPartner? chatPartner;

  @override
  String toString() {
    return 'ChatResponse(history: $history, chatPartner: $chatPartner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatResponseImpl &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            (identical(other.chatPartner, chatPartner) ||
                other.chatPartner == chatPartner));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_history), chatPartner);

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatResponseImplCopyWith<_$ChatResponseImpl> get copyWith =>
      __$$ChatResponseImplCopyWithImpl<_$ChatResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatResponseImplToJson(
      this,
    );
  }
}

abstract class _ChatResponse implements ChatResponse {
  const factory _ChatResponse(
          {final List<Message>? history,
          @JsonKey(name: 'chat_partner') final ChatPartner? chatPartner}) =
      _$ChatResponseImpl;

  factory _ChatResponse.fromJson(Map<String, dynamic> json) =
      _$ChatResponseImpl.fromJson;

  @override
  List<Message>? get history;
  @override
  @JsonKey(name: 'chat_partner')
  ChatPartner? get chatPartner;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatResponseImplCopyWith<_$ChatResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
