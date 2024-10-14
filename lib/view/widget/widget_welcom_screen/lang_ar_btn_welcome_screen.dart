import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/welcom_screen_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class LangArBtnWelcomeScreen extends GetView<WelcomScreenController> {
  final String text;
  final void Function()? onTap;
  const LangArBtnWelcomeScreen({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        // onTap: () {
        //   controller.onTapToChangeLanguage('AR');
        // },
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: controller.isLanguageArabic
                ? AppColors.blue1
                : AppColors.white1,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          height: Get.height,
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'UrbaneBold',
              color: controller.isLanguageArabic
                  ? AppColors.white1
                  : AppColors.blue1,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
