import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/localization/changeLocal.dart';
import 'package:tasktwo/main.dart';

class CustomTextFormFieldHome extends GetView<LocaleController> {
  final TextEditingController controllerr;
  final Color color;
  const CustomTextFormFieldHome(
      {super.key, required this.controllerr, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50.h,
      width: 300.h,
      decoration: BoxDecoration(
          color: theme == 'light' ? AppColors.greySearch : AppColors.black1,
          border: Border.all(
              color:
                  theme == 'light' ? AppColors.greySearch : AppColors.black2),
          borderRadius: BorderRadius.circular(20.r)),
      child: TextFormField(
        controller: controllerr,
        // focusNode: focusNode,
        // keyboardType:
        // isNumber == true ? TextInputType.number : TextInputType.name,
        // obscureText: isObsecureText == true ? true : false,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        style: TextStyle(
          fontFamily:
              controller.myServices.sharedPreferences.getString('lang') == 'en'
                  ? 'PoppinsMedium'
                  : 'SwisraNormal',
          color: color,
          fontSize: 18.sp,
          // fontWeight: FontWeight.w600,
        ),
        cursorColor: color,
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.search,
            color: color,
            size: 28,
          ),
          hintText: '49'.tr,
          hintStyle: TextStyle(
            fontFamily:
                controller.myServices.sharedPreferences.getString('lang') ==
                        'en'
                    ? 'PoppinsMedium'
                    : 'SwisraNormal',
            color: color,
            fontSize:
                controller.myServices.sharedPreferences.getString('lang') ==
                        'en'
                    ? 16.sp
                    : 13.sp,
            fontWeight: FontWeight.w600,
          ),
          // alignLabelWithHint: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(
                color:
                    theme == 'light' ? AppColors.greySearch : AppColors.black2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: const BorderSide(color: AppColors.greySearch, width: 2),
          ),
          // errorBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(25.r),
          //   borderSide: BorderSide(color: AppColors.red),
          // ),
        ),
      ),
    );
  }
}
