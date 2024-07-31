import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'di/injectable.dart';
import 'l10n/app_localizations.dart';
import 'presentation/core/router/app_router.dart';
import 'presentation/core/theme/app_theme.dart';
import 'presentation/core/utils/app_bloc_observer.dart';
import 'presentation/features/home/blocs/home_bloc/home_bloc.dart';
import 'presentation/features/translation/translation_bloc/translation_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  Bloc.observer = AppBlocObserver();
  final dio = getIt.get<Dio>();
  dio.interceptors.add(
    AwesomeDioInterceptor(
      // Disabling headers and timeout would minimize the logging output.
      // Optional, defaults to true
      logRequestTimeout: false,
      logRequestHeaders: false,
      logResponseHeaders: false,

      // Optional, defaults to the 'log' function in the 'dart:developer' package.
      // logger: debugPrint,
    ),
  );
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<TranslationBloc>(
        create: (context) => getIt.get<TranslationBloc>(),
      ),
      BlocProvider<HomeBloc>(
        create: (context) => getIt.get<HomeBloc>(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TranslationBloc, TranslationState>(
      builder: (context, state) {
        return MaterialApp.router(
          title: "Seeroo Sample App",
          routerConfig: _appRouter.config(),
          theme: AppTheme.light(),
          locale: state.locale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
        );
      },
    );
  }
}
