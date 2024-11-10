// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_print, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/verify_after_signup_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/shared_widget/auth/wi_back_and_icon_auth.dart';
import 'package:tasktwo/view/shared_widget/auth/wi_elevated_btn_auth.dart';
import 'package:tasktwo/view/widget/widget_signup/wi_bottom_image_signup.dart';
import 'package:tasktwo/view/widget/widget_signup/wi_top_image_signup.dart';
import 'package:tasktwo/view/widget/widget_verify_after_signup/custom_box.dart';

class VerifyAfterSignup extends StatelessWidget {
  const VerifyAfterSignup({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyAfterSignupController controller =
        Get.put(VerifyAfterSignupController());
    return Scaffold(
      body: Container(
        color: theme == 'light' ? AppColors.white1 : AppColors.black,
        child: Stack(
          children: [
            ///i cut the image to two part
            ///the first part in top
            ///the second prt is in bottom
            ///i need to do this beacuse when
            ///if i not cut it theshape in bottom
            ///when i open keyboard
            ///the shape appear up of keyboard
            ///now when i open it will be invisible
            ///
            WiTopImageSignup(),
            MediaQuery.of(context).viewInsets.bottom > 0
                ? Container()
                : WiBottomImageSignup(),
            Container(
              padding: EdgeInsets.only(top: 0, bottom: 8, right: 30, left: 30),
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  ///
                  ///--1
                  ///
                  CustomWiBackAndIconAuth(
                    onTapBack: () {
                      Get.back();
                    },
                    widget: Container(),
                  ),
                  MediaQuery.of(context).size.height < 800
                      ? SizedBox(height: Get.height / 30)
                      : SizedBox(height: Get.height / 7),

                  ///
                  ///--2
                  ///
                  CustomBox(
                    textEmail: controller.email,
                  ),
                  SizedBox(height: Get.height / 28),

                  ///
                  ///--3
                  ///
                  CustomWiElevatedBtnAuth(
                    text: '27'.tr,
                    onPressed: () {
                      Get.offAllNamed(AppRoutes.login);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
