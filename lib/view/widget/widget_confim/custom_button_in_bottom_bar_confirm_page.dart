import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/confirm_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomButtonInBottomBarConfirmPage extends GetView<ConfirmController> {
  final void Function()? onTap;
  const CustomButtonInBottomBarConfirmPage({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 18, bottom: 18),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          width: 260.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: controller.primaryColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: Text(
            '74'.tr,
            style: TextStyle(
              fontFamily:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 'Urbane'
                      : 'SwisraNormal',
              fontSize: 16.sp,
              color: AppColors.white1,
            ),
          ),
        ),
      ),
    );
  }
}
