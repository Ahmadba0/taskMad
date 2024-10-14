import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomScreenController extends GetxController {
  ///
  ///---var
  ///
  bool isLanguageArabic = false;
  bool isLanguageEnglish = true;
  double widthOfScreen = 0;
  bool isSmall = false;

  ///
  ///---my method
  ///
  ///#####################
  ///#####################
  ///#####################
  ///this method for language button and how to change color when i press on it
  ///
  ///
  onTapToChangeLanguage(String language) {
    if (language == 'AR') {
      isLanguageArabic = true;
      isLanguageEnglish = false;
      update();
    } else if (language == 'EN') {
      isLanguageArabic = false;
      isLanguageEnglish = true;
      update();
    }
  }

  ///
  ///
  ///
  getWidth(context) {
    widthOfScreen = MediaQuery.of(context).size.width;
    if (widthOfScreen < 600) {
      isSmall = true;
    } else {
      isSmall = false;
    }
    update();
  }
}
