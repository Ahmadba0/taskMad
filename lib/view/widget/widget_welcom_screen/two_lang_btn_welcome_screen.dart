import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/welcom_screen_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/view/widget/widget_welcom_screen/lang_ar_btn_welcome_screen.dart';
import 'package:tasktwo/view/widget/widget_welcom_screen/lang_en_btn_welcome_screen.dart';

class TwoLangBtnWelcomeScreen extends GetView<WelcomScreenController> {
  const TwoLangBtnWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomScreenController>(
      builder: (controller) => Positioned(
        top: 38,
        right: 25,
        child: AnimationConfiguration.staggeredList(
          position: 1,
          child: SlideAnimation(
            duration: const Duration(milliseconds: 1500),
            curve: Curves.easeInOut,
            horizontalOffset: 400,
            child: FadeInAnimation(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white1,
                  border: const Border(
                    left: BorderSide(color: AppColors.blue1),
                    right: BorderSide(color: AppColors.blue1),
                    bottom: BorderSide(color: AppColors.blue1),
                    top: BorderSide(color: AppColors.blue1),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 95,
                height: 34,
                child: Row(
                  children: [
                    ///
                    ///--1
                    ///
                    LangEnBtnWelcomeScreen(
                      text: 'EN',
                      onTap: () {
                        controller.onTapToChangeLanguage('EN');
                      },
                    ),

                    ///
                    ///---2
                    ///
                    LangArBtnWelcomeScreen(
                      text: 'AR',
                      onTap: () {
                        controller.onTapToChangeLanguage('AR');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
