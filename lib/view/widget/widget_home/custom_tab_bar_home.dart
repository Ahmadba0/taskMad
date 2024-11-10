// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/home_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

customTabBarHome(controller) {
  return TabBar(
    tabAlignment: TabAlignment.center,
    indicatorColor: controller.tabController.index == 0
        ? AppColors.cyanHosue
        : controller.tabController.index == 1
            ? AppColors.greenTwoHosue
            : AppColors.white1,
    indicatorSize: TabBarIndicatorSize.label,
    labelPadding:
        controller.myServices.sharedPreferences.getString('lang') == 'en'
            ? null
            : EdgeInsets.symmetric(horizontal: 32.w),
    indicatorWeight: 5,
    unselectedLabelStyle: TextStyle(
        color: AppColors.greySearch,
        fontFamily:
            controller.myServices.sharedPreferences.getString('lang') == 'en'
                ? 'RowdiesBold'
                : 'SwisraBold',
        fontSize: 12.sp,
        fontWeight: FontWeight.w300),
    labelStyle: TextStyle(
        color: AppColors.white1,
        // fontFamily: 'RowdiesBold',
        fontFamily:
            controller.myServices.sharedPreferences.getString('lang') == 'en'
                ? 'RowdiesBold'
                : 'SwisraBold',
        fontSize: 12.sp,
        fontWeight: FontWeight.w700),
    controller: controller.tabController,
    tabs: [
      Tab(text: "28".tr),
      Tab(text: "29".tr),
      Tab(text: "30".tr),
    ],
  );
}
