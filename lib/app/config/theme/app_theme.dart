import 'package:flutter/material.dart';
import 'package:flutter_cs_api/app/config/theme/color_app.dart';

class AppTheme {
  static ThemeData darkMode = ThemeData(
    scaffoldBackgroundColor: ColorsApp.background,
    useMaterial3: false,
    appBarTheme: AppBarTheme(
      color: ColorsApp.transparent,
      elevation: 0,
    ),
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      primary: ColorsApp.primary,
      secondary: ColorsApp.backgroundCard,
    ),
    dividerTheme: DividerThemeData(color: ColorsApp.white),
    cardTheme: CardTheme(
      color: ColorsApp.backgroundCard,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );
}
