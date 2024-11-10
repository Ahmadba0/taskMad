import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomStarTextTheRatingProductDetails extends GetView<ProductController> {
  const CustomStarTextTheRatingProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '5.0',
      style: TextStyle(
        fontFamily: 'UrbaneBold',
        fontSize: 14.sp,
        color: AppColors.grey1,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
