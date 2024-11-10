// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/home_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/screen/business_exhibition.dart';
import 'package:tasktwo/view/screen/profile.dart';
import 'package:tasktwo/view/widget/widget_home/custom_bottom_bar_home.dart';
import 'package:tasktwo/view/widget/widget_home/custom_circul_avatar_home.dart';
import 'package:tasktwo/view/widget/widget_home/custom_pages_in_body_home.dart';
import 'package:tasktwo/view/widget/widget_home/custom_tab_bar_home.dart';
import 'package:tasktwo/view/widget/widget_home/custom_text_form_field_home.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetBuilder<HomeController>(
      builder: (controller) => PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          print('---------------------------------------');
          controller.back();
        },
        child: Scaffold(
          backgroundColor:
              theme == 'light' ? AppColors.white1 : AppColors.black,
          appBar: controller.pageIndex == 1
              ? AppBar(
                  backgroundColor: controller.tabController!.index == 0
                      ? AppColors.blueHosue
                      : controller.tabController!.index == 1
                          ? theme == 'light'
                              ? AppColors.greenOneHosue
                              : AppColors.greenHosueBlackMOde
                          : AppColors.orange,
                  centerTitle: true,
                  automaticallyImplyLeading: false,
                  toolbarHeight: 80.h,

                  ///
                  ///--1
                  ///
                  title: CustomTextFormFieldHome(
                    controllerr: controller.searchController!,
                    color: theme == 'light'
                        ? controller.tabController!.index == 0
                            ? AppColors.blueHosue
                            : controller.tabController!.index == 1
                                ? AppColors.greenOneHosue
                                : AppColors.orange
                        : AppColors.blue5_207,
                  ),

                  ///
                  ///
                  ///
                  actions: [
                    SizedBox(width: 10.w),

                    ///
                    ///--2
                    ///
                    CustomCirculAvatarHome(
                      onPressed: () {},
                      color: theme == 'light'
                          ? controller.tabController!.index == 0
                              ? AppColors.blueHosue
                              : controller.tabController!.index == 1
                                  ? AppColors.greenOneHosue
                                  : AppColors.orange
                          : AppColors.blue5_207,
                    ),

                    ///
                    ///
                    ///
                    SizedBox(width: 10.w),
                  ],

                  ///
                  ///--3
                  ///
                  bottom: customTabBarHome(controller),
                )
              : null,

          ///
          ///--4

          body: controller.pageIndex == 1
              ? CustomPagesInBodyHome()
              // : controller.pageIndex == 2
              //     ? SearchP()
              : controller.pageIndex == 3
                  ? Profile()
                  : BusinessExhibition(),

          ///
          ///--5
          ///
          bottomNavigationBar: CustomBottomBarHome(),

          ///
          ///
          ///
        ),
      ),
    );
  }
}
