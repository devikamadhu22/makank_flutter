import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  ColorScheme get myColorScheme => Theme.of(this).colorScheme;

  TextTheme get myTextTheme => Theme.of(this).textTheme;
}
