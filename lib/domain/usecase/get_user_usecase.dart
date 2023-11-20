import 'package:injectable/injectable.dart';

import '../entities/get_user_response.dart';
import '../repository/user_repository.dart';

@injectable
class GetUserUseCase {
  final UserRepository userRepository;

  GetUserUseCase(this.userRepository);

  Future<GetUserResponse> execute() {
    return userRepository.getUsers();
  }
}
