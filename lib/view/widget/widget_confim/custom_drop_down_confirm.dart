// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/confirm_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/lists/list.dart';
import 'package:tasktwo/main.dart';

class CustomDropDownConfirm extends GetView<ConfirmController> {
  final value;
  final void Function(Object?)? onChanged;
  const CustomDropDownConfirm({super.key, this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: theme == 'light' ? AppColors.white2 : AppColors.black1,
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          icon: Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 30,
            color: theme == 'light' ? AppColors.black : AppColors.white1,
          ),
          menuMaxHeight: 350,
          hint: Text(
            '80'.tr,
            style: TextStyle(
                color: theme == 'light' ? AppColors.black : AppColors.white1,
                fontSize: 15.sp,
                fontFamily:
                    controller.myServices.sharedPreferences.getString('lang') ==
                            'en'
                        ? 'PoppinsRegular'
                        : 'SwisraNormal'),
          ),
          style: TextStyle(
              color: theme == 'light' ? AppColors.black : AppColors.white1,
              fontSize: 15.sp,
              fontFamily:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 'PoppinsRegular'
                      : 'SwisraNormal'),
          items: colorList
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Container(
                      decoration: const BoxDecoration(),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        e,
                        style: TextStyle(
                            color: theme == 'light'
                                ? AppColors.black
                                : AppColors.white1,
                            fontSize: 15.sp,
                            fontFamily: 'PoppinsRegular'),
                      ),
                    ),
                  ))
              .toList(),
          value: value,
          onChanged: onChanged,
          dropdownColor: theme == 'light' ? AppColors.white1 : AppColors.black1,
        ),
      ),
    );
  }
}
