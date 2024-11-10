import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/welcom_screen_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class SecondTextWelcomeScreen extends GetView<WelcomScreenController> {
  const SecondTextWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '3'.tr,
      // style:
      //     Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 14.sp),
      style: TextStyle(
        color: theme == 'light' ? AppColors.blue1 : AppColors.blue5_207,
        fontFamily:
            controller.myServices.sharedPreferences.getString('lang') == 'en'
                ? 'UrbaneBold'
                : 'SwisraBold',
        fontSize: 14.sp,
        height: 1.2,
      ),
    );
  }
}
