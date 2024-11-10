import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomTextBeforRatingProductDetails extends GetView<ProductController> {
  const CustomTextBeforRatingProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      child: Text(
        controller.isInterior ? controller.titleInterior : controller.titleLand,
        style: TextStyle(
          fontFamily: 'ArticulatMidium',
          fontSize: 12.sp,
          color: AppColors.grey1,
        ),
      ),
    );
  }
}
