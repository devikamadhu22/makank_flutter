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
    Future.delayed(const Duration(seconds: 10), () {
      context.replaceRoute(const LoginRoute());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, box) {
        return Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              // Background Image
              Image.asset(
                AppAssets.bgImage,
                fit: BoxFit.cover,
              ),
              // Positioned Icon on top of the background
              Positioned(
                top: 20, // Adjust top position as per the design
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    AppAssets.iconImage,
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
