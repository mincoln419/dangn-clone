import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_user.freezed.dart';

@freezed
class User with _$User {

  const factory User(
      final String nickName,
      final double temperature,
      final int id,
      ) = _User;
}