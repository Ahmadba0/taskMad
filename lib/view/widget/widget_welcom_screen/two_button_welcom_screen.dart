// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/widget/widget_welcom_screen/login_btn_welcome_screen.dart';
import 'package:tasktwo/view/widget/widget_welcom_screen/signup_btn_welcom_screen.dart';

class TwoButtonWelcomScreen extends StatelessWidget {
  const TwoButtonWelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.width <= 360 ? 50 : 60,
      height: 60.h,
      decoration: BoxDecoration(
        // color: theme == 'light' ? AppColors.white1 : AppColors.black1,
        color: Theme.of(context).primaryColorDark,
        border: const Border(
          left: BorderSide(color: AppColors.grey1),
          right: BorderSide(color: AppColors.grey1),
          bottom: BorderSide(color: AppColors.grey1),
          top: BorderSide(color: AppColors.grey1),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ///
          ///
          ///
          SignupBtnWelcomScreen(),

          ///
          ///
          ///
          LoginBtnWelcomeScreen(),
        ],
      ),
    );
  }
}
