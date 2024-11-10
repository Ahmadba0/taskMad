import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

ThemeData themeLight = ThemeData.light().copyWith(
  scaffoldBackgroundColor: AppColors.black,
  primaryColor: AppColors.white1,
  //-----------------
  primaryColorLight: AppColors.white1,
  primaryColorDark: AppColors.black,

  textTheme: TextTheme(
    displayLarge: TextStyle(
        fontFamily: 'UrbaneBold',
        color: AppColors.black,
        // fontSize: MediaQuery.of(context).size.width >= 360 ? 25 : 36
        fontSize: 30.sp
        //fontWeight: FontWeight.w900,
        ),
    displaySmall: const TextStyle(
      fontFamily: 'Urbane',
      color: AppColors.blue5_207,
      fontSize: 36,
      height: 1.2,
      fontWeight: FontWeight.w900,
    ),
    bodyLarge: const TextStyle(
      fontFamily: 'Urbane',
      color: AppColors.white2,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  ),
);
ThemeData themeDark = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: AppColors.white1,
  primaryColor: AppColors.black,
  primaryColorLight: AppColors.black,
  primaryColorDark: AppColors.black,
  textTheme: TextTheme(
    displayLarge: TextStyle(
        fontFamily: 'UrbaneBold',
        color: AppColors.white1,
        // fontSize: MediaQuery.of(context).size.width >= 360 ? 25 : 36
        fontSize: 30.sp
        //fontWeight: FontWeight.w900,
        ),
    displaySmall: const TextStyle(
      fontFamily: 'Urbane',
      color: AppColors.blue1,
      fontSize: 36,
      height: 1.2,
      fontWeight: FontWeight.w900,
    ),
    bodyLarge: const TextStyle(
      fontFamily: 'Urbane',
      color: AppColors.black,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  ),
);
