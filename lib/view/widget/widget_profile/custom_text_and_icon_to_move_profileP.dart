// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/profile_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomTextAndIconToMoveProfilep extends GetView<ProfileController> {
  final String text;
  final void Function()? onTap;
  const CustomTextAndIconToMoveProfilep(
      {super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          SizedBox(width: 5.w),
          Text(
            text,
            style: TextStyle(
              fontFamily:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 'ArticulatMidium'
                      : 'SwisraNormal',
              fontSize: 24.sp,
              color: theme == 'light'
                  ? controller.primaryColor
                  : AppColors.blue7_176,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: theme == 'light'
                ? controller.primaryColor
                : AppColors.blue7_176,
          )
        ],
      ),
    );
  }
}
