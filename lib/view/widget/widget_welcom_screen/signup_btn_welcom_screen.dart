// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
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
            color: AppColors.blue1,
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.center,
          child: Text(
            "Sign up",
            style: TextStyle(
              fontFamily: 'Urbane',
              color: AppColors.white1,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
