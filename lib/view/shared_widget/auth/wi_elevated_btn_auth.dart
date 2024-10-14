// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomWiElevatedBtnAuth extends StatelessWidget {
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
            backgroundColor: AppColors.blue1,
            // padding: EdgeInsets.symmetric(horizontal: 100)
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'PoppinsMedium',
              color: AppColors.white1,
              fontSize: 20,
              // fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}
