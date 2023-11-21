// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/data_source/data_source.dart' as _i6;
import '../data/data_source/remote_data_source.dart' as _i7;
import '../data/repository/user_repository_impl.dart' as _i9;
import '../data/services/api_service.dart' as _i12;
import '../domain/core/base_constants.dart' as _i3;
import '../domain/repository/user_repository.dart' as _i8;
import '../domain/usecase/get_user_usecase.dart' as _i10;
import '../presentation/features/home/blocs/home_bloc/home_bloc.dart' as _i11;
import '../presentation/features/translation/translation_bloc/translation_bloc.dart'
    as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final aPIService = _$APIService();
    gh.factory<_i3.BaseConstants>(() => _i3.BaseConstants());
    gh.singleton<_i4.Dio>(aPIService.dio);
    gh.factory<_i5.TranslationBloc>(() => _i5.TranslationBloc());
    gh.factory<_i6.DataSource>(() => _i7.RemoteDataSource(gh<_i4.Dio>()));
    gh.factory<_i8.UserRepository>(
        () => _i9.UserRepositoryImpl(gh<_i6.DataSource>()));
    gh.factory<_i10.GetUserUseCase>(
        () => _i10.GetUserUseCase(gh<_i8.UserRepository>()));
    gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(gh<_i10.GetUserUseCase>()));
    return this;
  }
}

class _$APIService extends _i12.APIService {}
