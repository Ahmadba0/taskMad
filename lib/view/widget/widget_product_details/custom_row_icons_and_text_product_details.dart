// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';
import 'package:tasktwo/core/application_style/app_images.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_text_near_icon_product_details.dart';

class CustomRowIconsAndTextProductDetails extends GetView<ProductController> {
  const CustomRowIconsAndTextProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Image.asset(
              AppImages.deployed_code,
              width: 40.w,
              height: 40.h,
              color: controller.primaryColor,
            ),
          ),
          const CustomTextNearIconProductDetails(
            text: '215 x 300',
          ),
          const Spacer(),
          Icon(
            size: 40.r,
            Icons.invert_colors,
            color: controller.primaryColor,
          ),
          CustomTextNearIconProductDetails(
            text: "${controller.color} ${'72'.tr} ",
          ),
          const Spacer(),
          Icon(
            size: 40,
            Icons.date_range_outlined,
            color: controller.primaryColor,
          ),
          CustomTextNearIconProductDetails(
            text: '${controller.week} ${'73'.tr}',
          ),
        ],
      ),
    );
  }
}
