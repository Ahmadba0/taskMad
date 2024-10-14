import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/welcom_screen_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class LangEnBtnWelcomeScreen extends GetView<WelcomScreenController> {
  final String text;
  final void Function()? onTap;
  const LangEnBtnWelcomeScreen({
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
        //   controller.onTapToChangeLanguage('EN');
        // },
        onTap: onTap,
        child: Container(
          height: Get.height,
          decoration: BoxDecoration(
            color: controller.isLanguageEnglish
                ? AppColors.blue1
                : AppColors.white1,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              bottomLeft: Radius.circular(8),
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'UrbaneBold',
              color: controller.isLanguageEnglish
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
