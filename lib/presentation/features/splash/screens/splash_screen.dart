import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/router/app_router.dart';
import '../../../core/values/app_assets.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      context.replaceRoute(const HomeRoute());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, box) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SizedBox(
            height: box.maxHeight,
            width: box.maxWidth,
            child: Center(
              child: Image.asset(AppAssets.splashImage),
            ),
          ),
        );
      },
    );
  }
}
