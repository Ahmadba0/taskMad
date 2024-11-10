// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/confirm_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/widget/widget_confim/custom_bottom_bar_confirm_page.dart';
import 'package:tasktwo/view/widget/widget_confim/custom_container_have_text_and_icon_confirm_page.dart';
import 'package:tasktwo/view/widget/widget_confim/custom_drop_down_confirm.dart';
import 'package:tasktwo/view/widget/widget_confim/custom_text_form_field_confirm_page.dart';
import 'package:tasktwo/view/widget/widget_confim/custom_text_in_middle_confirm_page.dart';

class Confirm extends StatelessWidget {
  const Confirm({super.key});

  @override
  Widget build(BuildContext context) {
    ConfirmController controller = Get.put(ConfirmController());
    return Scaffold(
      backgroundColor: theme == 'light' ? AppColors.white1 : AppColors.black,
      body: Container(
        child: Column(
          children: [
            ///
            ///--1
            ///
            const CustomContainerHaveTextAndIconConfirmPage(),

            ///
            ///--2
            ///
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
              child: Column(
                children: [
                  ///
                  ///---2.1
                  ///
                  CustomTextFormFieldConfirmPage(
                    controllerr: controller.sizeController!,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  ///
                  ///---2.2
                  ///
                  GetBuilder<ConfirmController>(
                    builder: (controller) => CustomDropDownConfirm(
                      value: controller.selectedColor,
                      onChanged: (value) => controller.onChangeColor(value),
                    ),
                  ),
                  SizedBox(height: 150.h),

                  ///
                  ///--2.3
                  ///
                  const CustomTextInMiddleConfirmPage(),
                ],
              ),
            ),
            const Spacer(),

            ///
            ///--3
            ///
            CustomBottomBarConfirmPage(
              onTap: () => Get.toNamed(AppRoutes.orderPlaced, arguments: {
                'isInterior': controller.isInterior,
              }),
            )
          ],
        ),
      ),
    );
  }
}
