import 'package:flutter/material.dart';

class AppColors {
  // Brand Colors
  static const Color mainYellow = Color(0xFFF3F5B1);
  static const Color mainBlue = Color(0xFFDCE4FF);
  static const Color mainPink = Color(0xFFFFE1F9);

  // Primary Colors
  static const Color primaryOrange = Color(0xFFFF7F5C);
  static const Color primaryGold = Color(0xFFE9C064);
  static const Color primaryBlue = Color(0xFF94A6FF);

  // Background Colors
  static const Color bgPrimary = Color(0xFFFFFDF7);
  static const Color bgSecondary = Color(0xFFFFFFFF);
  static const Color bgBlue = Color(0xFFF0F3FF);
  static const Color bgPink = Color(0xFFFFF0F9);
  static const Color bgYellow = Color(0xFFFFFDE1);

  // Text Colors
  static const Color textPrimary = Color(0xFF2C3D4F);
  static const Color textSecondary = Color(0xFF6B7C93);
  static const Color textTertiary = Color(0xFFA3AEBF);
  static const Color textInvert = Color(0xFFFFFFFF);

  // Category Colors
  static const Map<String, Color> categoryColors = {
    'salad': Color(0xFF9DD0FF),
    'bulkup': Color(0xFFFFB88A),
    'hot': Color(0xFFFFA7A7),
    'dessert': Color(0xFFFFB5E6),
    'vegan': Color(0xFFA5E9C8),
  };

  static const Map<String, Color> categoryBgColors = {
    'salad': Color(0xFFF0F8FF),
    'bulkup': Color(0xFFFFF4ED),
    'hot': Color(0xFFFFF0F0),
    'dessert': Color(0xFFFFF0F7),
    'vegan': Color(0xFFF0FFF6),
  };
} 