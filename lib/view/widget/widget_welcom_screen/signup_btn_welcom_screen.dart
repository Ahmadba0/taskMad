// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class SignupBtnWelcomScreen extends StatelessWidget {
  const SignupBtnWelcomScreen({super.key});

  @override
  Widget build(context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () {
          Get.toNamed(AppRoutes.signup);
        },
        child: Container(
          height: Get.height,
          decoration: BoxDecoration(
            // color: theme == 'light' ? AppColors.blue1 : AppColors.blue4_164,
            color: Theme.of(context).primaryColorLight,
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.center,
          child: Text(
            "4".tr,
            style: TextStyle(
              fontFamily: 'Urbane',
              color: theme == 'light' ? AppColors.white1 : AppColors.black,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
    );
  }
}
