// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  String get nickName => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get profileUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String nickName, double temperature, int id, String profileUrl});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = null,
    Object? temperature = null,
    Object? id = null,
    Object? profileUrl = null,
  }) {
    return _then(_value.copyWith(
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profileUrl: null == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickName, double temperature, int id, String profileUrl});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = null,
    Object? temperature = null,
    Object? id = null,
    Object? profileUrl = null,
  }) {
    return _then(_$_User(
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profileUrl: null == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      {required this.nickName,
      required this.temperature,
      required this.id,
      required this.profileUrl});

  @override
  final String nickName;
  @override
  final double temperature;
  @override
  final int id;
  @override
  final String profileUrl;

  @override
  String toString() {
    return 'User(nickName: $nickName, temperature: $temperature, id: $id, profileUrl: $profileUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, nickName, temperature, id, profileUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required final String nickName,
      required final double temperature,
      required final int id,
      required final String profileUrl}) = _$_User;

  @override
  String get nickName;
  @override
  double get temperature;
  @override
  int get id;
  @override
  String get profileUrl;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
