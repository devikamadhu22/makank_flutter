import 'package:flutter/material.dart';

import '../../core/values/app_constants.dart';
import 'app_color_scheme.dart';

class AppButtonThemeData {
  static ElevatedButtonThemeData elevatedButtonThemeData() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(5),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(
              horizontal: AppConstants.defaultPadding,
              vertical: AppConstants.defaultPadding),
        ),
        backgroundColor:
            WidgetStateProperty.all(AppColorScheme.primaryColorLight),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: AppConstants.borderRadius,
          ),
        ),
      ),
    );
  }

  static OutlinedButtonThemeData outlinedButtonThemeData() {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
          elevation: WidgetStateProperty.all(0),
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(
                horizontal: AppConstants.defaultPadding,
                vertical: AppConstants.defaultPadding),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: AppConstants.borderRadius,
            ),
          ),
          side: WidgetStateProperty.all(
            const BorderSide(color: AppColorScheme.primaryColorLight, width: 1),
          )),
    );
  }

  static TextButtonThemeData textButtonThemeData() {
    return TextButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(
              horizontal: AppConstants.defaultPadding,
              vertical: AppConstants.defaultPadding),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: AppConstants.borderRadius,
          ),
        ),
      ),
    );
  }
}
