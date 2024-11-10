import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomBoxUnderNameProductDetails extends GetView<ProductController> {
  final String text;
  const CustomBoxUnderNameProductDetails({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 25.h,
      width: 90.w,
      decoration: BoxDecoration(
          color: theme == 'light' ? AppColors.grey233237249 : AppColors.black2,
          border: Border.all(
              color:
                  theme == 'light' ? AppColors.grey233237249 : AppColors.black2,
              width: 1),
          borderRadius: BorderRadius.circular(5.r)),
      child: Text(
        text,
        style: TextStyle(
          fontFamily:
              controller.myServices.sharedPreferences.getString('lang') == 'en'
                  ? 'ArticulatMidium'
                  : 'SwisraNormal',
          fontSize: 13.sp,
          color: AppColors.grey1,
        ),
      ),
    );
  }
}
