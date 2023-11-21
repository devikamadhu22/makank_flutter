import 'package:fpdart/fpdart.dart';

import '../../domain/entities/get_user_response.dart';

abstract class DataSource {
  Future<Either<String, GetUserResponse>> getUsers();
}
