import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/router/app_router.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      context.replaceRoute(HomeRoute());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, box) {
        return Scaffold(
          body: SizedBox(
            height: box.maxHeight,
            width: box.maxWidth,
            child: Center(
              child: FlutterLogo(size: box.smallest.shortestSide * 0.8),
            ),
          ),
        );
      },
    );
  }
}
