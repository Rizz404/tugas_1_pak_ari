import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppColors {
  // Warna utama
  static const Color primary = Color(0xFFD0574E);
  static const Color primaryLight = Color(0xFFE57373);
  static const Color primaryDark = Color(0xFFA83E3E);

  // Warna aksen
  static const Color accent = Color(0xFF4ECDC4);
  static const Color accentLight = Color(0xFF7EDFD9);
  static const Color accentDark = Color(0xFF2B9D94);

  // Warna latar belakang
  static const Color background = Color(0xFFF5F5F5);
  static const Color surface = Colors.white;

  // Warna teks
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);

  // Warna status
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFC107);
  static const Color error = Color(0xFFE53935);
}

ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primary,
  primaryColorLight: AppColors.primaryLight,
  primaryColorDark: AppColors.primaryDark,
  hintColor: AppColors.accent,
  scaffoldBackgroundColor: AppColors.background,
  textTheme: const TextTheme(
    displayLarge: TextStyle(color: AppColors.textPrimary),
    displayMedium: TextStyle(color: AppColors.textPrimary),
    displaySmall: TextStyle(color: AppColors.textPrimary),
    headlineMedium: TextStyle(color: AppColors.textPrimary),
    headlineSmall: TextStyle(color: AppColors.textPrimary),
    titleLarge: TextStyle(color: AppColors.textPrimary),
    titleMedium: TextStyle(color: AppColors.textSecondary),
    titleSmall: TextStyle(color: AppColors.textSecondary),
    bodyLarge: TextStyle(color: AppColors.textPrimary),
    bodyMedium: TextStyle(color: AppColors.textSecondary),
  ),
  appBarTheme: const AppBarTheme(
    color: AppColors.primary,
    systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
  colorScheme: const ColorScheme(
    primary: AppColors.primary,
    secondary: AppColors.accent,
    surface: AppColors.surface,
    error: AppColors.error,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onSurface: AppColors.textPrimary,
    onError: Colors.white,
    brightness: Brightness.light,
  ).copyWith(surface: AppColors.background),
);
