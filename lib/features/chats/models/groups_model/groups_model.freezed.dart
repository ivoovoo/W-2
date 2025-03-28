// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'groups_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupsModel _$GroupsModelFromJson(Map<String, dynamic> json) {
  return _GroupsModel.fromJson(json);
}

/// @nodoc
mixin _$GroupsModel {
  @JsonKey(name: 'user_groups')
  List<UserGroup> get userGroups => throw _privateConstructorUsedError;

  /// Serializes this GroupsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupsModelCopyWith<GroupsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsModelCopyWith<$Res> {
  factory $GroupsModelCopyWith(
          GroupsModel value, $Res Function(GroupsModel) then) =
      _$GroupsModelCopyWithImpl<$Res, GroupsModel>;
  @useResult
  $Res call({@JsonKey(name: 'user_groups') List<UserGroup> userGroups});
}

/// @nodoc
class _$GroupsModelCopyWithImpl<$Res, $Val extends GroupsModel>
    implements $GroupsModelCopyWith<$Res> {
  _$GroupsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userGroups = null,
  }) {
    return _then(_value.copyWith(
      userGroups: null == userGroups
          ? _value.userGroups
          : userGroups // ignore: cast_nullable_to_non_nullable
              as List<UserGroup>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupsModelImplCopyWith<$Res>
    implements $GroupsModelCopyWith<$Res> {
  factory _$$GroupsModelImplCopyWith(
          _$GroupsModelImpl value, $Res Function(_$GroupsModelImpl) then) =
      __$$GroupsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'user_groups') List<UserGroup> userGroups});
}

/// @nodoc
class __$$GroupsModelImplCopyWithImpl<$Res>
    extends _$GroupsModelCopyWithImpl<$Res, _$GroupsModelImpl>
    implements _$$GroupsModelImplCopyWith<$Res> {
  __$$GroupsModelImplCopyWithImpl(
      _$GroupsModelImpl _value, $Res Function(_$GroupsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userGroups = null,
  }) {
    return _then(_$GroupsModelImpl(
      userGroups: null == userGroups
          ? _value._userGroups
          : userGroups // ignore: cast_nullable_to_non_nullable
              as List<UserGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupsModelImpl implements _GroupsModel {
  const _$GroupsModelImpl(
      {@JsonKey(name: 'user_groups') required final List<UserGroup> userGroups})
      : _userGroups = userGroups;

  factory _$GroupsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupsModelImplFromJson(json);

  final List<UserGroup> _userGroups;
  @override
  @JsonKey(name: 'user_groups')
  List<UserGroup> get userGroups {
    if (_userGroups is EqualUnmodifiableListView) return _userGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userGroups);
  }

  @override
  String toString() {
    return 'GroupsModel(userGroups: $userGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsModelImpl &&
            const DeepCollectionEquality()
                .equals(other._userGroups, _userGroups));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_userGroups));

  /// Create a copy of GroupsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupsModelImplCopyWith<_$GroupsModelImpl> get copyWith =>
      __$$GroupsModelImplCopyWithImpl<_$GroupsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupsModelImplToJson(
      this,
    );
  }
}

abstract class _GroupsModel implements GroupsModel {
  const factory _GroupsModel(
      {@JsonKey(name: 'user_groups')
      required final List<UserGroup> userGroups}) = _$GroupsModelImpl;

  factory _GroupsModel.fromJson(Map<String, dynamic> json) =
      _$GroupsModelImpl.fromJson;

  @override
  @JsonKey(name: 'user_groups')
  List<UserGroup> get userGroups;

  /// Create a copy of GroupsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupsModelImplCopyWith<_$GroupsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserGroup _$UserGroupFromJson(Map<String, dynamic> json) {
  return _UserGroup.fromJson(json);
}

/// @nodoc
mixin _$UserGroup {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "group_image")
  String? get groupImage => throw _privateConstructorUsedError;
  UserModel get creator => throw _privateConstructorUsedError;
  List<int> get members => throw _privateConstructorUsedError;

  /// Serializes this UserGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserGroupCopyWith<UserGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGroupCopyWith<$Res> {
  factory $UserGroupCopyWith(UserGroup value, $Res Function(UserGroup) then) =
      _$UserGroupCopyWithImpl<$Res, UserGroup>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "group_image") String? groupImage,
      UserModel creator,
      List<int> members});

  $UserModelCopyWith<$Res> get creator;
}

/// @nodoc
class _$UserGroupCopyWithImpl<$Res, $Val extends UserGroup>
    implements $UserGroupCopyWith<$Res> {
  _$UserGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? groupImage = freezed,
    Object? creator = null,
    Object? members = null,
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
      groupImage: freezed == groupImage
          ? _value.groupImage
          : groupImage // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserModel,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  /// Create a copy of UserGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get creator {
    return $UserModelCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserGroupImplCopyWith<$Res>
    implements $UserGroupCopyWith<$Res> {
  factory _$$UserGroupImplCopyWith(
          _$UserGroupImpl value, $Res Function(_$UserGroupImpl) then) =
      __$$UserGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "group_image") String? groupImage,
      UserModel creator,
      List<int> members});

  @override
  $UserModelCopyWith<$Res> get creator;
}

/// @nodoc
class __$$UserGroupImplCopyWithImpl<$Res>
    extends _$UserGroupCopyWithImpl<$Res, _$UserGroupImpl>
    implements _$$UserGroupImplCopyWith<$Res> {
  __$$UserGroupImplCopyWithImpl(
      _$UserGroupImpl _value, $Res Function(_$UserGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? groupImage = freezed,
    Object? creator = null,
    Object? members = null,
  }) {
    return _then(_$UserGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      groupImage: freezed == groupImage
          ? _value.groupImage
          : groupImage // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserModel,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserGroupImpl implements _UserGroup {
  const _$UserGroupImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: "group_image") required this.groupImage,
      required this.creator,
      required final List<int> members})
      : _members = members;

  factory _$UserGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserGroupImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: "group_image")
  final String? groupImage;
  @override
  final UserModel creator;
  final List<int> _members;
  @override
  List<int> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'UserGroup(id: $id, name: $name, groupImage: $groupImage, creator: $creator, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.groupImage, groupImage) ||
                other.groupImage == groupImage) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, groupImage, creator,
      const DeepCollectionEquality().hash(_members));

  /// Create a copy of UserGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserGroupImplCopyWith<_$UserGroupImpl> get copyWith =>
      __$$UserGroupImplCopyWithImpl<_$UserGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserGroupImplToJson(
      this,
    );
  }
}

abstract class _UserGroup implements UserGroup {
  const factory _UserGroup(
      {required final int id,
      required final String name,
      @JsonKey(name: "group_image") required final String? groupImage,
      required final UserModel creator,
      required final List<int> members}) = _$UserGroupImpl;

  factory _UserGroup.fromJson(Map<String, dynamic> json) =
      _$UserGroupImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: "group_image")
  String? get groupImage;
  @override
  UserModel get creator;
  @override
  List<int> get members;

  /// Create a copy of UserGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserGroupImplCopyWith<_$UserGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
