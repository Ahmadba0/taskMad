import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/confirm_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/widget/widget_confim/custom_button_in_bottom_bar_confirm_page.dart';
import 'package:tasktwo/view/widget/widget_confim/custom_column_have_two_text_confirm_page.dart';

class CustomBottomBarConfirmPage extends GetView<ConfirmController> {
  final void Function()? onTap;
  const CustomBottomBarConfirmPage({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      color: theme == 'light' ? AppColors.white1 : AppColors.black,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        elevation: 15,
        color: theme == 'light' ? AppColors.white1 : AppColors.black,
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              ///
              ///--1
              ///
              const CustomColumnHaveTwoTextConfirmPage(),
              const Spacer(),

              ///
              ///--2
              ///
              CustomButtonInBottomBarConfirmPage(
                onTap: onTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
