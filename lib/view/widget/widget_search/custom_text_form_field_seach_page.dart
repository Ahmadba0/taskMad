import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/search_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/widget/widget_search/function/show_bottom_sheet.dart';

class CustomTextFormFieldSeachPage extends GetView<SearchhController> {
  const CustomTextFormFieldSeachPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: theme == 'light' ? AppColors.white1 : AppColors.black1,
        borderRadius: BorderRadius.circular(12),
      ),

      ///
      ///-----------------1
      ///
      child: TextFormField(
        controller: controller.searchController,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        style: TextStyle(
          fontFamily:
              controller.myServices.sharedPreferences.getString('lang') == 'en'
                  ? 'PoppinsMedium'
                  : 'SwisraNormal',
          color: controller.primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          suffixIcon: IconButton(

              ///
              ///------------------------onPress
              ///
              onPressed: () {
                showBottomSheetFunction(context);
              },

              ///
              ///------------------------
              ///
              icon: Icon(
                Icons.sort,
                color: controller.primaryColor,
              )),
          hintText: '87'.tr,
          hintStyle: TextStyle(
            fontFamily:
                controller.myServices.sharedPreferences.getString('lang') ==
                        'en'
                    ? 'PoppinsMedium'
                    : 'SwisraThin',
            color: controller.primaryColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w600,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: controller.primaryColor!, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: controller.primaryColor!, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(color: AppColors.red, width: 2),
          ),
        ),
      ),
    );
  }
}
