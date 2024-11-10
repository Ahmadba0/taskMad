import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/localization/changeLocal.dart';
import 'package:tasktwo/core/services/services.dart';
import 'package:tasktwo/main.dart';

class ProfileController extends GetxController {
  //
  LocaleController localeController = Get.find();
  Color? primaryColor;
  Color? secondColor;
  MyServices myServices = Get.find();
  //

  //
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print('controller profile');
    primaryColor = AppColors.blueHosue;

    secondColor = AppColors.white1;
  }
}
