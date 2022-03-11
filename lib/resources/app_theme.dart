// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';
import 'package:native_splash_video/resources/app_colors.dart';
import '../utils/utils.dart';




class AppTheme {

  static ThemeData light() {
    return ThemeData.light().copyWith(
      primaryColor: AppColors.primaryColorLight,
      primaryColorDark: AppColors.buttonColor,
      primaryColorLight: AppColors.primaryColorLight,
      errorColor: AppColors.errorColorLight,
      scaffoldBackgroundColor: AppColors.scaffoldColorLight,
      disabledColor: Colors.white.withOpacity(0.15),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Colors.white,
      ),
      colorScheme: const ColorScheme.light().copyWith(
        primary: AppColors.primaryColorLight,
        secondary: AppColors.secondaryColorLight,
        error: AppColors.errorColorLight,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(32),
          fontWeight: FontWeight.w900,
          letterSpacing: -1.5,
          color: Colors.black,
        ),
        headline2: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(28),
          fontWeight: FontWeight.w800,
          letterSpacing: -1.0,
          color: Colors.black,
        ),
        headline3: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(24),
          fontWeight: FontWeight.w800,
          letterSpacing: -0.75,
          color: Colors.black,
        ),
        headline4: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(20),
          fontWeight: FontWeight.w800,
          letterSpacing: -0.50,
          color: Colors.black,
        ),
        headline5: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(18),
          fontWeight: FontWeight.w800,
          letterSpacing: -0.5,
          color: Colors.black,
        ),

        headline6: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(16),
          fontWeight: FontWeight.w700,
          letterSpacing: -0.25,
          color: Colors.black,
        ),
        subtitle1: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(16),
          letterSpacing: 0.15,
          color: Colors.black,
        ),
        subtitle2: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(14),
          letterSpacing: 0.1,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        caption: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(12),
          color: Colors.black,
        ),
        bodyText1: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(16),
          letterSpacing: 0.5,
          color: Colors.black,
        ),
        bodyText2: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(14),
          letterSpacing: 0.25,
          color: Colors.black,
        ),

        //BUTTON
        button: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(11),
          letterSpacing: 1.25,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData.dark().copyWith(
      primaryColor:AppColors.primaryColorDark,
      primaryColorDark: AppColors.primaryColorDark,
      primaryColorLight: AppColors.secondaryColorDark,
      errorColor: AppColors.errorColorDark,
      scaffoldBackgroundColor: AppColors.scaffoldColorDark,
      disabledColor: Colors.white.withOpacity(0.15),
      splashColor: Colors.white.withOpacity(0.50),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Colors.white,
      ),
      colorScheme: const ColorScheme.dark().copyWith(
        primary: AppColors.primaryColorDark,
        secondary: AppColors.secondaryColorDark,
        error: AppColors.errorColorDark,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: rf(32),
          fontWeight: FontWeight.w900,
          letterSpacing: -1.5,
        ),
        headline2: TextStyle(
          fontSize: rf(28),
          fontWeight: FontWeight.w800,
          letterSpacing: -1.0,
        ),
        headline3: TextStyle(
          fontSize: rf(24),
          fontWeight: FontWeight.w800,
          letterSpacing: -0.75,
        ),
        headline4: TextStyle(
          fontSize: rf(20),
          fontWeight: FontWeight.w800,
          letterSpacing: -0.50,
        ),
        headline5: TextStyle(
          fontSize: rf(18),
          fontWeight: FontWeight.w800,
          letterSpacing: -0.5,
        ),

        headline6: TextStyle(
          fontSize: rf(16),
          fontWeight: FontWeight.w700,
          letterSpacing: -0.25,
        ),
        subtitle1: TextStyle(
          fontSize: rf(16),
          letterSpacing: 0.15,
        ),
        subtitle2: TextStyle(
          fontSize: rf(14),
          letterSpacing: 0.1,
          fontWeight: FontWeight.w600,
        ),
        caption: TextStyle(
          fontSize: rf(12),
        ),
        bodyText1: TextStyle(
          fontSize: rf(16),
          letterSpacing: 0.5,
        ),
        bodyText2: TextStyle(
          fontSize: rf(14),
          letterSpacing: 0.25,
        ),

        //BUTTON
        button: TextStyle(
          fontSize: rf(11),
          letterSpacing: 1.25,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
    );
  }
}
