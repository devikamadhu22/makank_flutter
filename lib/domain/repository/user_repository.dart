import 'package:fpdart/fpdart.dart';

import '../entities/get_user_response.dart';
import '../entities/login_request.dart';
import '../entities/login_response.dart';

abstract class UserRepository {
  Future<Either<String, GetUserResponse>> getUsers();
  Future<Either<String, LoginResponse>> login({required LoginRequest loginRequest});

}
