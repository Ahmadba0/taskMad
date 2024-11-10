import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/services/services.dart';

class WelcomScreenController extends GetxController {
  ///
  ///---var
  ///
  bool? isLanguageArabic;
  bool? isLanguageEnglish;
  double widthOfScreen = 0;
  bool isSmall = false;
  MyServices myServices = Get.find();
  Color? primaryColor;
  Color? secondColor;

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

  //
  @override
  void onInit() {
    print('*-+*-+*-+*-+*-+');
    print(myServices.sharedPreferences.getString('lang'));
    // TODO: implement onInit
    super.onInit();
    isLanguageArabic =
        myServices.sharedPreferences.getString('lang') == 'ar' ? true : false;
    isLanguageEnglish =
        myServices.sharedPreferences.getString('lang') == 'en' ? true : false;
    update();
  }
}
