// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/application_style/app_images.dart';

class CustomWiTextAndAnotherWayLogin extends StatelessWidget {
  const CustomWiTextAndAnotherWayLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            'or continue with',
            style: TextStyle(
              // fontFamily: 'Poppins',
              color: AppColors.grey1,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: Get.height / 45),
        Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.imgG,
                width: 45,
                height: 60,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 10),
              Image.asset(
                AppImages.imgF,
                width: 45,
                height: 50,
                fit: BoxFit.fill,
              ),
              SizedBox(width: 10),
              Image.asset(
                AppImages.imgApple,
                width: 43,
                height: 48,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
