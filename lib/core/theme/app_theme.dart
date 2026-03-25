import 'package:flutter/material.dart';

import 'package:auc_app/core/theme/app_colors.dart';
import 'package:auc_app/core/theme/app_typography.dart';

class AppTheme {
  static ThemeData light() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
    ).copyWith(secondary: AppColors.secondary, tertiary: AppColors.tertiary);

    final baseTextTheme = Typography.englishLike2018.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: AppTypography.textTheme(baseTextTheme),
      fontFamily: AppTypography.fontFamily,
      scaffoldBackgroundColor: colorScheme.surface,
    );
  }

  static ThemeData dark() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.dark,
    ).copyWith(secondary: AppColors.secondary, tertiary: AppColors.tertiary);

    final baseTextTheme = Typography.englishLike2018.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: AppTypography.textTheme(baseTextTheme),
      fontFamily: AppTypography.fontFamily,
      scaffoldBackgroundColor: colorScheme.surface,
    );
  }
}
