import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true, // Enable Material 3
    fontFamily: "SpotifyMix",
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      // secondary: AppColors.secondary,
      error: AppColors.error,
      surface: AppColors.surface,
    ),
    scaffoldBackgroundColor: AppColors.backgroundLight,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundLight,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.textLight),
      bodyMedium: TextStyle(color: AppColors.textLight),
      bodySmall: TextStyle(color: AppColors.textGrey),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        fixedSize: const Size(double.infinity, 48),
        padding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
      ),
    ),
    cardTheme: CardTheme(
      elevation: 0,
      color: AppColors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(
          color: AppColors.divider,
          width: 1,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.divider.withOpacity(0.1),
        foregroundColor: AppColors.textDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        side: const BorderSide(
          color: AppColors.divider,
          width: 1,
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        fixedSize: const Size(double.infinity, 48),
        padding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "SpotifyMix",
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.dark,
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      error: AppColors.error,
      surface: AppColors.backgroundDark,
    ),
    scaffoldBackgroundColor: AppColors.backgroundDark,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundDark,
      foregroundColor: AppColors.textDark,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.textDark),
      bodyMedium: TextStyle(color: AppColors.textDark),
      bodySmall: TextStyle(color: AppColors.textGrey),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        fixedSize: const Size(double.infinity, 48),
        padding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
      ),
    ),
  );
}
