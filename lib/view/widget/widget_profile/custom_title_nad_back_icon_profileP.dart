// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/profile_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/localization/changeLocal.dart';
import 'package:tasktwo/main.dart';

class CustomTitleNadBackIconProfilep extends GetView<ProfileController> {
  final void Function()? onPressed;
  const CustomTitleNadBackIconProfilep({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: theme == 'light'
                ? controller.primaryColor
                : AppColors.blue7_176,
          ),
        ),
        Text(
          '50'.tr,
          style: TextStyle(
            fontFamily:
                controller.myServices.sharedPreferences.getString('lang') ==
                        'en'
                    ? 'ArticulatMidium'
                    : 'SwisraBold',
            fontSize: 28.sp,
            color: theme == 'light'
                ? controller.primaryColor
                : AppColors.blue7_176,
          ),
        ),
        const Spacer(),
        theme == 'light'
            ? IconButton(
                onPressed: () {
                  controller.localeController.changeTheme('night');
                },
                icon: Icon(
                  Icons.dark_mode,
                  color: theme == 'light'
                      ? controller.primaryColor
                      : AppColors.blue7_176,
                ))
            : IconButton(
                onPressed: () {
                  controller.localeController.changeTheme('light');
                },
                icon: Icon(
                  Icons.sunny,
                  color: theme == 'light'
                      ? controller.primaryColor
                      : AppColors.blue7_176,
                )),
      ],
    );
  }
}
