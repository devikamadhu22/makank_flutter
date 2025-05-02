import 'package:fpdart/fpdart.dart';

import '../../domain/entities/get_user_response.dart';
import '../../domain/entities/login_request.dart';
import '../../domain/entities/login_response.dart';

abstract class DataSource {
  Future<Either<String, GetUserResponse>> getUsers();
  Future<Either<String, LoginResponse>> login({required LoginRequest loginRequest});

}
