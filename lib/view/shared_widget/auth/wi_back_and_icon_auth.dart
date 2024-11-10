// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomWiBackAndIconAuth extends StatelessWidget {
  final void Function()? onTapBack;

  final Widget widget;
  const CustomWiBackAndIconAuth({
    super.key,
    required this.onTapBack,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: onTapBack,
              child: Icon(
                Icons.arrow_back_ios,
                color: theme == 'light' ? AppColors.black : AppColors.white1,
              ),
            ),
          ),
          // SizedBox(width: Get.width / 1.8),
          Spacer(),
          Spacer(),
          Spacer(),

          widget,
        ],
      ),
    );
  }
}
