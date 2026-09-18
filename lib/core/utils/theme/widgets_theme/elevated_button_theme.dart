import 'package:flutter/material.dart';
import 'package:quote_hub/core/constants/colors.dart';
import 'package:quote_hub/core/constants/sizes.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.primary,

          padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
          textStyle: const TextStyle(
            fontSize: 16,
            color: AppColors.textWhite,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
  static ElevatedButtonThemeData darkElevatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.primary,
          padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
          textStyle: const TextStyle(
            fontSize: 16,
            color: AppColors.textWhite,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
}
