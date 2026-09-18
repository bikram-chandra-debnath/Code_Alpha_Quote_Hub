import 'package:flutter/material.dart';
import 'package:quote_hub/core/constants/colors.dart';
import 'package:quote_hub/core/utils/theme/widgets_theme/elevated_button_theme.dart';
import 'package:quote_hub/core/utils/theme/widgets_theme/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    disabledColor: AppColors.grey,
    scaffoldBackgroundColor: AppColors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
  );

  // Dark Theme

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    disabledColor: AppColors.grey,
    scaffoldBackgroundColor: AppColors.black,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
