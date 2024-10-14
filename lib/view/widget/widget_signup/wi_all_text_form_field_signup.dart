// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/signup_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dARt';
import 'package:tasktwo/view/shared_widget/auth/wi_text_form_field_auth.dart';
import 'package:tasktwo/view/widget/widget_signup/wi_drop_down_signup.dart';

class CustomWiAllTextFormFieldSignup extends GetView<SignupController> {
  const CustomWiAllTextFormFieldSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///
        ///--4
        ///
        CustomWiTextFormFieldAuth(
          hint: 'Email',
          controller: controller.emailController!,
          // focusNode: fn,
        ),

        SizedBox(height: Get.height / 60),
        Row(
          children: [
            Expanded(
              flex: 1,
              child:

                  ///
                  ///--5
                  ///
                  CustomWiTextFormFieldAuth(
                hint: 'User name',
                controller: controller.userNameController!,
                // focusNode: fn,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child:

                  ///
                  ///--6
                  ///
                  CustomWiTextFormFieldAuth(
                hint: 'Phone number',
                controller: controller.phoneNumberController!,
                // focusNode: fn,
              ),
            ),
          ],
        ),
        SizedBox(height: Get.height / 60),

        ///
        ///--7
        ///
        CustomWiDropDownSignup(
          onChanged: (value) => controller.changeSelectCity(value),
          value: controller.citySelected,
        ),
        SizedBox(height: Get.height / 60),

        ///
        ///--8
        ///
        CustomWiTextFormFieldAuth(
          hint: 'Password',
          controller: controller.passwordController!,
          isObsecureText: controller.isobsecure1,
          suffixIcon: IconButton(
              onPressed: () => controller.changeobsecure1(),
              icon: Icon(
                controller.isobsecure1
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: AppColors.grey2,
              )),
        ),
        SizedBox(height: Get.height / 60),

        ///
        ///--9
        ///
        CustomWiTextFormFieldAuth(
          hint: 'Confirm Password',
          controller: controller.confirmPasswordController!,
          isObsecureText: controller.isobsecure2,
          suffixIcon: IconButton(
              onPressed: () => controller.changeobsecure2(),
              icon: Icon(
                controller.isobsecure2
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: AppColors.grey2,
              )),
        ),
        SizedBox(height: Get.height / 28),
      ],
    );
  }
}
