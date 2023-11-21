import 'package:fpdart/fpdart.dart';

import '../entities/get_user_response.dart';

abstract class UserRepository {
  Future<Either<String, GetUserResponse>> getUsers();
}
