import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/confirm_controller.dart';

class CustomColumnHaveTwoTextConfirmPage extends GetView<ConfirmController> {
  const CustomColumnHaveTwoTextConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '82'.tr,
          style: TextStyle(
              color: controller.primaryColor,
              fontSize:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 16.sp
                      : 13.sp,
              fontFamily:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 'ArticulatMidium'
                      : 'SwisraNormal'),
        ),
        Text(
          '300\$',
          style: TextStyle(
              color: controller.primaryColor,
              fontSize:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 24.sp
                      : 20.sp,
              fontFamily:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 'Urbane'
                      : 'SwisraNormal'),
        ),
      ],
    );
  }
}
