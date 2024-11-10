import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/home_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/application_style/app_images.dart';
import 'package:tasktwo/main.dart';

class CustomBottomBarHome extends GetView<HomeController> {
  const CustomBottomBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Container(
        color: theme == 'light'
            ? controller.pageIndex == 4
                ? AppColors.blueHosue
                : AppColors.white1
            : AppColors.black,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: theme == 'light'
                ? controller.pageIndex == 4
                    ? AppColors.blueHosue
                    : AppColors.white1
                : AppColors.black,
          ),
          // padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 25),
          padding: const EdgeInsets.only(left: 35, right: 35, bottom: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: BottomAppBar(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              // color: controller.tabController!.index == 0
              //     ? AppColors.blueHosue
              //     : controller.tabController!.index == 1
              //         ? AppColors.greenOneHosue
              //         : AppColors.orange,
              color: theme == 'light'
                  ? controller.bottomBarColor
                  : AppColors.blue5_207,
              height: 80.h,
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25.r)),
                padding:
                    controller.myServices.sharedPreferences.getString('lang') ==
                            'en'
                        ? const EdgeInsets.symmetric(horizontal: 35)
                        : const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Spacer(),
                    Col(
                      onTap: () {
                        controller.pageIndex == 1
                            ? null
                            : controller.changePage('Home');
                      },
                      text: "31".tr,
                      url: controller.pageIndex == 1
                          ? AppImages.homeSelected
                          : AppImages.homeNotSelected,
                      showUnderline: controller.pageIndex == 1 ? true : false,
                    ),

                    Col(
                      onTap: () {
                        // controller.pageIndex == 2
                        //     ? null
                        //     : controller.changePage('Search');
                        Get.toNamed(AppRoutes.searchP, arguments: {
                          'isInterior': controller.tabController!.index == 0
                              ? true
                              : false,
                        });
                      },
                      text: "32".tr,
                      url: controller.pageIndex == 2
                          ? AppImages.searchSelected
                          : AppImages.searchNotSelected,
                      showUnderline: controller.pageIndex == 2 ? true : false,
                    ),

                    Col(
                      onTap: () {
                        controller.pageIndex == 3
                            ? null
                            : controller.changePage('Profile');
                      },
                      text: "33".tr,
                      url:
                          controller.pageIndex == 3 || controller.pageIndex == 4
                              ? AppImages.profileSelected
                              : AppImages.profileNotSelected,
                      showUnderline:
                          controller.pageIndex == 3 || controller.pageIndex == 4
                              ? true
                              : false,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Col extends StatelessWidget {
  final String text;
  final String url;
  final bool showUnderline;
  final void Function()? onTap;

  const Col({
    super.key,
    required this.text,
    required this.url,
    this.onTap,
    required this.showUnderline,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.blueHosue,
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(
            url,
            width: 40.w,
            fit: BoxFit.fill,
            color: theme == 'light' ? AppColors.white1 : AppColors.black,
          ),
          Text(
            text,
            style: TextStyle(
                color: theme == 'light' ? AppColors.white1 : AppColors.black,
                fontSize: 11.sp),
          ),
          const Spacer(),
          showUnderline
              ? Container(
                  color: theme == 'light' ? AppColors.white1 : AppColors.black,
                  width: 40.w,
                  height: 3.5.h,
                )
              : Container(),
        ],
      ),
    );
  }
}
