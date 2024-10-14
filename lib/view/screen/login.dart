// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/login_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dARt';
import 'package:tasktwo/core/application_style/app_images.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/screen/test.dart';
import 'package:tasktwo/view/shared_widget/auth/wi_elevated_btn_auth.dart';
import 'package:tasktwo/view/shared_widget/auth/wi_go_to_another_page_login_or_signup_auth.dart';
import 'package:tasktwo/view/shared_widget/auth/wi_back_and_icon_auth.dart';
import 'package:tasktwo/view/shared_widget/auth/wi_first_text_auth.dart';
import 'package:tasktwo/view/shared_widget/auth/wi_second_text_auth.dart';
import 'package:tasktwo/view/widget/widget_login/wi_text_and_another_way_login.dart';
import 'package:tasktwo/view/widget/widget_login/wi_text_forget_password_login.dart';
import 'package:tasktwo/view/shared_widget/auth/wi_text_form_field_auth.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return GetBuilder<LoginController>(
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset:
            false, // Disable resizing when the keyboard is shown
        body: Stack(
          children: [
            Container(
              // height: Get.height,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(top: 0, bottom: 0, right: 30, left: 30),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.backgroundAuth),
                    fit: BoxFit.fill),
              ),
              child: ListView(
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
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
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          AppImages.logomini,
                          fit: BoxFit.contain,
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 30),

                  ///
                  ///--2
                  ///
                  CustomWiFirstTextAuth(
                    text: 'Login to your\naccount.',
                  ),
                  SizedBox(height: Get.height / 50),

                  ///
                  ///--3
                  ///
                  CustomWiSecondTextAuth(
                    text: 'Hello, you have been missed!',
                  ),
                  SizedBox(height: Get.height / 15),

                  ///
                  ///--4
                  ///
                  CustomWiTextFormFieldAuth(
                    hint: 'Email',
                    controller: controller.emailController!,
                  ),
                  SizedBox(height: Get.height / 35),

                  ///
                  ///--5
                  ///
                  CustomWiTextFormFieldAuth(
                    hint: 'Password',
                    controller: controller.passwordController!,
                    isObsecureText: controller.isobsecure,
                    suffixIcon: IconButton(
                        onPressed: () => controller.changeobsecure(),
                        icon: Icon(
                          controller.isobsecure
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: AppColors.grey2,
                        )),
                  ),
                  SizedBox(height: Get.height / 35),

                  ///
                  ///--6
                  ///
                  CustomWiTextForgetPasswordLogin(),
                  SizedBox(height: Get.height / 28),

                  ///
                  ///--7
                  ///
                  CustomWiElevatedBtnAuth(
                    text: 'Sign in',
                    onPressed: () {
                      Get.to(Test());
                    },
                  ),
                  SizedBox(height: Get.height / 30),

                  ///
                  ///--8
                  ///

                  CustomWiTextAndAnotherWayLogin(),
                  SizedBox(height: Get.height / 40),

                  ///
                  ///--9
                  ///
                  CustomWiGoToAnotherPageLoginOrSignupAuth(
                    textOne: "Don't have an account ? ",
                    texttwo: "Register",
                    onTap: () => Get.offNamed(AppRoutes.signup),
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
