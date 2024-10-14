// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/welcom_screen_controller.dart';
import 'package:tasktwo/core/application_style/app_images.dart';
import 'package:tasktwo/view/widget/widget_welcom_screen/two_lang_btn_welcome_screen.dart';
import 'package:tasktwo/view/widget/widget_welcom_screen/whit_controller_welcome_screen.dart';

class WelcomScreen extends GetView<WelcomScreenController> {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(WelcomScreenController());
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.welcomImage), fit: BoxFit.fill),
            ),
            alignment: Alignment.bottomCenter,

            ///
            ///--1
            ///
            child: WhitControllerWelcomeScreen(),
          ),

          ///
          ///---2
          ///
          TwoLangBtnWelcomeScreen(),
        ],
      ),
    );
  }
}
