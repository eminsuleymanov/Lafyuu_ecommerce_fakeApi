import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/constants/app_colors.dart';

import 'input_borders.dart';

class AppThemes {
  AppThemes._();

  static ThemeData get appTheme => ThemeData(
      // primarySwatch: AppColors.primaryBlue,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryBlue,
        
      ),
      inputDecorationTheme: InputDecorationTheme(
          border: InputBorders.inputBorder(AppColors.white),
          enabledBorder: InputBorders.inputBorder(AppColors.lightGrey),
          focusedBorder: InputBorders.inputBorder(AppColors.primaryBlue),
        ),
      );
}