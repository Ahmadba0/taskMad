import 'package:flutter/material.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

ThemeData englishTheme = ThemeData(
    fontFamily: "Single_Day",
    textTheme: const TextTheme(
      //-1
      bodyLarge: TextStyle(),
      //-2
      bodyMedium: TextStyle(),
      //-3
      bodySmall: TextStyle(),
      //-4
      displayLarge: TextStyle(
          fontFamily: 'UrbaneBold',
          color: AppColors.black,
          // fontSize: MediaQuery.of(context).size.width >= 360 ? 25 : 36
          fontSize: 30
          //fontWeight: FontWeight.w900,
          ),
      //-5
      displayMedium: TextStyle(
        color: AppColors.blue1,
        fontFamily: 'UrbaneBold',
        fontSize: 14,
        height: 1.2,
        // fontWeight: FontWeight.w700,
      ),
      //-6
      displaySmall: TextStyle(),
      //-7
      headlineLarge: TextStyle(),
      //-8
      headlineMedium: TextStyle(),
      //-9
      headlineSmall: TextStyle(),
      //-10
      labelLarge: TextStyle(),
      //-11
      labelMedium: TextStyle(),
      //-12
      labelSmall: TextStyle(),
      //-13
      titleLarge: TextStyle(),
      //-14
      titleMedium: TextStyle(),
      //-15
      titleSmall: TextStyle(),
    ));
