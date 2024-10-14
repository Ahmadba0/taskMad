// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/signup_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/application_style/app_images.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/shared_widget/auth/wi_elevated_btn_auth.dart';
import 'package:tasktwo/view/shared_widget/auth/wi_go_to_another_page_login_or_signup_auth.dart';
import 'package:tasktwo/view/shared_widget/auth/wi_back_and_icon_auth.dart';
import 'package:tasktwo/view/shared_widget/auth/wi_first_text_auth.dart';
import 'package:tasktwo/view/shared_widget/auth/wi_second_text_auth.dart';
import 'package:tasktwo/view/widget/widget_signup/wi_all_text_form_field_signup.dart';
import 'package:tasktwo/view/widget/widget_signup/wi_bottom_image_signup.dart';
import 'package:tasktwo/view/widget/widget_signup/wi_top_image_signup.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignupController());
    return GetBuilder<SignupController>(
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.white1,
        body: PopScope(
          onPopInvoked: (didPop) {},
          child: Container(
            color: AppColors.white1,
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
                  // color: AppColors.white1,
                  padding:
                      EdgeInsets.only(top: 0, bottom: 8, right: 30, left: 30),
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    shrinkWrap: false,
                    children: [
                      ///
                      ///--1
                      ///
                      CustomWiBackAndIconAuth(
                          onTapBack: () {
                            Get.back();
                          },
                          widget: Expanded(
                            flex: 1,
                            child: InkWell(
                              child: Image.asset(
                                AppImages.imageprofile,
                                fit: BoxFit.contain,
                                width: 80,
                                height: 80,
                              ),
                            ),
                          )),
                      SizedBox(height: Get.height / 30),

                      ///
                      ///--2
                      ///
                      CustomWiFirstTextAuth(
                        text: 'Create New\nAccount',
                      ),
                      SizedBox(height: Get.height / 50),

                      ///
                      ///--3
                      ///
                      CustomWiSecondTextAuth(
                        text: 'You look new here, let’s make an account!',
                      ),
                      SizedBox(height: Get.height / 23),

                      ///
                      ///--4
                      ///
                      CustomWiAllTextFormFieldSignup(),

                      ///
                      ///--5
                      ///
                      CustomWiElevatedBtnAuth(
                        text: 'Sign up',
                        onPressed: () {
                          Get.toNamed(AppRoutes.verifyAfterSignup, arguments: {
                            'email': controller.emailController!.text,
                          });
                        },
                      ),
                      SizedBox(height: Get.height / 33),

                      ///
                      ///--6
                      ///
                      CustomWiGoToAnotherPageLoginOrSignupAuth(
                        textOne: "Already have an account ? ",
                        texttwo: "Login",
                        onTap: () => Get.offNamed(AppRoutes.login),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
