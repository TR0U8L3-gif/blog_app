import 'package:blog_app/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static InputBorder _border({Color? color}) => OutlineInputBorder(
    borderSide: BorderSide(
      color: color ?? ColorPalette.borderColor,
      width: 3,
    ),
    borderRadius: BorderRadius.circular(12),
  );
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: ColorPalette.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(24),
      enabledBorder: _border(),
      focusedBorder: _border(color: ColorPalette.gradient2),
    ),
  );
}