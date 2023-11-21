import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/get_user_response.dart';
import 'data_source.dart';

@Injectable(as: DataSource)
class RemoteDataSource extends DataSource {
  @injectable
  final Dio dio;

  RemoteDataSource(this.dio);

  @override
  Future<Either<String, GetUserResponse>> getUsers() async {
    try {
      final response = await dio.get("users?page=2");

      if (response.statusCode == 200 && response.data != null) {
        return Right(GetUserResponse.fromJson(response.data));
      } else {
        return const Left("Received Error response");
      }
    } catch (e) {
      return const Left("Exception Occurred while fetching users");
    }
  }
}
