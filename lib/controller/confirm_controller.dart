import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/services/services.dart';
import 'package:tasktwo/main.dart';

class ConfirmController extends GetxController {
  bool isInterior = false;
  Color? primaryColor;
  TextEditingController? sizeController;
  String? selectedColor;
  MyServices myServices = Get.find();
  //
  onChangeColor(value) {
    selectedColor = value;
    update();
  }

  //
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    isInterior = Get.arguments['isInterior'];
    isInterior == true
        ? primaryColor =
            theme == 'light' ? AppColors.blueHosue : AppColors.blue7_176
        : primaryColor = theme == 'light'
            ? AppColors.greenOneHosue
            : AppColors.greenHosueBlackMOde;
    sizeController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    sizeController!.dispose();
  }
}
