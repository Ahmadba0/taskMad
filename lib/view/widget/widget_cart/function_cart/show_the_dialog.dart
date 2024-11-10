import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

showDialogForChoosePaymaentMethod(Color colorBack, Color colorText) {
  Get.defaultDialog(
    backgroundColor: colorBack,
    title: '',
    titleStyle: TextStyle(
      fontFamily: 'Urbane',
      fontSize: 17.sp,
      color: AppColors.white1,
    ),
    middleText: 'Choese Payment Method',
    middleTextStyle: TextStyle(
      fontFamily: 'Urbane',
      fontSize: 17.sp,
      color: colorText,
    ),
    actions: [
      Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(20),
              child: TextInDialog(
                text: 'PayPal',
                color: colorText,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(10),
              child: TextInDialog(
                text: 'Credit Card',
                color: colorText,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(20),
              child: TextInDialog(
                text: 'Wire Transfer',
                color: colorText,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

class TextInDialog extends StatelessWidget {
  final String text;
  final Color color;
  const TextInDialog({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: 'Urbane', fontSize: 17.sp, color: color),
    );
  }
}
