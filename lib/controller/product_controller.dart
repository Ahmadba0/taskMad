// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/application_style/app_images.dart';
import 'package:tasktwo/core/services/services.dart';
import 'package:tasktwo/main.dart';

class ProductController extends GetxController {
  ///
  List images = [
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
  ];
  MyServices myServices = Get.find();
  Color? primaryColor;
  bool isInterior = false;
  PageController Pcontroller = PageController();
  String titleInterior = '';
  String titleLand = '';
  String nameInterior = '';
  String nameLand = '';
  String desc1 = '';
  String desc2 = '';
  String desc3 = '';
  String detailsTitle = '';
  String detailsInterior = '';
  String detailsLand = '';
  int color = 0;
  int week = 0;

  ///

  ///
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    isInterior = Get.arguments['isInterior'];
    print(isInterior);
    isInterior == true
        ? primaryColor =
            theme == 'light' ? AppColors.blueHosue : AppColors.blue7_176
        : primaryColor = theme == 'light'
            ? AppColors.greenOneHosue
            : AppColors.greenHosueBlackMOde;

    if (isInterior) {
      titleInterior = Get.arguments['titleInterior'];
      nameInterior = Get.arguments['nameInterior'];
      desc1 = Get.arguments['desc1'];
      desc2 = Get.arguments['desc2'];
      desc3 = Get.arguments['desc3'];
      desc3 = Get.arguments['desc3'];
      detailsInterior = Get.arguments['detailsInterior'];
      color = Get.arguments['color'];
      week = Get.arguments['week'];
    } else {
      titleLand = Get.arguments['titleLand'];
      nameLand = Get.arguments['nameLand'];
      desc1 = Get.arguments['desc1'];
      desc2 = Get.arguments['desc2'];
      desc3 = Get.arguments['desc3'];
      desc3 = Get.arguments['desc3'];
      detailsLand = Get.arguments['detailsLand'];
      color = Get.arguments['color'];
      week = Get.arguments['week'];
    }
  }
}
