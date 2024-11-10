import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/application_style/app_images.dart';
import 'package:tasktwo/core/services/services.dart';
import 'package:tasktwo/main.dart';

class BusinessExhibitionController extends GetxController {
  MyServices myServices = Get.find();
  List listImages = [
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
  ];
  Color? primaryColor;
  Color? secondColor;
  Color? backColor;

  //
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    primaryColor = theme == 'light' ? AppColors.blueHosue : AppColors.blue7_176;

    secondColor = theme == 'light' ? AppColors.white1 : AppColors.black;

    backColor = AppColors.blueHosue;
  }
}
