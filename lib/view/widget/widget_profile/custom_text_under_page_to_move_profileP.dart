// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/profile_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomTextUnderPageToMoveProfilep extends GetView<ProfileController> {
  final String text;
  final void Function()? onTap;
  const CustomTextUnderPageToMoveProfilep(
      {super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          fontFamily:
              controller.myServices.sharedPreferences.getString('lang') == 'en'
                  ? 'ArticulatMidium'
                  : 'SwisraThin',
          fontSize: 14.sp,
          color:
              theme == 'light' ? controller.primaryColor : AppColors.blue7_176,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
