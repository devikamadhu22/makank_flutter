import '../entities/get_user_response.dart';

abstract class UserRepository {
  Future<GetUserResponse> getUsers();
}
