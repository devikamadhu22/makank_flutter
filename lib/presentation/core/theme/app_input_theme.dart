import 'package:flutter/material.dart';

import '../../core/values/app_constants.dart';
import 'app_color_scheme.dart';

class AppInputTheme {
  static InputDecorationTheme inputTheme = InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.never,
      filled: true,
      fillColor: AppColorScheme.secondaryColorLight,
      iconColor: AppColorScheme.primaryContainerColorLight,
      prefixIconColor: AppColorScheme.primaryContainerColorLight,
      prefixStyle: const TextStyle(
        color: AppColorScheme.primaryContainerColorLight,
      ),
      errorBorder: errorBorder,
      focusedErrorBorder: errorBorder,
      focusedBorder: border,
      enabledBorder: border,
      border: border,
      disabledBorder: border,
      suffixIconColor: AppColorScheme.primaryColorLight,
      errorMaxLines: 3);

  static OutlineInputBorder border = OutlineInputBorder(
      borderRadius: AppConstants.borderRadius * 4,
      borderSide: const BorderSide(color: AppColorScheme.surfaceColorLight));

  static OutlineInputBorder errorBorder = OutlineInputBorder(
    borderRadius: AppConstants.borderRadius * 4,
    borderSide: const BorderSide(color: AppColorScheme.error),
  );
}
