import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/get_user_response.dart';
import '../../domain/entities/login_request.dart';
import '../../domain/entities/login_response.dart';
import '../../domain/repository/user_repository.dart';
import '../data_source/data_source.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  final DataSource userDataSource;

  UserRepositoryImpl(this.userDataSource);

  @override
  Future<Either<String, GetUserResponse>> getUsers() async {
    return await userDataSource.getUsers();
  }

  @override
  Future<Either<String, LoginResponse>> login({required LoginRequest loginRequest}) async {
    return await userDataSource.login(loginRequest:  loginRequest);
  }}
