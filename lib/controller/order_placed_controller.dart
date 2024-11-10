import 'dart:ui';

import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/services/services.dart';
import 'package:tasktwo/main.dart';

class OrderPlacedController extends GetxController {
  bool isInterior = false;
  Color? primaryColor;
  MyServices myServices = Get.find();
  //

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
  }
}
