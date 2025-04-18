import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
      surface: AppColors.background,
    ),
    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: AppColors.text,
      displayColor: AppColors.text,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(color: AppColors.text),
      labelStyle: TextStyle(color: AppColors.text),
      floatingLabelStyle: TextStyle(color: AppColors.text),
      helperStyle: TextStyle(color: AppColors.text),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColors.text,
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white), // 👈 applies to all AppBars
    ),
  );
}
