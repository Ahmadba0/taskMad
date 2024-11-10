import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/application_style/app_images.dart';
import 'package:tasktwo/core/services/services.dart';
import 'package:tasktwo/main.dart';

class SearchhController extends GetxController {
  TextEditingController? searchController;
  MyServices myServices = Get.find();
  List listImagesHome = [
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.farmm,
    AppImages.home,
    AppImages.farmm,
    AppImages.home,
    AppImages.farmm,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
    AppImages.home,
  ];
  List listImagesFarm = [
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
    AppImages.farmm,
  ];
  List listShowImages = [];

  bool isCheckedBedRoom = false;
  bool isCheckedKitchens = false;
  bool isCheckedSettingRooms = false;
  bool isCheckedFloor = false;
  bool isCheckedgarden = false;

  Color? primaryColor;
  bool? isInterior;

  changeSelectedValueBedRoom(value) {
    isCheckedBedRoom = false;
    isCheckedKitchens = false;
    isCheckedSettingRooms = false;
    isCheckedFloor = false;
    isCheckedgarden = false;
    isCheckedBedRoom = value;
    listShowImages.clear();
    listShowImages.addAll(listImagesHome);
    Get.back();
    update();
  }

  changeSelectedValueKitchens(value) {
    isCheckedBedRoom = false;
    isCheckedKitchens = false;
    isCheckedSettingRooms = false;
    isCheckedFloor = false;
    isCheckedgarden = false;
    isCheckedKitchens = value;
    listShowImages.clear();
    listShowImages.addAll(listImagesFarm);
    Get.back();
    update();
  }

  changeSelectedValueSettingRooms(value) {
    isCheckedBedRoom = false;
    isCheckedKitchens = false;
    isCheckedSettingRooms = false;
    isCheckedFloor = false;
    isCheckedgarden = false;
    isCheckedSettingRooms = value;
    listShowImages.clear();
    listShowImages.addAll(listImagesHome);
    Get.back();
    update();
  }

  changeSelectedValueFloor(value) {
    isCheckedBedRoom = false;
    isCheckedKitchens = false;
    isCheckedSettingRooms = false;
    isCheckedFloor = false;
    isCheckedgarden = false;
    isCheckedFloor = value;
    listShowImages.clear();
    listShowImages.addAll(listImagesFarm);
    Get.back();
    update();
  }

  changeSelectedValueGarden(value) {
    isCheckedBedRoom = false;
    isCheckedKitchens = false;
    isCheckedSettingRooms = false;
    isCheckedFloor = false;
    isCheckedgarden = false;
    isCheckedgarden = value;
    listShowImages.clear();
    listShowImages.addAll(listImagesHome);
    Get.back();
    update();
  }

  //
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    isInterior = Get.arguments['isInterior'];
    isInterior!
        ? primaryColor =
            theme == 'night' ? AppColors.blue7_176 : AppColors.blueHosue
        : primaryColor =
            theme == 'night' ? AppColors.blue7_176 : AppColors.greenOneHosue;
    // primaryColor = theme == 'light' ? AppColors.blue7_176 : null;
    listShowImages.addAll(listImagesFarm);
    listShowImages.addAll(listImagesHome);
    searchController = TextEditingController();
  }
}
