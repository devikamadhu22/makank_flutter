import 'package:auto_route/auto_route.dart';

import '../../features/home/screens/home_screen.dart';
import '../../features/splash/screens/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page)
      ];
}
