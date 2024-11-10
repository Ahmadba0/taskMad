import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class LoginBtnWelcomeScreen extends StatelessWidget {
  const LoginBtnWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () {
          Get.toNamed(AppRoutes.login);
        },
        child: Container(
          height: Get.height,
          alignment: Alignment.center,
          child: Text(
            "5".tr,
            style: TextStyle(
              fontFamily: 'Urbane',
              color: theme == 'light' ? AppColors.black : AppColors.white1,
              // color: Theme.of(context).primaryColorDark,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
    );
  }
}
