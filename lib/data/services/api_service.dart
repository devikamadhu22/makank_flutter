import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../di/injectable.dart';
import '../../domain/core/base_constants.dart';

@module
abstract class APIService {
  @Singleton()
  Dio get dio => Dio(BaseOptions(
      contentType: "application/json",
      baseUrl: getIt.get<BaseConstants>().baseUrl));
}
