import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/confirm_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomTextFormFieldConfirmPage extends GetView<ConfirmController> {
  final TextEditingController controllerr;
  const CustomTextFormFieldConfirmPage({super.key, required this.controllerr});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme == 'light' ? AppColors.white2 : AppColors.black1,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: TextFormField(
        controller: controllerr,
        onTapOutside: (event) => FocusManager.instance.primaryFocus!.unfocus,
        style: TextStyle(
            color: theme == 'light' ? AppColors.black : AppColors.white1,
            fontSize: 15.sp,
            fontFamily:
                controller.myServices.sharedPreferences.getString('lang') ==
                        'en'
                    ? 'PoppinsRegular'
                    : 'SwisraNormal'),
        decoration: InputDecoration(
          hintText: '79'.tr,
          hintStyle: TextStyle(
              color: theme == 'light' ? AppColors.black : AppColors.white1,
              fontSize: 15.sp,
              fontFamily:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 'PoppinsRegular'
                      : 'SwisraNormal'),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: theme == 'light' ? AppColors.white2 : AppColors.black1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: controller.primaryColor!, width: 2),
          ),
        ),
      ),
    );
  }
}
