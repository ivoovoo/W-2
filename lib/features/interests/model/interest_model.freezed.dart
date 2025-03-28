// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InterestResponse _$InterestResponseFromJson(Map<String, dynamic> json) {
  return _InterestResponse.fromJson(json);
}

/// @nodoc
mixin _$InterestResponse {
  List<Interest> get interests => throw _privateConstructorUsedError;

  /// Serializes this InterestResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InterestResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterestResponseCopyWith<InterestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestResponseCopyWith<$Res> {
  factory $InterestResponseCopyWith(
          InterestResponse value, $Res Function(InterestResponse) then) =
      _$InterestResponseCopyWithImpl<$Res, InterestResponse>;
  @useResult
  $Res call({List<Interest> interests});
}

/// @nodoc
class _$InterestResponseCopyWithImpl<$Res, $Val extends InterestResponse>
    implements $InterestResponseCopyWith<$Res> {
  _$InterestResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterestResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interests = null,
  }) {
    return _then(_value.copyWith(
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterestResponseImplCopyWith<$Res>
    implements $InterestResponseCopyWith<$Res> {
  factory _$$InterestResponseImplCopyWith(_$InterestResponseImpl value,
          $Res Function(_$InterestResponseImpl) then) =
      __$$InterestResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Interest> interests});
}

/// @nodoc
class __$$InterestResponseImplCopyWithImpl<$Res>
    extends _$InterestResponseCopyWithImpl<$Res, _$InterestResponseImpl>
    implements _$$InterestResponseImplCopyWith<$Res> {
  __$$InterestResponseImplCopyWithImpl(_$InterestResponseImpl _value,
      $Res Function(_$InterestResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterestResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interests = null,
  }) {
    return _then(_$InterestResponseImpl(
      interests: null == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterestResponseImpl implements _InterestResponse {
  const _$InterestResponseImpl({required final List<Interest> interests})
      : _interests = interests;

  factory _$InterestResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterestResponseImplFromJson(json);

  final List<Interest> _interests;
  @override
  List<Interest> get interests {
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interests);
  }

  @override
  String toString() {
    return 'InterestResponse(interests: $interests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_interests));

  /// Create a copy of InterestResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestResponseImplCopyWith<_$InterestResponseImpl> get copyWith =>
      __$$InterestResponseImplCopyWithImpl<_$InterestResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterestResponseImplToJson(
      this,
    );
  }
}

abstract class _InterestResponse implements InterestResponse {
  const factory _InterestResponse({required final List<Interest> interests}) =
      _$InterestResponseImpl;

  factory _InterestResponse.fromJson(Map<String, dynamic> json) =
      _$InterestResponseImpl.fromJson;

  @override
  List<Interest> get interests;

  /// Create a copy of InterestResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterestResponseImplCopyWith<_$InterestResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Interest _$InterestFromJson(Map<String, dynamic> json) {
  return _Interest.fromJson(json);
}

/// @nodoc
mixin _$Interest {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_interest')
  String? get imageInterest => throw _privateConstructorUsedError;

  /// Serializes this Interest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Interest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterestCopyWith<Interest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestCopyWith<$Res> {
  factory $InterestCopyWith(Interest value, $Res Function(Interest) then) =
      _$InterestCopyWithImpl<$Res, Interest>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'image_interest') String? imageInterest});
}

/// @nodoc
class _$InterestCopyWithImpl<$Res, $Val extends Interest>
    implements $InterestCopyWith<$Res> {
  _$InterestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Interest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageInterest = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageInterest: freezed == imageInterest
          ? _value.imageInterest
          : imageInterest // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterestImplCopyWith<$Res>
    implements $InterestCopyWith<$Res> {
  factory _$$InterestImplCopyWith(
          _$InterestImpl value, $Res Function(_$InterestImpl) then) =
      __$$InterestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'image_interest') String? imageInterest});
}

/// @nodoc
class __$$InterestImplCopyWithImpl<$Res>
    extends _$InterestCopyWithImpl<$Res, _$InterestImpl>
    implements _$$InterestImplCopyWith<$Res> {
  __$$InterestImplCopyWithImpl(
      _$InterestImpl _value, $Res Function(_$InterestImpl) _then)
      : super(_value, _then);

  /// Create a copy of Interest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageInterest = freezed,
  }) {
    return _then(_$InterestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageInterest: freezed == imageInterest
          ? _value.imageInterest
          : imageInterest // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterestImpl implements _Interest {
  const _$InterestImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'image_interest') this.imageInterest});

  factory _$InterestImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterestImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'image_interest')
  final String? imageInterest;

  @override
  String toString() {
    return 'Interest(id: $id, name: $name, imageInterest: $imageInterest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageInterest, imageInterest) ||
                other.imageInterest == imageInterest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageInterest);

  /// Create a copy of Interest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestImplCopyWith<_$InterestImpl> get copyWith =>
      __$$InterestImplCopyWithImpl<_$InterestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterestImplToJson(
      this,
    );
  }
}

abstract class _Interest implements Interest {
  const factory _Interest(
          {required final int id,
          required final String name,
          @JsonKey(name: 'image_interest') final String? imageInterest}) =
      _$InterestImpl;

  factory _Interest.fromJson(Map<String, dynamic> json) =
      _$InterestImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'image_interest')
  String? get imageInterest;

  /// Create a copy of Interest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterestImplCopyWith<_$InterestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
