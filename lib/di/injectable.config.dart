// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/data_source/data_source.dart' as _i345;
import '../data/data_source/remote_data_source.dart' as _i780;
import '../data/repository/user_repository_impl.dart' as _i890;
import '../data/services/api_service.dart' as _i315;
import '../domain/core/base_constants.dart' as _i542;
import '../domain/repository/user_repository.dart' as _i541;
import '../domain/usecase/get_user_usecase.dart' as _i201;
import '../presentation/features/home/blocs/home_bloc/home_bloc.dart' as _i320;
import '../presentation/features/translation/translation_bloc/translation_bloc.dart'
    as _i550;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final aPIService = _$APIService();
    gh.factory<_i542.BaseConstants>(() => _i542.BaseConstants());
    gh.factory<_i550.TranslationBloc>(() => _i550.TranslationBloc());
    gh.singleton<_i361.Dio>(() => aPIService.dio);
    gh.factory<_i345.DataSource>(() => _i780.RemoteDataSource(gh<_i361.Dio>()));
    gh.factory<_i541.UserRepository>(
        () => _i890.UserRepositoryImpl(gh<_i345.DataSource>()));
    gh.factory<_i201.GetUserUseCase>(
        () => _i201.GetUserUseCase(gh<_i541.UserRepository>()));
    gh.factory<_i320.HomeBloc>(
        () => _i320.HomeBloc(gh<_i201.GetUserUseCase>()));
    return this;
  }
}

class _$APIService extends _i315.APIService {}
