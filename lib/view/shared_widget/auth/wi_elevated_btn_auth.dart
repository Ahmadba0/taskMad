// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/localization/changeLocal.dart';
import 'package:tasktwo/main.dart';

class CustomWiElevatedBtnAuth extends GetView<LocaleController> {
  final String text;
  final void Function() onPressed;
  const CustomWiElevatedBtnAuth(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 58,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor:
                theme == 'light' ? AppColors.blue1 : AppColors.blue5_207,
            // padding: EdgeInsets.symmetric(horizontal: 100)
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontFamily:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 'PoppinsMedium'
                      : 'SwisraMedium',
              color: theme == 'light' ? AppColors.white1 : AppColors.black,
              fontSize: 20,
              // fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}
