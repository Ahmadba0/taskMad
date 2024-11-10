import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/confirm_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomTextInMiddleConfirmPage extends GetView<ConfirmController> {
  const CustomTextInMiddleConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        '81'.tr,
        style: TextStyle(
            color: AppColors.greySearch,
            fontSize: 18.sp,
            fontFamily:
                controller.myServices.sharedPreferences.getString('lang') ==
                        'en'
                    ? 'ArticulatMidium'
                    : 'SwisraNormal'),
        textAlign: TextAlign.center,
      ),
    );
  }
}
