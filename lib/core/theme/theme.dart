import 'package:blog_app/core/theme/color_palette.dart';
import 'package:blog_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static InputBorder _border({Color? color}) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color ?? ColorPalette.borderColor,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(12),
      );
  static final darkThemeMode = ThemeData.from(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: getMaterialColor(ColorPalette.gradient2),
      brightness: Brightness.dark,
    ),
  ).copyWith(
    scaffoldBackgroundColor: ColorPalette.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(24),
      enabledBorder: _border(),
      focusedBorder: _border(color: ColorPalette.gradient2),
      errorBorder: _border(color: ColorPalette.errorColor),
      focusedErrorBorder: _border(color: ColorPalette.gradient2),
      errorStyle: const TextStyle(fontSize: kFontSizeSmall),
    ),
  );
}

MaterialColor getMaterialColor(Color color) {
  final red = color.red;
  final green = color.green;
  final blue = color.blue;

  final shades = <int, Color>{
    50: Color.fromRGBO(red, green, blue, .1),
    100: Color.fromRGBO(red, green, blue, .2),
    200: Color.fromRGBO(red, green, blue, .3),
    300: Color.fromRGBO(red, green, blue, .4),
    400: Color.fromRGBO(red, green, blue, .5),
    500: Color.fromRGBO(red, green, blue, .6),
    600: Color.fromRGBO(red, green, blue, .7),
    700: Color.fromRGBO(red, green, blue, .8),
    800: Color.fromRGBO(red, green, blue, .9),
    900: Color.fromRGBO(red, green, blue, 1),
  };

  return MaterialColor(color.value, shades);
}
