// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

ThemeData englishThemeDark = ThemeData(
  primaryColor: AppColors.black,
  primaryColorDark: AppColors.black1,
  primaryColorLight: AppColors.blue4_164,
  scaffoldBackgroundColor: AppColors.black,
  textTheme: TextTheme(
    //---1
    displayLarge: TextStyle(
      color: AppColors.white1,
      fontFamily: 'UrbaneBold',
      fontSize: 30,
      height: 1.2,
    ),
    //---2
    displayMedium: TextStyle(
      color: AppColors.blue5_207,
      fontFamily: 'UrbaneBold',
      fontSize: 14,
      height: 1.2,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Urbane',
      color: AppColors.blue5_207,
      fontSize: 36,
      height: 1.2,
      fontWeight: FontWeight.w900,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Urbane',
      color: AppColors.blue5_207,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Urbane',
      color: AppColors.blue4_164,
      fontSize: 36,
      height: 1.2,
      fontWeight: FontWeight.w900,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Urbane',
      color: AppColors.white1,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  ),
);

ThemeData arabicThemeDark = ThemeData(
  primaryColor: AppColors.black,
  primaryColorDark: AppColors.black1,
  primaryColorLight: AppColors.blue4_164,
  scaffoldBackgroundColor: AppColors.black,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: AppColors.white1,
      fontFamily: 'SwisraBold',
      fontSize: 30,
      height: 1.2,
    ),
    displayMedium: TextStyle(
      color: AppColors.blue5_207,
      fontFamily: 'SwisraBold',
      fontSize: 14,
      height: 1.2,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Urbane',
      color: AppColors.blue5_207,
      fontSize: 36,
      height: 1.2,
      fontWeight: FontWeight.w900,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Urbane',
      color: AppColors.blue5_207,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'SwisraBold',
      color: AppColors.blue4_164,
      fontSize: 36,
      height: 1.2,
      fontWeight: FontWeight.w900,
    ),
    bodySmall: TextStyle(
      fontFamily: 'SwisraBold',
      color: AppColors.white1,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),

    ///
    ///
  ),
);
//
//------------------------------------------------------
//

ThemeData englishThemeLight = ThemeData(
  primaryColor: AppColors.white1,
  primaryColorDark: AppColors.white1,
  primaryColorLight: AppColors.blue1,
  scaffoldBackgroundColor: AppColors.white1,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: AppColors.black,
      fontFamily: 'UrbaneBold',
      fontSize: 30,
      height: 1.2,
    ),
    displayMedium: TextStyle(
      color: AppColors.blue1,
      fontFamily: 'UrbaneBold',
      fontSize: 14,
      height: 1.2,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Urbane',
      color: AppColors.blue1,
      fontSize: 36,
      height: 1.2,
      fontWeight: FontWeight.w900,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Urbane',
      color: AppColors.black,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Urbane',
      color: AppColors.blue1,
      fontSize: 36,
      height: 1.2,
      fontWeight: FontWeight.w900,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Urbane',
      color: AppColors.black,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  ),
);

ThemeData arabicThemeLight = ThemeData(
  primaryColor: AppColors.white1,
  primaryColorDark: AppColors.white1,
  primaryColorLight: AppColors.blue1,
  scaffoldBackgroundColor: AppColors.white1,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: AppColors.black,
      fontFamily: 'SwisraBold',
      fontSize: 30,
      height: 1.2,
    ),
    displayMedium: TextStyle(
      color: AppColors.blue1,
      fontFamily: 'SwisraBold',
      fontSize: 14,
      height: 1.2,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Urbane',
      color: AppColors.blue1,
      fontSize: 36,
      height: 1.2,
      fontWeight: FontWeight.w900,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Urbane',
      color: AppColors.black,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'SwisraBold',
      color: AppColors.blue1,
      fontSize: 36,
      height: 1.2,
      fontWeight: FontWeight.w900,
    ),
    bodySmall: TextStyle(
      fontFamily: 'SwisraBold',
      color: AppColors.black,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  ),
);
