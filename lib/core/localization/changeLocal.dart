// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_font.dart';
import 'package:tasktwo/core/services/services.dart';

class LocaleController extends GetxController {
  //--for language
  Locale? language;
  MyServices myServices = Get.find();

  //--for theme
  ThemeData appTheme = englishThemeLight;
  // ThemeData? appTheme;

  //

  changeLanguage(String languageCode) async {
    Locale locale = Locale(languageCode);
    myServices.sharedPreferences.setString("lang", languageCode);
    //for theme
    if (languageCode == 'ar') {
      myServices.sharedPreferences.getString('theme') == 'night'
          ? appTheme = arabicThemeDark
          : appTheme = arabicThemeLight;
    } else if (languageCode == 'en') {
      myServices.sharedPreferences.getString('theme') == 'night'
          ? appTheme = englishThemeDark
          : appTheme = englishThemeLight;
    }
    Get.changeTheme(appTheme);
    //end for theme
    Get.updateLocale(locale);
    //
    print('----------');
    print(languageCode);
  }

  changeTheme(String mode) async {
    print('----------');
    var langcode = "${myServices.sharedPreferences.getString('lang')}";
    print(langcode);

    if (mode == 'night') {
      print('*n*');
      // myServices.sharedPreferences.setBool("light", false);
      myServices.sharedPreferences.getString('lang') == 'ar'
          ? appTheme = arabicThemeDark
          : appTheme = englishThemeDark;
    } else if (mode == 'light') {
      print('*l*');
      // myServices.sharedPreferences.setBool("light", true);
      myServices.sharedPreferences.getString('lang') == 'ar'
          ? appTheme = arabicThemeLight
          : appTheme = englishThemeLight;
    }

    Get.changeTheme(appTheme);

    myServices.sharedPreferences.setString("theme", mode);

    Get.forceAppUpdate();

    print(mode);
    print(myServices.sharedPreferences.getString("theme"));
  }

  @override
  void onInit() {
    super.onInit();

    if (myServices.sharedPreferences.getString("lang") == "ar") {
      language = const Locale("ar");
      appTheme = myServices.sharedPreferences.getString('theme') == 'night'
          ? arabicThemeDark
          : arabicThemeLight;
    } else if (myServices.sharedPreferences.getString("lang") == "en") {
      language = const Locale("en");
      appTheme = myServices.sharedPreferences.getString('theme') == 'night'
          ? englishThemeDark
          : englishThemeLight;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      myServices.sharedPreferences
          .setString('lang', Get.deviceLocale!.languageCode);
      appTheme = englishThemeLight;
      myServices.sharedPreferences.setString('theme', 'light');
    }

    print('lang: ${myServices.sharedPreferences.getString('lang')}');
    print('theme: ${myServices.sharedPreferences.getString('theme')}');
  }
}
