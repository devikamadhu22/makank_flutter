import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/get_user_response.dart';
import 'data_source.dart';

@Injectable(as: DataSource)
class RemoteDataSource extends DataSource {
  @injectable
  final Dio dio;

  RemoteDataSource(this.dio);

  @override
  Future<GetUserResponse> getUsers() async {
    final response = await dio.get("users?page=2");

    return GetUserResponse.fromJson(response.data);
  }
}
