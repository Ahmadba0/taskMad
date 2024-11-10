// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/login_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomWiTextForgetPasswordLogin extends GetView<LoginController> {
  final void Function()? onTap;
  const CustomWiTextForgetPasswordLogin({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerRight,
        child: Text(
          '10'.tr,
          style: TextStyle(
            fontFamily:
                controller.myServices.sharedPreferences.getString('lang') ==
                        'en'
                    ? 'PoppinsMedium'
                    : 'SwisraMedium',
            color: theme == 'light' ? AppColors.blue1 : AppColors.blue5_207,
            fontSize: 14,
            //fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
