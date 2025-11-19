import 'package:flutter/material.dart';
import 'package:portfolio/ux/shared/resources/app_colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.black,
    colorScheme: const ColorScheme.light(
      primary: AppColors.black,
      secondary: AppColors.white,
      background: AppColors.white,
      surface: AppColors.white,
      onPrimary: AppColors.white,
      onSecondary: AppColors.black,
      onBackground: AppColors.black,
      onSurface: AppColors.black,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 28, fontWeight: FontWeight.w700, color: AppColors.black),
      headlineLarge: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.black),
      bodyLarge: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.black),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.black,
    primaryColor: AppColors.white,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.white,
      secondary: AppColors.greyInputBackground,
      background: AppColors.black,
      surface: AppColors.black,
      onPrimary: AppColors.black,
      onSecondary: AppColors.black,
      onBackground: AppColors.white,
      onSurface: AppColors.white,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 28, fontWeight: FontWeight.w700, color: AppColors.white),
      headlineLarge: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.white),
      bodyLarge: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.white),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );
}
