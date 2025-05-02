import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../entities/get_user_response.dart';
import '../entities/login_request.dart';
import '../entities/login_response.dart';
import '../repository/user_repository.dart';

@injectable
class GetLoginUseCase {
  final UserRepository userRepository;

  GetLoginUseCase(this.userRepository);

  Future<Either<String, LoginResponse>> execute({required LoginRequest loginRequest}) {
    return userRepository.login(loginRequest: loginRequest);
  }
}
