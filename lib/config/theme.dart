import 'package:flutter/material.dart';
import '../features/shared/constants/app_colors.dart';

class AppTheme {
  // Spacing
  static const double spacingXS = 4.0;
  static const double spacingS = 8.0;
  static const double spacingM = 16.0;
  static const double spacingL = 24.0;
  static const double spacingXL = 32.0;
  static const double spacingXXL = 40.0;

  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.mainYellow,
    scaffoldBackgroundColor: AppColors.bgPrimary,
    
    // AppBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.bgSecondary,
      foregroundColor: AppColors.textPrimary,
      elevation: 0,
    ),

    // Text Theme
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: AppColors.textPrimary,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: AppColors.textSecondary,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: AppColors.textTertiary,
      ),
    ),

    // Button Themes
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.mainYellow,
        foregroundColor: AppColors.textPrimary,
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: AppColors.textPrimary.withOpacity(0.1),
            width: 1.5,
          ),
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.bgSecondary,
        foregroundColor: AppColors.textPrimary,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: AppColors.textPrimary.withOpacity(0.1),
            width: 1.5,
          ),
        ),
      ),
    ),

    // Card Theme
    cardTheme: CardTheme(
      color: AppColors.bgSecondary,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(
          color: Colors.white,
          width: 1.5,
        ),
      ),
      margin: const EdgeInsets.all(spacingM),
    ),
  );
} 