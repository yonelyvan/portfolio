import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF1D1D1F);
  static const Color secondary = Color(0xFF2C2C2E);
  static const Color accent = Color(0xFF0A84FF);
  static const Color background = Color(0xFFFFFFFF);
  static const Color text = Color(0xFF1C1C1E);
}

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(fontSize: 16),
    ),
    fontFamily: 'Helvetica',
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.accent),
    useMaterial3: true,
  );
}