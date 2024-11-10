// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/login_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/application_style/app_images.dart';
import 'package:tasktwo/main.dart';

class CustomWiTextAndAnotherWayLogin extends GetView<LoginController> {
  const CustomWiTextAndAnotherWayLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            '12'.tr,
            style: TextStyle(
              fontFamily:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 'PoppinsMedium'
                      : 'SwisraThin',
              color: theme == 'light' ? AppColors.grey1 : AppColors.blue5_207,
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
              theme == 'light'
                  ? Image.asset(
                      AppImages.imgG,
                      width: 45,
                      height: 60,
                      fit: BoxFit.contain,
                    )
                  : Image.asset(
                      AppImages.googleBlack,
                      width: 45,
                      height: 60,
                      fit: BoxFit.contain,
                    ),
              SizedBox(width: 10),
              theme == 'light'
                  ? Image.asset(
                      AppImages.imgF,
                      width: 45,
                      height: 50,
                      fit: BoxFit.fill,
                    )
                  : Image.asset(
                      AppImages.faceBlack,
                      width: 50,
                      height: 60,
                      fit: BoxFit.contain,
                    ),
              SizedBox(width: 10),
              theme == 'light'
                  ? Image.asset(
                      AppImages.imgApple,
                      width: 43,
                      height: 48,
                      fit: BoxFit.fill,
                    )
                  : Image.asset(
                      AppImages.appleBlack,
                      width: 50,
                      height: 60,
                      fit: BoxFit.contain,
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
