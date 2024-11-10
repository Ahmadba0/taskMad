// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/cart_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomTitleAndIconBack extends GetView<CartController> {
  const CustomTitleAndIconBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            child: CircleAvatar(
              backgroundColor: controller.primaryColor,
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: AppColors.white1,
                  )),
            ),
          ),
          const Spacer(),
          Text(
            '94'.tr,
            style: TextStyle(
              fontFamily:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 'ArticulatMidium'
                      : 'SwisraNormal',
              fontSize: 32.sp,
              color: controller.primaryColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          Container(
            width: 40,
          )
        ],
      ),
    );
  }
}
