// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/welcom_screen_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class FirstTextWelcomeScreen extends GetView<WelcomScreenController> {
  const FirstTextWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      // 'Your Vision, Our\nExpertise',
      '2'.tr,
      // style:
      //     Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 30.sp),
      style: TextStyle(
        color: theme == 'light' ? AppColors.black : AppColors.white1,
        fontFamily:
            controller.myServices.sharedPreferences.getString('lang') == 'en'
                ? 'UrbaneBold'
                : 'SwisraBold',
        fontSize: 30.sp,
        height: 1.2,
      ),
    );
  }
}
