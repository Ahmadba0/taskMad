import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/application_style/app_images.dart';
import 'package:tasktwo/core/services/services.dart';
import 'package:tasktwo/main.dart';

class CartController extends GetxController {
  MyServices myServices = Get.find();
  List listProductInCart = [
    {
      'image': AppImages.home,
      'name': '60'.tr,
      'sizeAndColor': 'Blue, 50x200',
      'price': '800',
      'count': '01'
    },
    {
      'image': AppImages.home,
      'name': '60'.tr,
      'sizeAndColor': 'Blue, 50x200',
      'price': '800',
      'count': '01'
    },
  ];

  Color? primaryColor;
  Color? secondColor;
  //

  //
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    primaryColor = theme == 'light' ? AppColors.blueHosue : AppColors.blue7_176;

    secondColor = theme == 'light' ? AppColors.white1 : AppColors.black;
  }
}
