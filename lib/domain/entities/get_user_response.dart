import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'get_user_response.freezed.dart';
part 'get_user_response.g.dart';

@freezed
class GetUserResponse with _$GetUserResponse {
  const factory GetUserResponse({
    final int? page,
    final int? perPage,
    final int? total,
    final int? totalPages,
    final List<User>? data,
  }) = _GetUserResponse;

  factory GetUserResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUserResponseFromJson(json);
}
