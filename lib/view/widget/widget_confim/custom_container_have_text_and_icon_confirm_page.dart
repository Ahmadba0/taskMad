import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/confirm_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomContainerHaveTextAndIconConfirmPage
    extends GetView<ConfirmController> {
  const CustomContainerHaveTextAndIconConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      alignment: Alignment.topLeft,
      height: 350.h,
      width: MediaQuery.of(context).size.width,
      color: controller.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundColor:
                  theme == 'light' ? AppColors.white1 : AppColors.black1,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: controller.primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 25.h),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              '78'.tr,
              style: TextStyle(
                fontFamily:
                    controller.myServices.sharedPreferences.getString('lang') ==
                            'en'
                        ? 'ArticulatMidium'
                        : 'SwisraNormal',
                fontSize: 30.sp,
                color: theme == 'light' ? AppColors.white1 : AppColors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
