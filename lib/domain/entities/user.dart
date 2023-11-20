import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(
      {final int? id,
      final String? email,
      final String? firstName,
      final String? lastName}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
