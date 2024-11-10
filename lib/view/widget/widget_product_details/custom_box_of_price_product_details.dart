import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomBoxOfPriceProductDetails extends GetView<ProductController> {
  const CustomBoxOfPriceProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 35.h,
      width: 60.w,
      decoration: BoxDecoration(
          border: Border.all(
              color: theme == 'light' ? AppColors.grey1 : AppColors.blue7_176,
              width: 1),
          borderRadius: BorderRadius.circular(5.r)),
      child: Text(
        "800\$",
        style: TextStyle(
          fontFamily: 'UrbaneBold',
          fontSize: 14.sp,
          color: theme == 'light' ? AppColors.grey1 : AppColors.blue7_176,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
