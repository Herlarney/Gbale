import 'package:flutter/material.dart';
import 'package:gbale/core/constants/gbale_colors.dart';

/// You should assign the textStyle as so => 'textStyle: Theme.of(context).textStyle.textStyleNameAccordingToTheme' e.g Theme.of(context).colorScheme.bodyLarge
/// 
class GbaleThemeManager {
  GbaleThemeManager._();

  static String get _fontFamily => 'Lexend Mega';

static ThemeData lightTheme = _themeData(_lightColorScheme);




 static final ColorScheme _lightColorScheme = const ColorScheme.light()
      .copyWith(
          primary: GbaleColors.primary,
          secondary: GbaleColors.secondaryColor,
          error: GbaleColors.red,
          background: GbaleColors.lightBackgroundColor,
          inverseSurface: GbaleColors.secondaryColor.shade400,
          surface: GbaleColors.secondaryTextColor,
          tertiary: GbaleColors.purple,
          onBackground: GbaleColors.infoColor,
          onTertiary: GbaleColors.yellow);

 static ThemeData _themeData(ColorScheme colorScheme) => ThemeData(
      scaffoldBackgroundColor: colorScheme.background,
      colorScheme: colorScheme,
      textTheme: _textTheme(colorScheme),
      iconTheme: _iconTheme(colorScheme),
      fontFamily: _fontFamily,
      appBarTheme: _appBarTheme(colorScheme),
      disabledColor: colorScheme.inverseSurface,
      brightness: colorScheme.brightness,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
       backgroundColor: colorScheme.background,
      ));



static AppBarTheme _appBarTheme(ColorScheme colorScheme) => AppBarTheme(
        backgroundColor: colorScheme.background,
        iconTheme: _iconTheme(colorScheme),
        actionsIconTheme: _iconTheme(colorScheme),
      );

  static IconThemeData _iconTheme(ColorScheme colorScheme) => IconThemeData(
        color: colorScheme.primary,
      );

       static TextTheme _textTheme(ColorScheme colorScheme) => TextTheme(
        displayLarge: TextStyle(
          fontSize: 96,
          color: colorScheme.onPrimary,
          fontWeight: FontWeight.w500,
         
        ),
        displayMedium: TextStyle(
          fontSize: 72,
          color: colorScheme.onPrimary,
          fontWeight: FontWeight.w500,
        ),
        displaySmall: TextStyle(
          fontSize: 56,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          fontSize: 40,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          fontSize: 32,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          fontSize: 28,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          fontSize: 24,
          color: colorScheme.surface,
          
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
          fontSize: 20,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: TextStyle(
          fontSize: 16,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
      );
}
