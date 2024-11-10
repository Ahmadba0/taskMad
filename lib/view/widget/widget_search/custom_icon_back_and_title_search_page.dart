import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/search_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomIconBackAndTitleSearchPage extends GetView<SearchhController> {
  const CustomIconBackAndTitleSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///
        ///-----------------1
        ///
        Container(
          height: 36.h,
          width: 36.w,
          decoration: BoxDecoration(
            color: controller.primaryColor,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColors.white1,
              size: 25,
            ),
          ),
        ),
        SizedBox(width: 20.w),

        ///
        ///-------------------2
        ///
        Text(
          '86'.tr,
          style: TextStyle(
              color: controller.primaryColor,
              fontSize: 45,
              fontFamily:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 'ArticulatMidium'
                      : 'SwisraBold'),
        )
      ],
    );
  }
}
