import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:recipe_app/appexports.dart';


String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.teal600,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.00),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.deepOrange300,
            width: 1.00,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.00),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyMedium: TextStyle(
          color: appTheme.gray500,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray500,
          fontSize: 11.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.blueGray700,
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 11.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.blueGray700,
          fontSize: 20.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.deepOrange300,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light();
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF8B8B8B);
  Color get blueGray40001 => Color(0XFF71B1A1);
  Color get blueGray700 => Color(0XFF525252);

  // DeepOrange
  Color get deepOrange300 => Color(0XFFD89651);

  // Gray
  Color get gray500 => Color(0XFFA9A9A9);
  Color get gray900 => Color(0XFF121212);

  // Orange
  Color get orange100 => Color(0XFFFFE1B3);
  Color get orange400 => Color(0XFFFFAC2F);

  // Teal
  Color get teal600 => Color(0XFF119475);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
