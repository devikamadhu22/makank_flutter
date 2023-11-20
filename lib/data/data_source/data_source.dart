import '../../domain/entities/get_user_response.dart';

abstract class DataSource {
  Future<GetUserResponse> getUsers();
}
