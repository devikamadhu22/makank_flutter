import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../values/app_constants.dart';
import 'app_button_theme_data.dart';
import 'app_color_scheme.dart';
import 'app_input_theme.dart';

class AppTheme {
  static ThemeData light() {
    var themeData = ThemeData(
      useMaterial3: false,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColorScheme.surfaceColorLight,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedLabelStyle:
              TextStyle(color: AppColorScheme.primaryContainerColorLight),
          unselectedLabelStyle:
              TextStyle(color: AppColorScheme.primaryContainerColorLight),
          selectedItemColor: AppColorScheme.primaryContainerColorLight,
          unselectedItemColor: AppColorScheme.primaryContainerColorLight),
      primarySwatch: generateMaterialColor(AppColorScheme.primaryColorLight),
      primaryColor: AppColorScheme.primaryColorLight,
      hintColor: AppColorScheme.primaryContainerColorLight.withOpacity(0.7),
      cardColor: AppColorScheme.backgroundColorLight,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColorScheme.primaryColorLight,
        primaryContainer: AppColorScheme.primaryContainerColorLight,
        secondary: AppColorScheme.secondaryColorLight,
        error: AppColorScheme.error,
        surface: AppColorScheme.surfaceColorLight,
        onError: AppColorScheme.onPrimaryColorLight,
        onPrimary: AppColorScheme.onPrimaryColorLight,
        onSecondary: AppColorScheme.onPrimaryColorLight,
        onSurface: AppColorScheme.onSurfaceColorLight,
      ),
      iconTheme:
          const IconThemeData(color: AppColorScheme.onBackgroundColorLight),
      listTileTheme: ListTileThemeData(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.cornerRadius)),
        tileColor: AppColorScheme.backgroundColorLight,
      ),
      dialogTheme: DialogTheme(
          backgroundColor: AppColorScheme.backgroundColorLight,
          shape:
              RoundedRectangleBorder(borderRadius: AppConstants.borderRadius)),
      expansionTileTheme: const ExpansionTileThemeData(
          iconColor: AppColorScheme.primaryColorLight,
          collapsedIconColor: AppColorScheme.primaryContainerColorLight),
      outlinedButtonTheme: AppButtonThemeData.outlinedButtonThemeData(),
      elevatedButtonTheme: AppButtonThemeData.elevatedButtonThemeData(),
      textButtonTheme: AppButtonThemeData.textButtonThemeData(),
      scaffoldBackgroundColor: AppColorScheme.backgroundColorLight,
      inputDecorationTheme: AppInputTheme.inputTheme,
      dropdownMenuTheme:
          DropdownMenuThemeData(inputDecorationTheme: AppInputTheme.inputTheme),
      canvasColor: AppColorScheme.backgroundColorLight,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColorScheme.primaryColorLight),
      appBarTheme: const AppBarTheme(
          toolbarHeight: 80,
          color: AppColorScheme.primaryColorLight,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          // brightness: Brightness.light,
          titleTextStyle: TextStyle(
              color: AppColorScheme.onPrimaryColorLight, fontSize: 20),
          actionsIconTheme: IconThemeData(
              color: AppColorScheme.onPrimaryColorLight, size: 25),
          elevation: 0,
          toolbarTextStyle:
              TextStyle(color: AppColorScheme.primaryColorLight, fontSize: 20)),
    );
    return themeData;
  }
}
